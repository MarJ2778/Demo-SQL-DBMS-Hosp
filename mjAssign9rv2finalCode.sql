/*Marian Jacklich
CGS 2545
Assignment 9
*/


CREATE VIEW patient_prescriptions AS
SELECT
    CONCAT (doc.firstName, " ", doc.lastName) AS Doctor,
    CONCAT (pt.firstName, " ", pt.lastName) AS Patient,
    med.name AS Medication,
    rx.prescribeDate AS Date,
    CONCAT (rx.dose, " mg") as Dosage
FROM prescription rx, physician doc, patient pt, medication med, appointment app
WHERE rx.physicianId = doc.employeeId
AND rx.patientId = pt.ID
AND rx.medicationId = med.code
AND rx.appointmentId = app.ID;


CREATE VIEW nurse_schedule AS
SELECT
    CONCAT (nur.firstName, " ", nur.lastName) AS Nurse,
    DATE (onc.startDateTime) AS Date,
    TIME (onc.startDateTime) AS "Start Time",
    TIME (onc.endDateTime) AS "End Time",
    onc.blockFloor AS Floor,
    onc.blockCode AS Section
FROM nurse nur, oncall onc
WHERE onc.nurse = nur.employeeId;


CREATE VIEW patient_appointments AS
SELECT
    CONCAT (pt.firstName, " ", pt.lastName) AS Patient, 
    CONCAT (nur.firstName, " ", nur.lastName) AS Nurse,
    CONCAT (doc.firstName, " ", doc.lastName) AS Doctor,
    DATE (app.startDateTime) AS Date,
    TIME (app.startDateTime) AS "Start Time",
    TIME (app.endDateTime) AS "End Time",
    app.examRoom AS Room
FROM appointment app, physician doc, patient pt, nurse nur
WHERE app.physician = doc.employeeId
AND app.patient = pt.ID
AND app.prepNurse = nur.employeeId;


CREATE VIEW patient_insurance AS
SELECT
    CONCAT (pt.firstName, " ", pt.lastName) AS Patient,
    ins.companyName AS "Insurance Company",
    ins.phone AS "Phone Number",
    pt.insuranceAcct AS "Insurance ID",
    (CASE ins.inNetwork
        when 1 then 'true'
        else 'false'
     END) AS "In Network"
FROM patient pt, insurance ins
WHERE pt.insuranceId = ins.Id
ORDER BY Patient;


SELECT 
    dept.name AS Department,
    CONCAT (doc.firstName, " ", doc.lastName) AS Head
FROM physician doc, department dept
WHERE dept.head = doc.employeeId
ORDER BY Department;


CREATE VIEW department_heads AS
SELECT 
    dept.name AS Department,
    CONCAT (doc.firstName, " ", doc.lastName) AS Head
FROM physician doc, department dept
WHERE dept.head = doc.employeeId
ORDER BY Department;



















