-- Create a table for Patients' Age
USE data1

CREATE TABLE PatientsAge (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Age INT
);

-- Create a table for Patients' Age
CREATE TABLE PatientsAge (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Age INT
);

-- Create a table for Patients' Blood Pressure
CREATE TABLE PatientsBloodPressure (
    BloodPressureID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    SystolicPressure INT,
    DiastolicPressure INT,
    FOREIGN KEY (PatientID) REFERENCES PatientsAge(PatientID)
);

-- Insert sample values for Patients' Age
INSERT INTO PatientsAge (Age) VALUES (25);
INSERT INTO PatientsAge (Age) VALUES (32);
INSERT INTO PatientsAge (Age) VALUES (42);
INSERT INTO PatientsAge (Age) VALUES (18);
INSERT INTO PatientsAge (Age) VALUES (57);

-- Insert sample values for Patients' Blood Pressure
INSERT INTO PatientsBloodPressure (PatientID, SystolicPressure, DiastolicPressure) VALUES (1, 120, 80);
INSERT INTO PatientsBloodPressure (PatientID, SystolicPressure, DiastolicPressure) VALUES (2, 130, 85);
INSERT INTO PatientsBloodPressure (PatientID, SystolicPressure, DiastolicPressure) VALUES (3, 140, 90);
INSERT INTO PatientsBloodPressure (PatientID, SystolicPressure, DiastolicPressure) VALUES (4, 125, 82);
INSERT INTO PatientsBloodPressure (PatientID, SystolicPressure, DiastolicPressure) VALUES (5, 135, 88);


DROP TABLE PatientsAge
DROP TABLE PatientsBloodPressure


