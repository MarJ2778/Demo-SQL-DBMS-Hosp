/*Marian Jacklich
CGS 2545
Assignment 6 */

/*show databases;
use hospital*/

CREATE TABLE patient(
ID INT NOT NULL AUTO_INCREMENT,
ssn CHAR(9) NOT NULL UNIQUE,
lastName VARCHAR(50) NOT NULL,
firstName VARCHAR(50) NOT NULL,
address VARCHAR(50) NOT NULL,
phone CHAR(10) NOT NULL,
insuranceId INT,
insuranceAct INT,
pcp INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (insuranceId) REFERENCES insurance (ID),
FOREIGN KEY (pcp) REFERENCES physician (employeeId)
);

ALTER TABLE patient AUTO_INCREMENT = 2000;

INSERT INTO patient (ssn, lastName, firstName, address, phone, insuranceId, insuranceAct, pcp) VALUES
('100000001', 'Smith', 'John', '42 Foobar Lane', '1235550256', 1000, 68476213, 523),
('100000002', 'Ritchie', 'Grace', '37 Snafu Drive', '1235550512', 1011, 36546321, 522),
('100000003', 'Patient', 'Random', '101 Omgbbq Street', '1235551204', 1018, 65465421, 520),
('100000004', 'Doe', 'Dennis', '1100 Foobaz Avenue', '1235552048', 1005, 68421879, 521);



