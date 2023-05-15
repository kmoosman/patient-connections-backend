create table if not exists cancer_types
(
    id    serial
        primary key,
    value varchar(255) not null,
    name  varchar(255) not null
);

create table if not exists subtypes
(
    id             serial
        primary key,
    cancer_type_id integer
        references cancer_types,
    value          varchar(255) not null,
    name           varchar(255) not null
);

create table if not exists access_levels
(
    id   serial
        primary key,
    name varchar(255) not null
);

create table if not exists patients
(
    id             serial
        primary key,
    first_name     varchar(255) not null,
    last_name      varchar(255) not null,
    email          varchar(255) not null,
    cancer_type    integer
        references cancer_types,
    cancer_subtype integer
        references subtypes,
    stage_at_dx    integer,
    current_stage  integer,
    grade          integer,
    bio            text,
    hospital       varchar(255),
    access_level   integer
        references access_levels,
    dob            date
);

create table if not exists providers
(
    id             serial
        primary key,
    specialization varchar(255),
    name_prefix    varchar(255),
    name_suffix    varchar(255),
    credential     varchar(255),
    last_name      varchar(255),
    first_name     varchar(255),
    middle_name    varchar(255),
    gender         varchar(255),
    license_number varchar(255),
    npi            varchar(255),
    created_at     timestamp default CURRENT_TIMESTAMP
);

create table if not exists institutions
(
    id         serial
        primary key,
    name       varchar(255) not null,
    address    varchar(255),
    city       varchar(255),
    state      varchar(255),
    zip        varchar(10),
    country    varchar(255),
    created_at timestamp default CURRENT_TIMESTAMP
);

create table if not exists provider_institutions
(
    id             serial
        primary key,
    provider_id    integer
        references providers,
    institution_id integer
        references institutions,
    created_at     timestamp default CURRENT_TIMESTAMP
);

create table if not exists provider_cases
(
    id                    serial
        primary key,
    provider_id           integer
        references providers,
    institution_id        integer
        references institutions,
    specialty             varchar(255),
    cancer_type           integer
        references cancer_types,
    subtype               integer
        references subtypes,
    year                  numeric,
    patient_id            integer
        references patients
);

