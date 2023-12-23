INSERT INTO DepartmentInformation (DepartmentID, DepartmentName, HeadOfDepartment, StaffMembers)
VALUES
  ('D001', 'Cardiology', 'Dr. Smith', 10),
  ('D002', 'Pediatrics', 'Dr. Johnson', 8),
  ('D003', 'Orthopedics', 'Dr. Anderson', 12),
  ('D004', 'Neurology', 'Dr. Davis', 7),
  ('D005', 'Dermatology', 'Dr. Wilson', 9),
  ('D006', 'Ophthalmology', 'Dr. Thompson', 6),
  ('D007', 'Gastroenterology', 'Dr. Garcia', 11),
  ('D008', 'Obstetrics and Gynecology', 'Dr. Martinez', 13),
  ('D009', 'Pharmacy', 'Dr. Johnson', 5),
  ('D010', 'Laboratory', 'Dr. Smith', 12),
  ('D011', 'Transaction', 'Anderson', 8);

INSERT INTO Pharmacy (MedicationID, MedicationName, Quantity, SupplierInfo, ExpiryDate)
VALUES
  ('M001', 'Aspirin', 100, 'ABC Pharmaceuticals', '2023-06-30'),
  ('M002', 'Amoxicillin', 50, 'XYZ Pharmaceuticals', '2022-12-31'),
  ('M003', 'Lisinopril', 75, 'PQR Pharmaceuticals', '2023-08-15'),
  ('M004', 'Ibuprofen', 200, 'DEF Pharmaceuticals', '2022-09-30'),
  ('M005', 'Simvastatin', 30, 'GHI Pharmaceuticals', '2023-03-31'),
  ('M006', 'Metformin', 60, 'JKL Pharmaceuticals', '2022-11-15'),
  ('M007', 'Levothyroxine', 90, 'MNO Pharmaceuticals', '2023-05-31'),
  ('M008', 'Omeprazole', 40, 'STU Pharmaceuticals', '2023-02-28');
  
  INSERT INTO PatientInformation (PatientID, PatientName, Age, Gender, DOB, ContactInfo, MedicalHistory)
VALUES
  ('P001', 'John Smith', 35, 'Male', '1986-03-15', '123-456-7890', 'No significant medical history'),
  ('P002', 'Emily Johnson', 28, 'Female', '1993-09-21', '987-654-3210', 'Asthma, allergies'),
  ('P003', 'Michael Davis', 42, 'Male', '1979-07-10', '456-789-0123', 'Hypertension, diabetes'),
  ('P004', 'Sarah Wilson', 31, 'Female', '1990-03-28', '210-987-6543', 'Depression, anxiety'),
  ('P005', 'David Thompson', 56, 'Male', '1965-11-09', '654-321-0987', 'Heart disease'),
  ('P006', 'Jessica Garcia', 39, 'Female', '1982-06-17', '012-345-6789', 'No significant medical history'),
  ('P007', 'Daniel Martinez', 47, 'Male', '1974-02-12', '321-654-9870', 'High cholesterol'),
  ('P008', 'Olivia Johnson', 25, 'Female', '1996-08-05', '789-012-3456', 'Asthma');

INSERT INTO DoctorInformation (DoctorID, DoctorName, Specialization, ContactInfo, Schedule, DOB, DepartmentID)
VALUES
  ('DR001', 'Dr. Adams', 'Cardiology', '123-456-7890', 'Mon-Fri, 9am-5pm', '1978-05-15', 'D001'),
  ('DR002', 'Dr. Lee', 'Pediatrics', '987-654-3210', 'Mon, Wed, Fri, 10am-3pm', '1985-09-21', 'D002'),
  ('DR003', 'Dr. Roberts', 'Neurology', '456-789-0123', 'Tue, Thu, Sat, 11am-6pm', '1973-07-10', 'D004'),
  ('DR004', 'Dr. Anderson', 'Dermatology', '789-012-3456', 'Mon, Wed, Fri, 8am-4pm', '1976-12-03', 'D005'),
  ('DR005', 'Dr. White', 'Ophthalmology', '210-987-6543', 'Tue, Thu, Sat, 9am-1pm', '1989-03-28', 'D006'),
  ('DR006', 'Dr. Harris', 'Gastroenterology', '654-321-0987', 'Mon, Wed, Thu, 10am-4pm', '1971-11-09', 'D007'),
  ('DR007', 'Dr. Turner', 'Obstetrics and Gynecology', '012-345-6789', 'Tue, Fri, Sat, 9am-5pm', '1984-06-17', 'D008');
  
