INSERT INTO access_levels (name) 
VALUES 
    ('Level 1'),
    ('Level 2'),
    ('Level 3');

INSERT INTO cancer_types (id, value, name)
VALUES
    (1, 'breast', 'Breast Cancer'),
    (2, 'lung', 'Lung Cancer'),
    (3, 'colorectal', 'Colorectal Cancer'),
    (4, 'prostate', 'Prostate Cancer'),
    (5, 'skin', 'Skin Cancer'),
    (6, 'ovarian', 'Ovarian Cancer'),
    (7, 'leukemia', 'Leukemia'),
    (8, 'liver', 'Liver Cancer'),
    (9, 'pancreas', 'Pancreatic Cancer'),
    (10, 'kidney', 'Kidney Cancer'),
    (11, 'brain', 'Brain Cancer'),
    (12, 'bladder', 'Bladder Cancer'),
    (13, 'cervical', 'Cervical Cancer'),
    (14, 'esophageal', 'Esophageal Cancer'),
    (15, 'stomach', 'Stomach Cancer'),
    (16, 'thyroid', 'Thyroid Cancer'),
    (17, 'bone', 'Bone Cancer'),
    (18, 'melanoma', 'Melanoma'),
    (19, 'hodgkin_lymphoma', 'Hodgkin Lymphoma'),
    (20, 'non_hodgkin_lymphoma', 'Non-Hodgkin Lymphoma'),
    (21, 'endometrial', 'Endometrial Cancer'),
    (22, 'multiple_myeloma', 'Multiple Myeloma'),
    (23, 'gastric', 'Gastric Cancer'),
    (24, 'head_and_neck', 'Head and Neck Cancer'),
    (25, 'liver', 'Liver Cancer'),
    (26, 'myelodysplastic_syndromes', 'Myelodysplastic Syndromes'),
    (27, 'oral', 'Oral Cancer'),
    (28, 'soft_tissue_sarcoma', 'Soft Tissue Sarcoma'),
    (29, 'testicular', 'Testicular Cancer');

INSERT INTO institutions (id, name, address, city, state, zip, country, created_at)
VALUES
    (1, 'Sacred Heart Hospital', '123 Heal Drive', 'Houston', 'TX', '78610', 'United States', '2023-05-14 23:56:49.024910'),
    (2, 'Grey Sloan Memorial Hospital', '5323 Harry Hines Blvd', 'Dallas', 'TX', '75390', 'United States', '2023-05-14 22:01:49.000000'),
    (3, 'Princeton Plainsboro Hospital', '6204 Balcones Dr', 'Austin', 'TX', '78731', 'United States', '2023-05-15 03:04:03.739384');


