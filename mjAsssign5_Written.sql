/*Marian Jacklich
CGS 2545 0001
Assignment 5*/

/*Adding UNIQUE to prevent duplicate data. 
Create new tables with foreign keys, data here is 
used for actual insert statements*/

/*show databases;
use hospital;
show tables;*/

ALTER TABLE physician ADD UNIQUE (ssn);
DESC physician;  /*To confirm*/

ALTER TABLE nurse ADD UNIQUE (ssn);
DESC nurse;

ALTER TABLE insurance ADD UNIQUE (companyName);
DESC insurance;

ALTER TABLE medicalProcedure ADD UNIQUE (name);
DESC medicalProcedure;

ALTER TABLE medication ADD UNIQUE (name);
DESC medication;

ALTER TABLE position ADD UNIQUE (title);
DESC position;

ALTER TABLE roomType ADD UNIQUE (roomDesc);
DESC roomType;

DESC position;
INSERT INTO position (title) VALUES ('General Medicine');
SELECT title FROM position;

INSERT INTO physician (lastName, firstName, position, ssn)
VALUES 
('Philip', 'Buck', 18, 111223333),
('Apostol', 'Robert', 18, 222334444),
('Badola', 'Jesus', 18, 333445555),
('Altino', 'Rosa', 18, 444556666),
('Hamilton', 'Ann', 18, 555667777);

SELECT * FROM physician;


CREATE TABLE department(
ID INT NOT NULL AUTO_INCREMENT,
NAME VARCHAR(50) NOT NULL,
HEAD INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (head) REFERENCES physician(employeeID)
);

SHOW CREATE TABLE department;

INSERT INTO department (name, head)
VALUES
('General Medicine', 520),
('Surgery', 501),
('Psychiatry', 508),
('Pediatrics', 509),
('Intensive Care Unit', 510),
('Emergency', 515),
('Oncology', 503),
('Cardiology', 504), 
('Neurology', 511),
('Maternity', 522); 


CREATE TABLE onCall(
ID INT NOT NULL AUTO_INCREMENT,
nurse INT NOT NULL,
blockFloor INT NOT NULL,
blockCode INT NOT NULL,
startDateTime TIMESTAMP NOT NULL,
endDateTime TIMESTAMP NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (nurse) REFERENCES nurse(employeeID)
);

DESC onCall;
SHOW CREATE TABLE onCall;

INSERT INTO onCall (nurse, blockFloor, blockCode, startDateTime, endDateTime)
VALUES 
(100, 1, 1, '2020-03-01 07:00:00', '2020-03-01 19:00:00'),
(101, 1, 2, '2020-03-01 19:00:00', '2020-03-02 07:00:00'),
(102, 1, 3, '2020-03-02 07:00:00', '2020-03-02 19:00:00'),
(103, 2, 1, '2020-03-02 19:00:00', '2020-03-03 07:00:00'),
(104, 2, 2, '2020-03-03 07:00:00', '2020-03-03 19:00:00'),
(105, 2, 3, '2020-03-03 19:00:00', '2020-03-04 07:00:00'),
(106, 3, 1, '2020-03-04 07:00:00', '2020-03-04 19:00:00'),
(107, 3, 2, '2020-03-04 19:00:00', '2020-03-05 07:00:00'),
(108, 3, 3, '2020-03-05 07:00:00', '2020-03-05 19:00:00'),
(109, 1, 1, '2020-03-05 19:00:00', '2020-03-06 07:00:00'),
(110, 1, 2, '2020-03-06 07:00:00', '2020-03-06 19:00:00'),
(111, 1, 3, '2020-03-06 19:00:00', '2020-03-07 07:00:00'),
(112, 2, 1, '2020-03-07 07:00:00', '2020-03-07 19:00:00'),
(113, 2, 2, '2020-03-07 19:00:00', '2020-03-08 07:00:00'),
(114, 2, 3, '2020-03-08 07:00:00', '2020-03-08 19:00:00'),
(115, 3, 1, '2020-03-08 19:00:00', '2020-03-09 07:00:00'),
(116, 3, 2, '2020-03-09 07:00:00', '2020-03-09 19:00:00'),
(117, 3, 3, '2020-03-09 19:00:00', '2020-03-10 07:00:00'),
(118, 1, 1, '2020-03-10 07:00:00', '2020-03-10 19:00:00');

SELECT * FROM onCall;





