INSERT INTO AppointmentSchedule (AppointmentID, PatientID, DoctorID, DateAndTime)
VALUES
  ('A001', 'P001', 'DR001', '2022-07-15 10:00:00'),
  ('A002', 'P002', 'DR003', '2022-08-02 14:30:00'),
  ('A003', 'P003', 'DR005', '2022-09-10 09:15:00'),
  ('A004', 'P004', 'DR002', '2022-08-20 11:00:00'),
  ('A005', 'P005', 'DR006', '2022-07-28 16:45:00'),
  ('A006', 'P006', 'DR007', '2022-09-05 11:30:00'),
  ('A007', 'P007', 'DR004', '2022-08-12 09:45:00'),
  ('A008', 'P008', 'DR002', '2022-09-18 15:20:00');
  
INSERT INTO MedicalRecords (RecordID, PatientID, DoctorID, Diagnosis, TreatmentPlan, MedicationPrescribed, LabTestResults)
VALUES
  ('R001', 'P001', 'DR001', 'Hypertension', 'Prescribed medication and advised lifestyle changes', 'Lisinopril', 'Blood pressure within normal range'),
  ('R002', 'P002', 'DR003', 'Migraine', 'Prescribed pain medication and advised stress management techniques', 'Ibuprofen', 'No abnormalities detected in lab tests'),
  ('R003', 'P003', 'DR005', 'Psoriasis', 'Prescribed topical cream and advised regular moisturization', 'Betamethasone', 'Positive for psoriasis in skin biopsy'),
  ('R004', 'P004', 'DR002', 'Anxiety', 'Referred to a therapist for counseling and prescribed anti-anxiety medication', 'Alprazolam', 'No lab tests conducted'),
  ('R005', 'P005', 'DR006', 'Coronary artery disease', 'Referred to a cardiologist for further evaluation and prescribed medication', 'Atorvastatin', 'Mild mitral valve regurgitation detected in echocardiogram'),
  ('R006', 'P006', 'DR007', 'Conjunctivitis', 'Prescribed antibiotic eye drops', 'Ofloxacin', 'No lab tests conducted'),
  ('R007', 'P007', 'DR004', 'Colorectal polyps', 'Recommended regular screenings and scheduled colonoscopy', 'N/A', 'Polyp removal successful in colonoscopy'),
  ('R008', 'P008', 'DR002', 'Routine check-up', 'No specific treatment required', 'N/A', 'Normal results in Pap smear');

INSERT INTO InventoryManagement (ItemID, ItemName, Quantity, SupplierInfo, ExpiryDate)
VALUES
  ('I001', 'Aspirin', 100, 'ABC Pharmaceuticals', '2023-06-30'),
  ('I002', 'Amoxicillin', 50, 'XYZ Pharmaceuticals', '2022-12-31'),
  ('I003', 'Lisinopril', 75, 'PQR Pharmaceuticals', '2023-08-15'),
  ('I004', 'Ibuprofen', 200, 'DEF Pharmaceuticals', '2022-09-30'),
  ('I005', 'Simvastatin', 30, 'GHI Pharmaceuticals', '2023-03-31'),
  ('I006', 'Metformin', 60, 'JKL Pharmaceuticals', '2022-11-15'),
  ('I007', 'Levothyroxine', 90, 'MNO Pharmaceuticals', '2023-05-31'),
  ('I008', 'Omeprazole', 40, 'STU Pharmaceuticals', '2023-02-28');

