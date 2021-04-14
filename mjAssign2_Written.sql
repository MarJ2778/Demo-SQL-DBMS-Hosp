/*
Name: Marian Jacklich
Class: CGS 2545 
Assignment: 2 SQL Written to perform the tasks
*/

/*show databases;
use hospital;*/

CREATE TABLE insurance
(
    ID int NOT NULL AUTO_INCREMENT,
    companyName varchar(50) NOT NULL,
    phone char(10) NOT NULL,
    inNetwork tinyint NOT NULL,
    PRIMARY KEY(ID)
);

ALTER TABLE insurance AUTO_INCREMENT = 1000;

CREATE TABLE medicalProcedure
(
    code int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    cost float(7,2) NOT NULL,
    PRIMARY KEY(code)
);
show tables;


CREATE TABLE medication
(
    code int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    brand varchar(50) NOT NULL,
    cost float(7,2) NOT NULL,
    description varchar(100) NOT NULL,
    PRIMARY KEY(code)
 );


 CREATE TABLE nurse
 (
    employeeId int NOT NULL AUTO_INCREMENT,
    lastName varchar(50) NOT NULL,
    firstName varchar(50) NOT NULL,
    position varchar(50) NOT NULL,
    registered tinyint NOT NULL,
    ssn char(9) NOT NULL,
    PRIMARY KEY(employeeId)
 );

ALTER TABLE nurse AUTO_INCREMENT = 100;

CREATE TABLE physician
(
    employeeId int NOT NULL AUTO_INCREMENT,
    lastName varchar(50) NOT NULL,
    firstName varchar(50) NOT NULL,
    position varchar(50) NOT NULL,
    ssn char(9) NOT NULL,
    PRIMARY KEY(employeeId)
);

ALTER TABLE physician AUTO_INCREMENT = 500;


CREATE TABLE room
(
    roomNumber int NOT NULL,
    roomType varchar(30) NOT NULL,
    blockFloor int NOT NULL,
    blockCode int NOT NULL,
    available tinyint NOT NULL,
    cost float(7,2) DEFAULT NULL,
    PRIMARY KEY(roomNumber)
);

INSERT INTO insurance(companyName, phone, inNetwork) VALUES
('Unitedhealth Group', '8002587412', true),
('Wellpoint Inc. Group', '8008529632', true),
('Kaiser Foundation Group', '8003336666', true),
('Humana Group', '8001114444', true),
('Aetna Group', '8004447777', false),
('HCSC Group', '8007778888', true),
('Cigna Health Group', '8009996666', true),
('Highmark Group', '8006669999', true),
('Coventry Corp. Group', '8002225555', false),
('HIP Insurance Group', '8005558888', true),
('Independence Blue Cross Group', '8002228888', true),
('Blue Cross Blue Shield', '8008885555', false),
('Physicians Service', '8008882222', true),
('Health Net', '8007771111', true),
('Centene Corp Group', '8009993333', true),
('Carefirst Inc Group', '8001597532', false),
('Wellcare Group', '8009514789', true),
('UHC', '8003578963', true),
('Lifetime Healthcare Group', '8007536987', false);

INSERT INTO medicalprocedure(name, cost) VALUES
('Reverse Rhinopodoplasty', 1500.00),
('Obtuse Pyloric Recombobulation', 3750.00),
('Folded Demiophtalmectomy ', 4500.00),
('Complete Walletectomy', 10000.00),
('Obfuscated Dermogastrotomy', 4899.00),
('Reversible Pancreomyoplasty', 5600.00),
('Follicular Demiectomy', 250.00),
('Cardiac dysrhythmias', 7178.00),
('Biliary tract disease', 4722.00),
('Fracture of neck of femur (hip),', 4861.00),
('Heart valve disorders', 5151.00),
('Pneumonia', 2501.00),
('Septicemia', 23663.00),
('Osteoarthritis', 16520.00),
('Liveborn', 13287.00),
('Congestive heart failure', 10218.00),
('Coronary atherosclerosis', 9003.00),
('Acute cerebrovascular disease', 8840.00),
('Mood disorders', 5246.00),
('Acute myocardial infarction', 12092.00);

