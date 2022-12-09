/*1.	A JOIN list of heads of departments ascending by their 
staff ID and showing all their staff and clearence data WHERE the department ID > 1
This allows us to see all of the data of the leaders of departments except the CEO information*/
SELECT  
        staff.*,
        departments.clearence
FROM
    departments JOIN staff ON departments.staffid = staff.staffid
WHERE
    departments.departmentid >1;
    
/*2.	A COUNT of all doctor’s appointments from the appointment table 
that the doctor has done descending by amount GROUP BY doctor ID*/
SELECT
    doctorid,
    COUNT(*) as countofappointments 
FROM 
    appointments 
GROUP BY 
    doctorid;



/*3.	3.	JOIN prescriptions and patients and list all patients that have a scheduled 
appointment on their appointmentID and the dosage from prescription*/
SELECT  
    DISTINCT patients.patientid, 
    patients.appointmentid,
    prescriptions.dosage
FROM
    patients JOIN prescriptions ON patients.appointmentid = prescriptions.appointmentid
WHERE
    patients.appointmentid IS NOT NULL;

/*4. ADD that takes the current debt of the patient and adds the appointment bill 
to that to find the current bill.*/
SELECT patients.patientid, patients.debt AS debtbefore, appointments.bill, (patients.debt + appointments.bill) AS newdebt
FROM patients JOIN appointments ON patients.patientid = appointments.patientid;

/*5.	JOIN Patients with appointments and JOIN from prescriptions and medication 
to get the medication data for each patient that has an appointment ascending by patient ID.*/
SELECT patients.patientid, appointments.appointmentid, prescriptions.prescriptionid, medications.*
FROM    patients 
        JOIN appointments ON patients.appointmentid = appointments.appointmentid
        JOIN prescriptions ON appointments.prescriptionid = prescriptions.prescriptionid
        JOIN medications ON prescriptions.medicationid = medications.medicationid;











/*6.	A VIEW of the staff table that omits all information not needed to be seen to patients. 
This excludes personal phone address office name and department ID and excludes all department IDs 
under 5 to omit data for HR, social workers, and janitors.*/
CREATE VIEW staffviewforpatients AS
SELECT staffid, first, last, officename, officephone, email
FROM staff
WHERE departmentid < 5;






















/*7.	JOIN departments with staff to find WHERE clearance is == “secret” or “top secret” 
to show who can see all the main views.*/
SELECT departments.clearence, staff.staffid, staff.first, staff.last
FROM departments JOIN staff ON departments.departmentid = staff.departmentid
AND (departments.clearence = 'Secret'
OR departments.clearence = 'Top Secret');

/*8.	A AVG query to take all the patient’s debt and find the average debt from all the patients
that WHERE they currently have debt > 0*/
SELECT AVG(NULLIF(patients.debt, 0))
FROM patients;


/*9.	A SUM query to take all the patient’s debts JOIN with appointments and GROUP them by 
the doctor that treated them last by checking the appointment table.*/

SELECT patients.patientid, patients.debt, appointments.doctorid
FROM patients JOIN appointments ON patients.appointmentid = appointments.appointmentid
;

/*10.	JOIN the patients and appointments to JOIN prescriptions and medications to 
find patients who where prescribed medications WHERE the category == pain relief.*/

SELECT patients.patientid, patients.first, patients.last,appointments.appointmentid, prescriptions.prescriptionid, medications.*
FROM    patients 
        JOIN appointments ON patients.appointmentid = appointments.appointmentid
        JOIN prescriptions ON appointments.prescriptionid = prescriptions.prescriptionid
        JOIN medications ON prescriptions.medicationid = medications.medicationid
WHERE
    medications.catagory = 'Pain Relief';
    
/*11. A DELETE query for the staff table when a staff member leaves the company*/
DELETE FROM staff WHERE staffid = 10702;




































/*12. A INSERT INTO query for when new patients enter the database*/
INSERT INTO patients
VALUES (31, 'Bryan', 'King', 'bryan@gmail.com', 512921843, 543, '204 Sandy Loam', null, 0);
































/*13. A UPDATE query for adding debts to patients after their appointments*/
UPDATE patients
SET debt = 853.2
WHERE patientid = 13;
