INSERT INTO patients (id, first_name, last_name, email, cancer_type, cancer_subtype, stage_at_dx, current_stage, grade, bio, hospital, access_level, dob)
VALUES
    (1, 'Newman', 'Seinfeld', 'katiekickscancer@gmail.com', 10, 50, 4, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit nisi interdum nisi suscipit commodo. Morbi lacinia elit quis lacinia vehicula. Nulla facilisi. Sed vel interdum arcu. Vestibulum urna massa, convallis vitae porta vel, malesuada eget ligula. Sed dictum viverra auctor. Donec sagittis velit in mauris laoreet, vel sodales massa tristique. Nunc sollicitudin accumsan velit, eget vestibulum lectus consectetur a. Cras non pretium leo.', 'Sacred Heart Hospital', 2, '1991-05-13'),
    (2, 'Jerry', 'Seinfeld', 'jerryseinfeld@fakemmail.com', 10, 28, 3, 4, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit nisi interdum nisi suscipit commodo. Morbi lacinia elit quis lacinia vehicula. Nulla facilisi. Sed vel interdum arcu. Vestibulum urna massa, convallis vitae porta vel, malesuada eget ligula. Sed dictum viverra auctor. Donec sagittis velit in mauris laoreet, vel sodales massa tristique. Nunc sollicitudin accumsan velit, eget vestibulum lectus consectetur a. Cras non pretium leo.', 'Sacred Heart Hospital', 2, '1991-05-13'),
    (3, 'Elaine', 'Elaine', 'elaine@katiekickscancer.com', 10, 30, 4, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit nisi interdum nisi suscipit commodo. Morbi lacinia elit quis lacinia vehicula. Nulla facilisi. Sed vel interdum arcu. Vestibulum urna massa, convallis vitae porta vel, malesuada eget ligula. Sed dictum viverra auctor. Donec sagittis velit in mauris laoreet, vel sodales massa tristique. Nunc sollicitudin accumsan velit, eget vestibulum lectus consectetur a. Cras non pretium leo.', 'Sacred Heart Hospital', 1, '1981-05-13'),
    (4, 'Patient1', 'Patient1', 'katiekickscancer@gmail.com', 10, 28, 4, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit nisi interdum nisi suscipit commodo. Morbi lacinia elit quis lacinia vehicula. Nulla facilisi. Sed vel interdum arcu. Vestibulum urna massa, convallis vitae porta vel, malesuada eget ligula. Sed dictum viverra auctor. Donec sagittis velit in mauris laoreet, vel sodales massa tristique. Nunc sollicitudin accumsan velit, eget vestibulum lectus consectetur a. Cras non pretium leo.', 'Grey Sloan Memorial Hospital', 1, '1981-05-13'),
    (5, 'Patient2', 'Patient2', 'katiekickscancer@gmail.com', 25, 28, 2, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit nisi interdum nisi suscipit commodo. Morbi lacinia elit quis lacinia vehicula. Nulla facilisi. Sed vel interdum arcu. Vestibulum urna massa, convallis vitae porta vel, malesuada eget ligula. Sed dictum viverra auctor. Donec sagittis velit in mauris laoreet, vel sodales massa tristique. Nunc sollicitudin accumsan velit, eget vestibulum lectus consectetur a. Cras non pretium leo.', 'Grey Sloan Memorial Hospital', 1, '1962-05-13'),
    (6, 'Patient3', 'Patient3', 'katiekickscancer@gmail.com', 25, 28, 3, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit nisi interdum nisi suscipit commodo. Morbi lacinia elit quis lacinia vehicula. Nulla facilisi. Sed vel interdum arcu. Vestibulum urna massa, convallis vitae porta vel, malesuada eget ligula. Sed dictum viverra auctor. Donec sagittis velit in mauris laoreet, vel sodales massa tristique. Nunc sollicitudin accumsan velit, eget vestibulum lectus consectetur a. Cras non pretium leo.', 'Sacred Heart Hospital', 2, '1956-05-13'),
    (7, 'Patient4', 'Patient4', 'katiekickscancer@gmail.com', 10, 28, 1, 1, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit nisi interdum nisi suscipit commodo. Morbi lacinia elit quis lacinia vehicula. Nulla facilisi. Sed vel interdum arcu. Vestibulum urna massa, convallis vitae porta vel, malesuada eget ligula. Sed dictum viverra auctor. Donec sagittis velit in mauris laoreet, vel sodales massa tristique. Nunc sollicitudin accumsan velit, eget vestibulum lectus consectetur a. Cras non pretium leo.', 'Sacred Heart Hospital', 2, '1996-05-13');

INSERT INTO provider_cases (id, provider_id, institution_id, specialty, cancer_type, subtype, year, stage_at_intervention, patient_id) 
VALUES 
    (1, 1, 1, 'Oncology', 10, 50, 2021, 4, 1),
    (2, 1, 1, 'Oncology', 10, 28, 2021, 3, 2),
    (4, 1, 1, 'Oncology', 10, 30, 2022, 4, 3),
    (5, 2, 2, 'Radiation', 10, 28, 2021, 4, 4),
    (8, 3, 3, 'Surgery', 10, 28, 2023, 1, 7),
    (10, 1, 1, 'Oncology', 10, 28, 2023, 1, 7),
    (6, 1, 3, 'Oncology', 25, 22, 2023, 4, 5),
    (11, 1, 1, 'Oncology', 10, 28, 2021, 3, 3),
    (9, 1, 3, 'Oncology', 25, 22, 2023, 3, 6);

INSERT INTO rovider_institutions (id, provider_id, institution_id, created_at) 
VALUES 
    (1, 1, 1, '2023-05-15 00:02:58.305539'),
    (2, 2, 2, '2023-05-14 22:10:01.000000'),
    (3, 3, 3, '2023-05-14 22:11:53.000000');

INSERT INTO providers (id, specialization, name_prefix, name_suffix, credential, last_name, first_name, middle_name, gender, license_number, npi, created_at)
    (1, 'Oncology', null, null, 'MD', 'Dorian', 'John', null, 'male', 'ZD9112', '1345343205604', '2023-05-14 23:33:06.033318'),
    (2, 'Radiation', null, null, 'MD, PhD', 'Reid', 'Elliot', null, 'female', 'ZD9113', '13453113205604', '2023-05-14 18:33:56.000000'),
    (3, 'Surgery', null, null, 'MD', 'Turk', 'Christopher', null, 'male', 'ZD9114', '134353113205604', '2023-05-14 18:33:56.000000');

INSERT INTO subtypes (id, cancer_type_id, value, name) VALUES 
(1, 1, 'ductal_carcinoma', 'Ductal Carcinoma'),
(2, 1, 'lobular_carcinoma', 'Lobular Carcinoma'),
(3, 1, 'inflammatory_breast_cancer', 'Inflammatory Breast Cancer'),
(4, 2, 'non_small_cell_lung_cancer', 'Non-Small Cell Lung Cancer'),
(5, 2, 'small_cell_lung_cancer', 'Small Cell Lung Cancer'),
(6, 2, 'mesothelioma', 'Mesothelioma'),
(7, 3, 'adenocarcinoma', 'Adenocarcinoma'),
(8, 3, 'squamous_cell_carcinoma', 'Squamous Cell Carcinoma'),
(9, 3, 'gastrointestinal_stromal_tumor', 'Gastrointestinal Stromal Tumor'),
(10, 4, 'adenocarcinoma', 'Adenocarcinoma'),
(11, 4, 'small_cell_carcinoma', 'Small Cell Carcinoma'),
(12, 4, 'ductal_carcinoma', 'Ductal Carcinoma'),
(13, 5, 'basal_cell_carcinoma', 'Basal Cell Carcinoma'),
(14, 5, 'squamous_cell_carcinoma', 'Squamous Cell Carcinoma'),
(15, 5, 'melanoma', 'Melanoma'),
(16, 6, 'epithelial_carcinoma', 'Epithelial Carcinoma'),
(17, 6, 'germ_cell_tumor', 'Germ Cell Tumor'),
(18, 6, 'stromal_tumor', 'Stromal Tumor'),
(19, 7, 'acute_lymphoblastic_leukemia', 'Acute Lymphoblastic Leukemia'),
(20, 7, 'chronic_lymphocytic_leukemia', 'Chronic Lymphocytic Leukemia'),
(21, 7, 'acute_myeloid_leukemia', 'Acute Myeloid Leukemia'),
(24, 8, 'fibrolamellar_carcinoma', 'Fibrolamellar Carcinoma'),
(25, 9, 'pancreatic_ductal_adenocarcinoma', 'Pancreatic Ductal Adenocarcinoma'),
(26, 9, 'neuroendocrine_tumors', 'Neuroendocrine Tumors'),
(27, 9, 'acinar_cell_carcinoma', 'Acinar Cell Carcinoma'),
(28, 10, 'clear_cell_rcc', 'Clear Cell RCC'),
(29, 10, 'papillary_rcc', 'Papillary RCC'),
(30, 10, 'chromophobe_rcc', 'Chromophobe RCC'),
(31, 10, 'unclassified_rcc', 'Unclassified RCC'),
(32, 10, 'translocational_rcc', 'Translocational RCC'),
(33, 10, 'renal_medullary_carcinoma', 'Renal Medullary Carcinoma'),
(34, 10, 'collecting_duct_carcinoma', 'Collecting Duct Carcinoma'),
(35, 10, 'sdh_deficient_rcc', 'SDH-Deficient RCC'),
(36, 10, 'hlrcc_associated_rcc', 'HLRCC-Associated RCC'),
(37, 11, 'glioblastoma', 'Glioblastoma'),
(38, 11, 'meningioma', 'Meningioma'),
(39, 11, 'medulloblastoma', 'Medulloblastoma'),
(40, 12, 'urothelial_carcinoma', 'Urothelial Carcinoma'),
(41, 12, 'squamous_cell_carcinoma', 'Squamous Cell Carcinoma'),
(42, 12, 'adenocarcinoma', 'Adenocarcinoma'),
(43, 13, 'squamous_cell_carcinoma', 'Squamous Cell Carcinoma'),
(44, 13, 'adenocarcinoma', 'Adenocarcinoma'),
(45, 13, 'adenosquamous_carcinoma', 'Adenosquamous Carcinoma'),
(46, 14, 'adenocarcinoma', 'Adenocarcinoma'),
(47, 14, 'squamous_cell_carcinoma', 'Squamous Cell Carcinoma'),
(48, 14, 'small_cell_carcinoma', 'Small Cell Carcinoma'),
(49, 15, 'adenocarcinoma', 'Adenocarcinoma'),
(22, 25, 'hepatocellular_carcinoma', 'Hepatocellular Carcinoma'),
(23, 25, 'cholangiocarcinoma', 'Cholangiocarcinoma'),
(50, 10, 'oncocytoma', 'Oncocytoma');