INSERT INTO nurse(lastName, firstName, position, registered, ssn) VALUES
('Espinosa', 'Carla', 'Head Nurse', true, '888226666'),
('Forman', 'Kitty', 'Head Nurse', true, '000112222'),
('Houlihan', 'Margaret', 'Head Nurse', true, '999551111'),
('Roberts', 'Laverne', 'Nurse', true, '777553333'),
('Flowers', 'Paul', 'Head Nurse', false, '559852222'),
('Hathaway', 'Carol', 'Nurse', true, '885231478'),
('Taggart', 'Samantha', 'Nurse', true, '357951478'),
('Lockhart', 'Abby', ' Nurse', true, '336541598'),
('Petrelli', 'Peter', 'Nurse', false, '225649874'),
('Peyton', 'Jackie', 'Nurse', true, '441523698'),
('Perkins', 'Ann', 'Nurse', false, '665412398'),
('Parker', 'Dell', 'Nurse', true, '554789632'),
('Chapel', 'Christine', 'Nurse', true, '885213647'),
('Hardy', 'Audrey', 'Nurse', true, '112365874'),
('Spenser', 'Bobbie', 'Nurse', true, '9987456'),
('Alden', 'Terri', 'Nurse', true, '775889632'),
('Young', 'Mary', 'Nurse', true, '159753684'),
('Fairhead', 'Charlie', 'Nurse', false, '987654321'),
('Seabrook', 'Tina', 'Nurse', true, '123456789');

INSERT INTO physician(firstName, lastName, position, ssn) VALUES
('John', 'Dorian','Staff Internist','111111111'),
('Elliot','Reid','Attending Physician','222222222'),
('Christopher', 'Turk','Surgical Attending Physician','333333333'),
('Percival', 'Cox','Senior Attending Physician','444444444'),
('Bob', 'Kelso','Head Chief of Medicine','555555555'),
('Todd','Quinlan','Surgical Attending Physician','666666666'),
('John', 'Wen','Surgical Attending Physician','777777777'),
('Keith','Dudemeister','MD Resident','888888888'),
('Molly', 'Clock','Attending Psychiatrist','999999999'),
('Doug', 'Ross','Attending Pediatrician','951159951'),
('Robert', 'Chase','Intensive Care Surgeon','753357753'),
('Gregory', 'House','Head of Diagnostic Medicine','852258852'),
('Mark', 'Greene','Attending Physician','123321123'),
('John', 'Carter','ER Attending','456654456'),
('James', 'Wilson','ER Resident','789987789'),
('Leonard', 'McCoy','ER Resident','741147741'),
('John', 'McIntyre','Surgical Intern','963369963'),
('Eric', 'Foreman','Medical Student','369963369'),
('Derek', 'Shepherd','Medical Student','147741147');

INSERT INTO room (roomNumber, roomType, blockFloor, blockCode, available, cost) VALUES
(101, 'Critical', 1, 1, true, 3528.00),
(102, 'Critical', 1, 1, true, 3528.00),
(103, 'Critical', 1, 1, true, 3528.00),
(110, 'Critical', 1, 2, false, 3528.00),
(111, 'Critical', 1, 2, true, 3528.00),
(112, 'Critical', 1, 2, true, 3528.00),
(113, 'Critical', 1, 2, false, 3528.00),
(121, 'Critical', 1, 3, true, 3528.00),
(122, 'Critical', 1, 3, true, 3528.00),
(123, 'Critical', 1, 3, false, 3528.00),
(201, 'Private', 2, 1, false, 1791.00),
(202, 'Private', 2, 1, true, 1791.00),
(203, 'Private', 2, 1, true, 1791.00),
(210, 'Private', 2, 2, false, 1791.00),
(211, 'Private', 2, 2, true, 1791.00),
(212, 'Private', 2, 2, true, 1791.00),
(213, 'Private', 2, 2, false, 1791.00),
(221, 'Private', 2, 3, true, 1791.00),
(222, 'Private', 2, 3, false, 1791.00),
(223, 'Private', 2, 3, true, 1791.00),
(301, 'Semi-Private', 3, 1, false, 895.50),
(302, 'Semi-Private', 3, 1, true, 895.50),
(303, 'Semi-Private', 3, 1, true, 895.50),
(310, 'Semi-Private', 3, 2, false, 895.50),
(311, 'Semi-Private', 3, 2, true, 895.50),
(312, 'Semi-Private', 3, 2, true, 895.50),
(313, 'Semi-Private', 3, 2, false, 895.50),
(321, 'Semi-Private', 3, 3, true, 895.50),
(322, 'Semi-Private', 3, 3, true, 895.50),
(323, 'Semi-Private', 3, 3, false, 895.50),
(401, 'Semi-Private', 3, 1, false, 895.50),
(402, 'Semi-Private', 3, 1, false, 895.50),
(403, 'Semi-Private', 3, 1, false, 895.50),
(410, 'Semi-Private', 3, 2, false, 895.50),
(411, 'Semi-Private', 3, 2, false, 895.50),
(412, 'Semi-Private', 3, 2, true, 895.50),
(413, 'Semi-Private', 3, 2, true, 895.50),
(421, 'Semi-Private', 3, 3, true, 895.50),
(422, 'Semi-Private', 3, 3, true, 895.50),
(423, 'Semi-Private', 3, 3, true, 895.50);