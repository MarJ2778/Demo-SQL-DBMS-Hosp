/*Marian Jacklich
CGS 2540 SQL Code for 
Assignment 7*/

/*show databases;
use hospital; */

ALTER TABLE roomtype
ADD cost DECIMAL(7,2) NOT NULL DEFAULT(0.0);
DESC roomtype;

SELECT * FROM roomtype;

UPDATE roomtype
SET cost = 3528.00
WHERE id = 1;

UPDATE roomtype
SET cost = 1791.00
WHERE id = 2;

UPDATE roomtype
SET cost = 895.50
WHERE id = 3;

INSERT INTO roomtype(roomDesc)
VALUES('Exam');           /*Autodefaults to 0.00 cost not provided*/

ALTER TABLE room DROP COLUMN cost;

INSERT INTO room (roomNumber, roomtype, blockFloor, blockCode, available)
VALUES 
(140,4,1,4,0),
(141,4,1,4,1),
(142,4,1,4,0),
(143,4,1,4,0),
(144,4,1,4,1),
(145,4,1,4,0),
(146,4,1,4,1),
(147,4,1,4,0),
(148,4,1,4,1),
(149,4,1,4,0);

CREATE TABLE appointment(
ID INT NOT NULL AUTO_INCREMENT,
patient INT NOT NULL,
prepNurse INT,
physician INT NOT NULL,
startDateTime TIMESTAMP NOT NULL,
endDateTime TIMESTAMP NOT NULL,
examRoom INT NOT NULL,
cost DECIMAL(7,2) NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY(patient) REFERENCES patient (ID),
FOREIGN KEY(physician) REFERENCES physician (employeeId),
FOREIGN KEY(prepNurse) REFERENCES nurse (employeeId),
FOREIGN KEY(examRoom) REFERENCES room (roomNumber)
);

DESC appointment;


CREATE TABLE prescription(
physicianId INT NOT NULL,
patientId INT NOT NULL,
medicationId INT NOT NULL,
prescribeDate DATE NOT NULL,
appointmentId INT NOT NULL,
dose INT NOT NULL,
PRIMARY KEY (physicianId, patientId, medicationId, prescribeDate),
FOREIGN KEY(patientId) REFERENCES patient(ID),
FOREIGN KEY(physicianId) REFERENCES physician(employeeId),
FOREIGN KEY(medicationId) REFERENCES medication(code),
FOREIGN KEY(appointmentId) REFERENCES appointment(ID)
);

DESC prescription;

SHOW CREATE TABLE prescription;

CREATE TABLE admitted(
ID INT NOT NULL AUTO_INCREMENT,
patientId INT NOT NULL,
roomNumber INT NOT NULL,
startDateTime TIMESTAMP NOT NULL,
endDateTime TIMESTAMP NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (patientId) REFERENCES patient(ID),
FOREIGN KEY (roomNumber) REFERENCES room(roomNumber)
);

ALTER TABLE admitted AUTO_INCREMENT = 3000; 

/*Entered, no data yet,confirm when data*/

DESC admitted;

SHOW CREATE TABLE admitted;

CREATE TABLE underGoes(
patientId INT NOT NULL,
procedureCode INT NOT NULL,
admittedId INT NOT NULL,
procedureDate TIMESTAMP NOT NULL,
physicianId INT NOT NULL,
nurseId INT NOT NULL,
PRIMARY KEY (patientId, procedureCode, procedureDate),
FOREIGN KEY (patientId) REFERENCES patient(ID),
FOREIGN KEY(physicianId) REFERENCES physician(employeeId),
FOREIGN KEY(admittedId) REFERENCES admitted(ID),
FOREIGN KEY(nurseId) REFERENCES nurse (employeeId),
FOREIGN KEY(procedureCode) REFERENCES medicalProcedure(code)
);

DESC undergoes;







