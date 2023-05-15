const express = require('express');
const cors = require('cors');
const pgp = require('pg-promise')();

const app = express();

app.use(express.json());
app.use(cors());

//database connection
const db = pgp({
  host: 'localhost',
  port: 5432,
  database: 'insights',
  //   user: '',
  //   password: '',
});

app.get('/profile/:id', (req, res) => {
  const userId = req.params.id; // Access the user ID from the route parameters
  db.one(
    `SELECT p.id,
    p.first_name,
    p.last_name,
    p.access_level,
    p.bio,
    p.dob,
    p.hospital,
    p.grade,
    p.current_stage,
            json_build_object('id', ct.id, 'value', ct.value, 'name', ct.name) AS cancer_type,
            json_build_object('id', st.id, 'value', st.value, 'name', st.name) AS cancer_subtype
     FROM patients p
     JOIN cancer_types ct ON p.cancer_type = ct.id
     JOIN subtypes st ON p.cancer_subtype = st.id
     WHERE p.id = $1`,
    userId
  )
    .then((user) => {
      res.json({ user, message: 'User profile retrieved successfully' });
    })
    .catch((error) => {
      res.status(500).json({ error: 'Error retrieving user' });
    });
});

app.get('/providers', async (req, res) => {
  const institutionAndProviderQuery = `
  SELECT
  providers.*,
  providers.specialization,
  json_agg(
    json_build_object(
      'case_id', provider_cases.id,
      'cancer_type', json_build_object('id', cancer_types.id, 'name', cancer_types.name),
      'subtype', json_build_object('id', subtypes.id, 'name', subtypes.name),
      'caseDetails', (
        SELECT json_agg(patients.*)
        FROM patients
        WHERE patients.id = provider_cases.patient_id
      ),
      'stage', json_build_object('patient_id', patients.id, 'currentState', patients.current_stage)
    )
  ) AS cases,
  json_agg(institutions.*) AS institutions
FROM
  providers
JOIN
  provider_institutions ON providers.id = provider_institutions.provider_id
JOIN
  institutions ON provider_institutions.institution_id = institutions.id
LEFT JOIN
  provider_cases ON providers.id = provider_cases.provider_id
LEFT JOIN
  cancer_types ON provider_cases.cancer_type = cancer_types.id
LEFT JOIN
  subtypes ON provider_cases.subtype = subtypes.id
LEFT JOIN
  patients ON provider_cases.patient_id = patients.id
GROUP BY
  providers.id;
`;

  try {
    const result = await db.any(institutionAndProviderQuery, []);
    console.log(result); // Do something with the result
    res.status(200).json(result); // Send the result as JSON response
  } catch (error) {
    console.error('Error executing query:', error);
    res.status(500).json({ error: 'Internal server error' }); // Handle the error and send an appropriate response
  }
});

//     .then((providers) => {
//       res.json(providers);
//     })
//     .catch((error) => {
//       console.error('Error retrieving providers:', error);
//       res.status(500).json({ error: 'Internal Server Error' });
//     });
// });

// app.patch('/profile/:id', (req, res) => {
//   const { id } = req.params;
//   const { last_name, first_name, access_level } = req.body;

//   console.log('updating body', req.body);

//   console.log('updating user, id:', id);
//   console.log('updating user, last name:', last_name);
//   console.log('updating user, first name:', first_name);
//   console.log('updating user, access level:', access_level);

//   // Construct the SQL update statement
//   let updateQuery = 'UPDATE patients SET';
//   const updateParams = [];
//   let paramIndex = 1;

//   if (last_name) {
//     updateQuery += ` last_name = $${paramIndex}`;
//     updateParams.push(last_name);
//     paramIndex++;
//   }

//   if (first_name) {
//     if (last_name) {
//       updateQuery += ',';
//     }
//     updateQuery += ` first_name = $${paramIndex}`;
//     updateParams.push(first_name);
//     paramIndex++;
//   }

//   if (access_level) {
//     if (last_name || first_name) {
//       updateQuery += ',';
//     }
//     updateQuery += ` access_level = $${paramIndex}`;
//     updateParams.push(access_level);
//     paramIndex++;
//   }

//   // Add the WHERE clause with the ID
//   updateQuery += ` WHERE id = $${paramIndex}`;
//   updateParams.push(id);

//   console.log('Generated SQL:', updateQuery);
//   console.log('Update Params:', updateParams);

//   // Execute the SQL update statement using the `none` method
//   db.none(updateQuery, updateParams)
//     .then(() => {
//       console.log('Data updated successfully');
//       res.json({ message: 'Data updated successfully' });
//     })
//     .catch((error) => {
//       console.error('Error updating data:', error);
//       res.status(500).json({ message: 'Error updating data' });
//     });
// });

app.patch('/profile/:id/access', (req, res) => {
  console.log('updating user, access level:', req.body);
  const { id } = req.params;
  const { access_level } = req.body;

  console.log('updating user, access level:', req.body);

  // Construct the SQL update statement
  let updateQuery = 'UPDATE patients SET access_level = $1 WHERE id = $2';
  const updateParams = [access_level, id];

  // Execute the SQL update statement using the `none` method
  db.none(updateQuery, updateParams)
    .then(() => {
      console.log('Data updated successfully');
      res.json({ message: 'Data updated successfully' });
    })
    .catch((error) => {
      console.error('Error updating data:', error);
      res.status(500).json({ message: 'Error updating data' });
    });
});

const port = 3001; // Choose an appropriate port number
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
