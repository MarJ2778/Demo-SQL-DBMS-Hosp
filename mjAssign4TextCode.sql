/*Marian Jacklich
CGS 2545 0001
Assignmet 4 */

/*show databases;
use hospital;
show tables;*/

/*This is the section to change the room table*/

DESC room;
SELECT * FROM room;
SELECT * FROM roomtype;

UPDATE room
SET roomtype = 1
WHERE roomtype = 'Critical';

SELECT * FROM room;

UPDATE room
SET roomtype = 2
WHERE roomtype = 'Private';

UPDATE room
SET roomtype = 3
WHERE roomtype = 'Semi-Private';

DESC room;
DESC roomtype;

ALTER TABLE room
MODIFY COLUMN roomtype INT NOT NULL;

DESC room;

ALTER TABLE room
ADD FOREIGN KEY (roomType) REFERENCES roomtype (id);

SHOW CREATE TABLE room;

/*This is the section to change the nurse table and column position*/

SELECT * FROM nurse;
SELECT * FROM position;

UPDATE nurse
SET position = 1
WHERE position = 'Head Nurse';

SELECT * FROM nurse;

UPDATE nurse
SET position = 2
WHERE position = 'Nurse';

DESC nurse;
DESC position;

ALTER TABLE nurse
MODIFY COLUMN position INT NOT NULL;

DESC nurse;

ALTER TABLE nurse
ADD FOREIGN KEY (position) REFERENCES position (id);

SHOW CREATE TABLE nurse;

/*This is the section to change the physician table and column position*/

SELECT * FROM physician;
SELECT * FROM position;

UPDATE physician
SET position = 4
WHERE position = 'Staff Internist';

SELECT * FROM physician; /*used after every update below to confirm */

UPDATE physician
SET position = 5
WHERE position = 'Attending Physician';

UPDATE physician
SET position = 6
WHERE position = 'Surgical Attending Physician';

UPDATE physician
SET position = 7
WHERE position = 'Senior Attending Physician';

UPDATE physician
SET position = 8
WHERE position = 'Head Chief of Medicine';

UPDATE physician
SET position = 9
WHERE position = 'MD Resident';

UPDATE physician
SET position = 10
WHERE position = 'Attending Psychiatrist';

UPDATE physician
SET position = 11
WHERE position = 'Attending Pediatrician';

UPDATE physician
SET position = 12
WHERE position = 'Intensive Care Surgeon';

UPDATE physician
SET position = 13
WHERE position = 'Head of Diagnostic Medicine';

UPDATE physician
SET position = 14
WHERE position = 'ER Attending';

UPDATE physician
SET position = 15
WHERE position = 'ER Resident';

UPDATE physician
SET position = 16
WHERE position = 'Surgical Intern';

UPDATE physician
SET position = 17
WHERE position = 'Medical Student';

DESC physician;

ALTER TABLE physician
MODIFY COLUMN position INT NOT NULL;

DESC physician;

SHOW CREATE TABLE physician;

ALTER TABLE physician
ADD FOREIGN KEY (position) REFERENCES position (id);

SHOW CREATE TABLE physician;




