INSERT INTO Transactions (TransactionID, PatientID, DoctorID, MedicationID, Quantity, TotalCost, ServicesRendered, MedicationsDispensed, PaymentStatus)
VALUES
  ('T001', 'P001', 'DR001', 'M001', 2, 15.99, 'Consultation and prescription', 'Aspirin', 'Paid'),
  ('T002', 'P002', 'DR003', 'M004', 1, 8.99, 'Consultation and prescription', 'Ibuprofen', 'Paid'),
  ('T003', 'P003', 'DR005', 'M005', 1, 12.99, 'Consultation and prescription', 'Simvastatin', 'Paid'),
  ('T004', 'P004', 'DR002', 'M006', 2, 9.99, 'Consultation and prescription', 'Metformin', 'Paid'),
  ('T005', 'P005', 'DR006', 'M007', 1, 19.99, 'Consultation and prescription', 'Levothyroxine', 'Paid'),
  ('T006', 'P006', 'DR007', 'M008', 3, 14.99, 'Consultation and prescription', 'Omeprazole', 'Paid'),
  ('T007', 'P007', 'DR004', 'M002', 2, 11.99, 'Consultation and prescription', 'Amoxicillin', 'Paid'),
  ('T008', 'P008', 'DR002', 'M003', 1, 17.99, 'Consultation and prescription', 'Lisinopril', 'Paid');
    
INSERT INTO StaffInformation (StaffID, StaffName, Position, ContactInfo, ShiftSchedule)
VALUES
  ('ST001', 'Dr. Adams', 'Surgeon', '123-456-7890', 'Mon-Fri, 9am-5pm'),
  ('ST002', 'Dr. Lee', 'Anesthesiologist', '987-654-3210', 'Mon, Wed, Fri, 10am-3pm'),
  ('ST003', 'Dr. Roberts', 'Surgeon', '456-789-0123', 'Tue, Thu, Sat, 11am-6pm'),
  ('ST004', 'Dr. Anderson', 'Surgeon', '789-012-3456', 'Mon, Wed, Fri, 8am-4pm'),
  ('ST005', 'Dr. White', 'Ophthalmologist', '210-987-6543', 'Tue, Thu, Sat, 9am-1pm'),
  ('ST006', 'Dr. Harris', 'Surgeon', '654-321-0987', 'Mon, Wed, Thu, 10am-4pm'),
  ('ST007', 'Dr. Turner', 'Surgeon', '012-345-6789', 'Tue, Fri, Sat, 9am-5pm');
  
INSERT INTO LabTestManagement (TestID, PatientID, DoctorID, TestType, TestResults)
VALUES
  ('T001', 'P001', 'DR001', 'EKG', 'Normal sinus rhythm'),
  ('T002', 'P002', 'DR003', 'MRI', 'No abnormalities detected'),
  ('T003', 'P003', 'DR005', 'Skin biopsy', 'Positive for psoriasis'),
  ('T004', 'P004', 'DR006', 'Eye exam', '20/20 vision'),
  ('T005', 'P005', 'DR002', 'Blood test', 'Normal blood counts'),
  ('T006', 'P006', 'DR004', 'Echocardiogram', 'Mild mitral valve regurgitation'),
  ('T007', 'P007', 'DR007', 'Colonoscopy', 'Polyp removal successful');
  
INSERT INTO SurgeryManagement (SurgeryID, PatientID, DoctorID, SurgeryType, DateAndTime, OperatingRoom)
VALUES
  ('S001', 'P001', 'DR001', 'Appendectomy', '2022-07-15 14:00:00', 'OR 1'),
  ('S002', 'P002', 'DR003', 'Tonsillectomy', '2022-08-02 10:30:00', 'OR 2'),
  ('S003', 'P003', 'DR005', 'Dermatologic Surgery', '2022-09-10 08:45:00', 'OR 3'),
  ('S004', 'P004', 'DR002', 'Laparoscopic Cholecystectomy', '2022-08-20 13:15:00', 'OR 1'),
  ('S005', 'P005', 'DR006', 'Angioplasty', '2022-07-28 15:30:00', 'OR 2'),
  ('S006', 'P006', 'DR007', 'Cataract Surgery', '2022-09-05 09:30:00', 'OR 3'),
  ('S007', 'P007', 'DR004', 'Colon Resection', '2022-08-12 11:45:00', 'OR 1'),
  ('S008', 'P008', 'DR002', 'Hysterectomy', '2022-09-18 14:00:00', 'OR 2');
