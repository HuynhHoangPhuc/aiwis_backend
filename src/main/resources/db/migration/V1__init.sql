CREATE TABLE patients
(
    id                  SERIAL NOT NULL PRIMARY KEY,
    name                VARCHAR(150),
    age                 integer,
    personal_id         VARCHAR(30),
    health_insurance_id VARCHAR(30)
)