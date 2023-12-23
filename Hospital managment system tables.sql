CREATE DATABASE HospitalManagmentSystem;
USE HospitalManagmentSystem;

CREATE TABLE DepartmentInformation (
  DepartmentID VARCHAR(20) PRIMARY KEY,
  DepartmentName VARCHAR(255) NOT NULL,
  HeadOfDepartment VARCHAR(255) NOT NULL,
  StaffMembers INT NOT NULL
);

CREATE TABLE Pharmacy (
  MedicationID VARCHAR(20) PRIMARY KEY,
  MedicationName VARCHAR(255) NOT NULL,
  Quantity INT NOT NULL,
  SupplierInfo VARCHAR(255) NOT NULL,
  ExpiryDate DATE NOT NULL
);

CREATE TABLE PatientInformation (
  PatientID VARCHAR(20) PRIMARY KEY,
  PatientName VARCHAR(255) NOT NULL,
  Age INT NOT NULL,
  Gender VARCHAR(6) NOT NULL,
  DOB DATE NOT NULL,
  ContactInfo VARCHAR(255) NOT NULL,
  MedicalHistory TEXT
);

CREATE TABLE DoctorInformation (
  DoctorID VARCHAR(20) PRIMARY KEY,
  DoctorName VARCHAR(255) NOT NULL,
  Specialization VARCHAR(255) NOT NULL,
  ContactInfo VARCHAR(255) NOT NULL,
  Schedule VARCHAR(255) NOT NULL,
  DOB DATE,
  DepartmentID VARCHAR(20),
  FOREIGN KEY (DepartmentID) REFERENCES DepartmentInformation (DepartmentID)
);

CREATE TABLE AppointmentSchedule (
  AppointmentID VARCHAR(20) PRIMARY KEY,
  PatientID VARCHAR(20) NOT NULL,
  DoctorID VARCHAR(20) NOT NULL,
  DateAndTime DATETIME NOT NULL,
  FOREIGN KEY (PatientID) REFERENCES PatientInformation (PatientID),
  FOREIGN KEY (DoctorID) REFERENCES DoctorInformation (DoctorID)
);

CREATE TABLE MedicalRecords (
  RecordID VARCHAR(20) PRIMARY KEY,
  PatientID VARCHAR(20) NOT NULL,
  DoctorID VARCHAR(20) NOT NULL,
  Diagnosis VARCHAR(255) NOT NULL,
  TreatmentPlan TEXT,
  MedicationPrescribed TEXT,
  LabTestResults TEXT,
  FOREIGN KEY (PatientID) REFERENCES PatientInformation (PatientID),
  FOREIGN KEY (DoctorID) REFERENCES DoctorInformation (DoctorID)
);

CREATE TABLE InventoryManagement (
  ItemID VARCHAR(20) PRIMARY KEY,
  ItemName VARCHAR(255) NOT NULL,
  Quantity INT NOT NULL,
  SupplierInfo VARCHAR(255) NOT NULL,
  ExpiryDate DATE NOT NULL
);

CREATE TABLE Transactions (
  TransactionID VARCHAR(20) PRIMARY KEY,
  PatientID VARCHAR(20) NOT NULL,
  DoctorID VARCHAR(20) NOT NULL,
  MedicationID VARCHAR(20) NOT NULL,
  Quantity INT NOT NULL,
  TotalCost DECIMAL(10, 2) NOT NULL,
  ServicesRendered TEXT,
  MedicationsDispensed TEXT,
  PaymentStatus VARCHAR(20),
  FOREIGN KEY (PatientID) REFERENCES PatientInformation (PatientID),
  FOREIGN KEY (DoctorID) REFERENCES DoctorInformation (DoctorID),
  FOREIGN KEY (MedicationID) REFERENCES Pharmacy (MedicationID)
);

CREATE TABLE StaffInformation (
  StaffID VARCHAR(20) PRIMARY KEY,
  StaffName VARCHAR(255) NOT NULL,
  Position VARCHAR(255) NOT NULL,
  ContactInfo VARCHAR(255) NOT NULL,
  ShiftSchedule VARCHAR(255) NOT NULL
);

CREATE TABLE LabTestManagement (
  TestID VARCHAR(20) PRIMARY KEY,
  PatientID VARCHAR(20) NOT NULL,
  DoctorID VARCHAR(20) NOT NULL,
  TestType VARCHAR(255) NOT NULL,
  TestResults TEXT,
  FOREIGN KEY (PatientID) REFERENCES PatientInformation (PatientID),
  FOREIGN KEY (DoctorID) REFERENCES DoctorInformation (DoctorID)
);

CREATE TABLE SurgeryManagement (
  SurgeryID VARCHAR(20) PRIMARY KEY,
  PatientID VARCHAR(20) NOT NULL,
  DoctorID VARCHAR(20) NOT NULL,
  SurgeryType VARCHAR(255) NOT NULL,
  DateAndTime DATETIME NOT NULL,
  OperatingRoom VARCHAR(255) NOT NULL,
  FOREIGN KEY (PatientID) REFERENCES PatientInformation (PatientID),
  FOREIGN KEY (DoctorID) REFERENCES DoctorInformation (DoctorID)
);

