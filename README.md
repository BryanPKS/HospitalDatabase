# HospitalDatabase
This database simulates a system of relations in a hospital database.
It is made using BNCF normalization to perserve and secure data.
The file also includes some sql queries in a file to show competency in SQL coding.

#Staff and Department tables
These tables act as a communication between the department heads with the general staff.
We have a staff table that will store the department they are in and all of their personal information. 
There are specifically made views made to hide information from the patients so they just have their general information needed for the patients

#Appointment and Patient tables
The Appointment table contains foreign keys for staff ID patient ID and prescription ID respecively.
Appointments acts as a bridge between these tables to give privacy for the patients and staff alike.
Patients have all their personal information along with a debt column so we can keep track of all appointment bills and 
add to the specific patients debt everytime a new bill occurs.

#Prescription and Medication tables
To simplify and normalize the appointment tables we keep the relations of the prescription and medication seperate.
Each appointment can have one prescription and we can draw from the medication table to expand information about that specific appointment.
