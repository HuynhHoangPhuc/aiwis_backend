DROP TABLE patients;

CREATE TABLE patients
(
    id                  SERIAL NOT NULL PRIMARY KEY,
    name                VARCHAR(150),
    phone               VARCHAR(20),
    age                 INTEGER,
    personal_id         VARCHAR(30),
    health_insurance_id VARCHAR(30),
    password            VARCHAR(150)
);

DROP TABLE doctors;

CREATE TABLE doctors
(
    id          SERIAL NOT NULL PRIMARY KEY,
    name        VARCHAR(150),
    phone       VARCHAR(20),
    experience  INTEGER,
    personal_id VARCHAR(30),
    certificate BOOLEAN,
    password    VARCHAR(150)
);

CREATE TABLE medicines
(
    id          SERIAL NOT NULL PRIMARY KEY,
    name        VARCHAR(150),
    description VARCHAR(500),
    unit        VARCHAR(20),
    price       DECIMAL(10, 2),
    image_url   VARCHAR(500)
);

INSERT INTO medicines (name, description, unit, price, image_url)
VALUES ('Paracetamol', 'Paracetamol is a medication used to treat pain and fever. It is typically used for mild to moderate pain relief. Evidence is mixed for its use to relieve fever in children. It is often sold in combination with other medications, such as in many cold medications.', 'mg', 0.5, 'https://www.medicines.org.uk/emc/imgs/resize/medium/2500.jpg');

/* insert multiple rows to medicines table */
INSERT INTO medicines (name, description, unit, price, image_url)
VALUES ('Ibuprofen', 'Ibuprofen is a medication in the nonsteroidal anti-inflammatory drug class that is used for treating pain, fever, and inflammation. This includes painful menstrual periods, migraines, and rheumatoid arthritis. It may also be used to close a patent ductus arteriosus in a premature baby.', 'mg', 0.5, 'https://www.medicines.org.uk/emc/imgs/resize/medium/2500.jpg'),
       ('Aspirin', 'Aspirin, also known as acetylsalicylic acid, is a medication used to reduce pain, fever, or inflammation. Specific inflammatory conditions which aspirin is used to treat include Kawasaki disease, pericarditis, and rheumatic fever. Aspirin given shortly after a heart attack decreases the risk of death.', 'mg', 0.5, 'https://www.medicines.org.uk/emc/imgs/resize/medium/2500.jpg'),
       ('Amoxicillin', 'Amoxicillin, also spelled amoxycillin, is an antibiotic useful for the treatment of a number of bacterial infections. It is the first line treatment for middle ear infections. It may also be used for strep throat, pneumonia, skin infections, and urinary tract infections among others. It is taken by mouth, or less commonly by injection.', 'mg', 0.5, 'https://www.medicines.org.uk/emc/imgs/resize/medium/2500.jpg'),
       ('Omeprazole', 'Omeprazole, sold under the brand names Prilosec and Losec among others, is a medication used in the treatment of gastroesophageal reflux disease, peptic ulcer disease, and Zollinger–Ellison syndrome. It is also used to prevent upper gastrointestinal bleeding in people who are at high risk. It can be taken by mouth or injected into a vein.', 'mg', 0.5, 'https://www.medicines.org.uk/emc/imgs/resize/medium/2500.jpg');