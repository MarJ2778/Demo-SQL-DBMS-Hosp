/*
Name: Marian Jacklich
Class: CGS 2545 
Assignment: 3 SQL Written Code
*/

show databases;
use hospital;
show tables;
desc medication;  /*Compare table fields and order to data received */

INSERT INTO medication (name, brand, cost, description) VALUES
('Acetaminophen', 'Gemini Pharmaceuticals', 69.80,'pain reliever and a fever reducer'); /*Data is checked prior to adding the rest*/

INSERT INTO medication (name, brand, cost, description) VALUES
('Adderall', 'Shire Pharmaceuticals', 71.90,'treat attention deficit hyperactivity disorder (ADHD) and narcolepsy'),
('Ciprofloxacin', 'Pfizer', 19.95,'treat different types of bacterial infections'),
('Clonazepam', 'Watson Pharmaceuticals', 35.56,'treat seizures and certain types of anxiety disorders'),
('Doxycycline', 'Pfizer', 81.50,'treat many different bacterial infections'),
('Gabapentin', 'Pfizer', 68.67,'treat neuropathic pain (nerve pain)'),
('Hydrochlorothiazide', 'Jubilant Cadista Pharmaceuticals', 16.77,'used to treat fluid retention (edema)'),
('Lexapro', 'Forest Laboratories', 260.00,'used to treat anxiety in adults'),
('Meloxicam', 'Boehringer Ingelheim Pharmaceuticals', 50.00,'used to treat pain or inflammation caused by rheumatoid arthritis and osteoarthritis'),
('Omeprazole', 'Kremers Urban Pharmaceuticals', 60.00,'used to treat symptoms of gastroesophageal reflux disease (GERD)'),
('Oxycodone', 'Purdue Pharma', 80.50,'used to treat moderate to severe pain'),
('Pantoprazole', 'Pfizer', 68.84,'used to treat erosive esophagitis (damage to the esophagus from stomach acid'),
('Trazodone', 'PubChem', 14.63,'used to treat major depressive disorder'),
('Zoloft', 'Pfizer', 34.99,'used to treat depression, obsessive-compulsive disorder, panic disorder, anxiety disorders');

CREATE TABLE position
(
    ID int NOT NULL AUTO_INCREMENT,
    title varchar(50) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE roomType
(
    ID int NOT NULL AUTO_INCREMENT,
    roomDesc varchar(15) NOT NULL,
    PRIMARY KEY (ID)
);

SELECT * FROM nurse; /*To view employee ID numbers*/

UPDATE nurse
SET position = 'Nurse'
WHERE (employeeId = 107);

SELECT * from nurse where employeeId = 107;  /*To check the update*/

UPDATE nurse
SET ssn = '998745622'
WHERE (employeeId = 114);

SELECT * from nurse where employeeId = 114; 

/*Importing distinct values into a column from another table in the same database*/

SELECT DISTINCT roomtype FROM room;   /*first to see the values to go into our new table */

INSERT INTO roomType (roomdesc)    /*To insert values into our new table and specifically into the column named roomdesc*/
SELECT DISTINCT roomtype FROM room; /*This is the table we are getting specific (distinct) values from. Here roomtype is a column*/

SELECT DISTINCT position FROM nurse;

INSERT INTO position (title) 
SELECT DISTINCT position FROM nurse;

SELECT DISTINCT position FROM physician;

INSERT INTO position (title) 
SELECT DISTINCT position FROM physician;




















