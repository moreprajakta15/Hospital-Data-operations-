CREATE DATABASE hospital_db;
USE hospital_db;


CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50)
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    specialization VARCHAR(50),
    department_id INT,
    phone VARCHAR(15),
    FOREIGN KEY (department_id)
        REFERENCES Departments (department_id)
);

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    registration_date DATE
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20) DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id)
        REFERENCES Patients (patient_id),
    FOREIGN KEY (doctor_id)
        REFERENCES Doctors (doctor_id)
);

CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    medicine_name VARCHAR(100),
    dosage VARCHAR(50),
    FOREIGN KEY (appointment_id)
        REFERENCES Appointments (appointment_id)
);

CREATE TABLE Billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    amount DECIMAL(8 , 2 ),
    payment_status VARCHAR(20) DEFAULT 'Unpaid',
    bill_date DATE,
    FOREIGN KEY (appointment_id)
        REFERENCES Appointments (appointment_id)
);



INSERT INTO Departments (department_name) VALUES
('Cardiology'),
('Neurology'),
('Orthopedics'),
('Pediatrics'),
('General Medicine'),
('Dermatology'),
('ENT'),
('Ophthalmology'),
('Psychiatry'),
('Gynecology'),
('Urology'),
('Nephrology'),
('Oncology'),
('Pulmonology'),
('Endocrinology'),
('Gastroenterology'),
('Rheumatology'),
('Dentistry'),
('Radiology'),
('Pathology'),
('Anesthesiology'),
('Emergency Medicine'),
('Plastic Surgery'),
('Physiotherapy'),
('Nutrition'),
('Immunology'),
('Hematology'),
('Infectious Diseases'),
('Critical Care'),
('Family Medicine'),
('Sports Medicine'),
('Nuclear Medicine'),
('Cosmetology'),
('Diabetology'),
('Hepatology'),
('Vascular Surgery'),
('Neonatology'),
('Pain Management'),
('Allergy & Asthma'),
('Sleep Medicine'),
('Palliative Care'),
('Rehabilitation'),
('Forensic Medicine'),
('Clinical Pharmacology'),
('Genetics'),
('Occupational Medicine'),
('Community Medicine'),
('Medical Oncology'),
('Transplant Surgery'),
('Trauma Surgery');

INSERT INTO Doctors (name, specialization, department_id, phone) VALUES
('Dr. Rakesh Sharma','Cardiologist',1,'9876500001'),
('Dr. Meera Nair','Neurologist',2,'9876500002'),
('Dr. Sanjay Verma','Orthopedic Surgeon',3,'9876500003'),
('Dr. Kavita Rao','Pediatrician',4,'9876500004'),
('Dr. Arvind Joshi','General Physician',5,'9876500005'),
('Dr. Priya Singh','Dermatologist',6,'9876500006'),
('Dr. Amit Kapoor','ENT Specialist',7,'9876500007'),
('Dr. Neha Shah','Ophthalmologist',8,'9876500008'),
('Dr. Rohit Mehta','Psychiatrist',9,'9876500009'),
('Dr. Pooja Patel','Gynecologist',10,'9876500010'),
('Dr. Vikram Rao','Urologist',11,'9876500011'),
('Dr. Sneha Kulkarni','Nephrologist',12,'9876500012'),
('Dr. Kiran Kumar','Oncologist',13,'9876500013'),
('Dr. Rajesh Gupta','Pulmonologist',14,'9876500014'),
('Dr. Swati Desai','Endocrinologist',15,'9876500015'),
('Dr. Nitin Bansal','Gastroenterologist',16,'9876500016'),
('Dr. Harish Iyer','Rheumatologist',17,'9876500017'),
('Dr. Monica Dsouza','Dentist',18,'9876500018'),
('Dr. Vivek Sinha','Radiologist',19,'9876500019'),
('Dr. Anjali Bose','Pathologist',20,'9876500020'),
('Dr. Suresh Reddy','Anesthesiologist',21,'9876500021'),
('Dr. Akash Jain','Emergency Physician',22,'9876500022'),
('Dr. Deepa Menon','Plastic Surgeon',23,'9876500023'),
('Dr. Rahul Yadav','Physiotherapist',24,'9876500024'),
('Dr. Sonia Malhotra','Nutritionist',25,'9876500025'),
('Dr. Abhishek Roy','Immunologist',26,'9876500026'),
('Dr. Ritu Arora','Hematologist',27,'9876500027'),
('Dr. Gaurav Mishra','Infectious Disease Specialist',28,'9876500028'),
('Dr. Asha Thomas','Critical Care Specialist',29,'9876500029'),
('Dr. Naveen Pillai','Family Physician',30,'9876500030'),
('Dr. Bhavna Kapoor','Sports Medicine Specialist',31,'9876500031'),
('Dr. Karthik Narayan','Nuclear Medicine Specialist',32,'9876500032'),
('Dr. Rekha Verma','Cosmetologist',33,'9876500033'),
('Dr. Vinod Chandra','Diabetologist',34,'9876500034'),
('Dr. Ramesh Kulkarni','Hepatologist',35,'9876500035'),
('Dr. Charu Bhatia','Vascular Surgeon',36,'9876500036'),
('Dr. Sandeep Das','Neonatologist',37,'9876500037'),
('Dr. Lakshmi Nair','Pain Specialist',38,'9876500038'),
('Dr. Mohit Arora','Allergist',39,'9876500039'),
('Dr. Rina Shah','Sleep Specialist',40,'9876500040'),
('Dr. Dev Patel','Palliative Care Specialist',41,'9876500041'),
('Dr. Sheetal Joshi','Rehabilitation Specialist',42,'9876500042'),
('Dr. Kunal Sethi','Forensic Expert',43,'9876500043'),
('Dr. Farah Khan','Clinical Pharmacologist',44,'9876500044'),
('Dr. Manish Tiwari','Geneticist',45,'9876500045'),
('Dr. Isha Kapoor','Occupational Physician',46,'9876500046'),
('Dr. Anand Sharma','Community Medicine Specialist',47,'9876500047'),
('Dr. Jyoti Menon','Medical Oncologist',48,'9876500048'),
('Dr. Hemant Singh','Transplant Surgeon',49,'9876500049'),
('Dr. Nikhil Rao','Trauma Surgeon',50,'9876500050');
 
 
 -- Patients

INSERT INTO Patients (name, age, gender, city, registration_date) VALUES
('Amit Kumar',45,'Male','Mumbai','2024-01-01'),
('Sneha Patil',29,'Female','Pune','2024-01-02'),
('Rohan Das',60,'Male','Delhi','2024-01-03'),
('Priya Iyer',34,'Female','Bangalore','2024-01-04'),
('Karan Malhotra',8,'Male','Mumbai','2024-01-05'),
('Sunita Reddy',52,'Female','Chennai','2024-01-06'),
('Rahul Sharma',31,'Male','Hyderabad','2024-01-07'),
('Neha Gupta',27,'Female','Ahmedabad','2024-01-08'),
('Ankit Verma',40,'Male','Jaipur','2024-01-09'),
('Pooja Singh',36,'Female','Lucknow','2024-01-10'),
('Vikram Joshi',50,'Male','Nagpur','2024-01-11'),
('Anjali Nair',23,'Female','Kochi','2024-01-12'),
('Suresh Rao',65,'Male','Mysore','2024-01-13'),
('Divya Menon',38,'Female','Chennai','2024-01-14'),
('Harish Patel',42,'Male','Surat','2024-01-15'),
('Monica Dsouza',30,'Female','Goa','2024-01-16'),
('Kunal Shah',28,'Male','Indore','2024-01-17'),
('Ritu Sharma',47,'Female','Delhi','2024-01-18'),
('Abhishek Jain',35,'Male','Bhopal','2024-01-19'),
('Megha Kapoor',26,'Female','Noida','2024-01-20'),
('Arjun Mehta',33,'Male','Mumbai','2024-01-21'),
('Nisha Verma',55,'Female','Kanpur','2024-01-22'),
('Deepak Kumar',44,'Male','Patna','2024-01-23'),
('Swati Mishra',32,'Female','Varanasi','2024-01-24'),
('Rakesh Singh',58,'Male','Ranchi','2024-01-25'),
('Kavita Sharma',41,'Female','Pune','2024-01-26'),
('Rohit Yadav',22,'Male','Meerut','2024-01-27'),
('Anu Thomas',37,'Female','Kochi','2024-01-28'),
('Nitin Arora',39,'Male','Ludhiana','2024-01-29'),
('Pallavi Joshi',48,'Female','Nashik','2024-01-30'),
('Ajay Kulkarni',53,'Male','Aurangabad','2024-02-01'),
('Bhavna Patel',24,'Female','Rajkot','2024-02-02'),
('Manish Gupta',46,'Male','Gwalior','2024-02-03'),
('Rekha Iyer',29,'Female','Madurai','2024-02-04'),
('Sandeep Roy',57,'Male','Kolkata','2024-02-05'),
('Lakshmi Nair',43,'Female','Trivandrum','2024-02-06'),
('Gaurav Mishra',34,'Male','Prayagraj','2024-02-07'),
('Isha Kapoor',25,'Female','Chandigarh','2024-02-08'),
('Hemant Singh',49,'Male','Amritsar','2024-02-09'),
('Farah Khan',31,'Female','Bhopal','2024-02-10'),
('Nikhil Rao',27,'Male','Visakhapatnam','2024-02-11'),
('Jyoti Menon',36,'Female','Mangalore','2024-02-12'),
('Vinod Chandra',54,'Male','Coimbatore','2024-02-13'),
('Charu Bhatia',33,'Female','Jaipur','2024-02-14'),
('Dev Patel',45,'Male','Ahmedabad','2024-02-15'),
('Sheetal Joshi',28,'Female','Udaipur','2024-02-16'),
('Akash Jain',52,'Male','Jodhpur','2024-02-17'),
('Deepa Menon',40,'Female','Thrissur','2024-02-18'),
('Anand Sharma',61,'Male','Delhi','2024-02-19'),
('Rina Shah',35,'Female','Surat','2024-02-20');


-- Appointments 

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1,1,'2024-04-01','Completed'),
(2,2,'2024-04-02','Completed'),
(3,3,'2024-04-03','Scheduled'),
(4,4,'2024-04-04','Completed'),
(5,5,'2024-04-05','Cancelled'),
(6,6,'2024-04-06','Completed'),
(7,7,'2024-04-07','Scheduled'),
(8,8,'2024-04-08','Completed'),
(9,9,'2024-04-09','Completed'),
(10,10,'2024-04-10','Scheduled'),
(11,11,'2024-04-11','Completed'),
(12,12,'2024-04-12','Cancelled'),
(13,13,'2024-04-13','Completed'),
(14,14,'2024-04-14','Scheduled'),
(15,15,'2024-04-15','Completed'),
(16,16,'2024-04-16','Completed'),
(17,17,'2024-04-17','Scheduled'),
(18,18,'2024-04-18','Completed'),
(19,19,'2024-04-19','Cancelled'),
(20,20,'2024-04-20','Completed'),
(21,21,'2024-04-21','Scheduled'),
(22,22,'2024-04-22','Completed'),
(23,23,'2024-04-23','Completed'),
(24,24,'2024-04-24','Scheduled'),
(25,25,'2024-04-25','Completed'),
(26,26,'2024-04-26','Cancelled'),
(27,27,'2024-04-27','Completed'),
(28,28,'2024-04-28','Scheduled'),
(29,29,'2024-04-29','Completed'),
(30,30,'2024-04-30','Completed'),
(31,31,'2024-05-01','Scheduled'),
(32,32,'2024-05-02','Completed'),
(33,33,'2024-05-03','Cancelled'),
(34,34,'2024-05-04','Completed'),
(35,35,'2024-05-05','Scheduled'),
(36,36,'2024-05-06','Completed'),
(37,37,'2024-05-07','Completed'),
(38,38,'2024-05-08','Scheduled'),
(39,39,'2024-05-09','Cancelled'),
(40,40,'2024-05-10','Completed'),
(41,41,'2024-05-11','Scheduled'),
(42,42,'2024-05-12','Completed'),
(43,43,'2024-05-13','Completed'),
(44,44,'2024-05-14','Scheduled'),
(45,45,'2024-05-15','Completed'),
(46,46,'2024-05-16','Cancelled'),
(47,47,'2024-05-17','Completed'),
(48,48,'2024-05-18','Scheduled'),
(49,49,'2024-05-19','Completed'),
(50,50,'2024-05-20','Completed');


-- – Prescriptions4
INSERT INTO Prescriptions (appointment_id, medicine_name, dosage) VALUES
(1,'Atorvastatin','10mg once daily'),
(2,'Aspirin','75mg once daily'),
(3,'Ibuprofen','400mg twice daily'),
(4,'Paracetamol','500mg twice daily'),
(5,'Amoxicillin','500mg three times daily'),
(6,'Metformin','500mg once daily'),
(7,'Cetirizine','10mg at night'),
(8,'Omeprazole','20mg before breakfast'),
(9,'Azithromycin','500mg once daily'),
(10,'Pantoprazole','40mg once daily'),
(11,'Losartan','50mg once daily'),
(12,'Vitamin D3','60000 IU weekly'),
(13,'Insulin','10 units daily'),
(14,'Levothyroxine','50mcg once daily'),
(15,'Montelukast','10mg at night'),
(16,'Diclofenac','50mg twice daily'),
(17,'Gabapentin','300mg at night'),
(18,'Calcium Tablets','500mg twice daily'),
(19,'Hydroxychloroquine','200mg once daily'),
(20,'Multivitamin','Once daily'),
(21,'Amlodipine','5mg once daily'),
(22,'Cefixime','200mg twice daily'),
(23,'Prednisolone','10mg once daily'),
(24,'Salbutamol','2 puffs daily'),
(25,'Rosuvastatin','10mg once daily'),
(26,'Clopidogrel','75mg once daily'),
(27,'Folic Acid','5mg once daily'),
(28,'Doxycycline','100mg twice daily'),
(29,'Tramadol','50mg as required'),
(30,'Ranitidine','150mg twice daily'),
(31,'Insulin Glargine','20 units at night'),
(32,'Paracetamol Syrup','5ml thrice daily'),
(33,'Mupirocin Cream','Apply twice daily'),
(34,'Naproxen','250mg twice daily'),
(35,'Warfarin','5mg once daily'),
(36,'Budesonide','Inhalation twice daily'),
(37,'Loratadine','10mg once daily'),
(38,'Magnesium Tablets','Once daily'),
(39,'Clonazepam','0.5mg at night'),
(40,'Azathioprine','50mg once daily'),
(41,'Insulin Lispro','Before meals'),
(42,'Sitagliptin','100mg once daily'),
(43,'Carbamazepine','200mg twice daily'),
(44,'Allopurinol','100mg once daily'),
(45,'Furosemide','40mg once daily'),
(46,'Ondansetron','4mg as required'),
(47,'Methotrexate','10mg weekly'),
(48,'Tacrolimus','1mg twice daily'),
(49,'Morphine','As prescribed'),
(50,'Zinc Tablets','Once daily');


-- billing
INSERT INTO Billing (appointment_id, amount, payment_status, bill_date) VALUES
(1,1500.00,'Paid','2024-04-01'),
(2,1200.00,'Paid','2024-04-02'),
(3,1800.00,'Unpaid','2024-04-03'),
(4,900.00,'Paid','2024-04-04'),
(5,700.00,'Cancelled','2024-04-05'),
(6,1600.00,'Paid','2024-04-06'),
(7,1100.00,'Unpaid','2024-04-07'),
(8,1300.00,'Paid','2024-04-08'),
(9,2000.00,'Paid','2024-04-09'),
(10,950.00,'Unpaid','2024-04-10'),
(11,1700.00,'Paid','2024-04-11'),
(12,600.00,'Cancelled','2024-04-12'),
(13,2500.00,'Paid','2024-04-13'),
(14,1400.00,'Unpaid','2024-04-14'),
(15,1000.00,'Paid','2024-04-15'),
(16,2200.00,'Paid','2024-04-16'),
(17,800.00,'Unpaid','2024-04-17'),
(18,1500.00,'Paid','2024-04-18'),
(19,500.00,'Cancelled','2024-04-19'),
(20,1300.00,'Paid','2024-04-20'),
(21,1800.00,'Paid','2024-04-21'),
(22,900.00,'Unpaid','2024-04-22'),
(23,2100.00,'Paid','2024-04-23'),
(24,1200.00,'Paid','2024-04-24'),
(25,1600.00,'Unpaid','2024-04-25'),
(26,750.00,'Cancelled','2024-04-26'),
(27,1400.00,'Paid','2024-04-27'),
(28,1900.00,'Paid','2024-04-28'),
(29,1000.00,'Unpaid','2024-04-29'),
(30,1700.00,'Paid','2024-04-30'),
(31,2300.00,'Paid','2024-05-01'),
(32,850.00,'Unpaid','2024-05-02'),
(33,600.00,'Cancelled','2024-05-03'),
(34,1500.00,'Paid','2024-05-04'),
(35,2000.00,'Paid','2024-05-05'),
(36,1250.00,'Unpaid','2024-05-06'),
(37,1800.00,'Paid','2024-05-07'),
(38,900.00,'Paid','2024-05-08'),
(39,700.00,'Cancelled','2024-05-09'),
(40,1600.00,'Paid','2024-05-10'),
(41,1100.00,'Unpaid','2024-05-11'),
(42,1450.00,'Paid','2024-05-12'),
(43,2100.00,'Paid','2024-05-13'),
(44,950.00,'Unpaid','2024-05-14'),
(45,1750.00,'Paid','2024-05-15'),
(46,650.00,'Cancelled','2024-05-16'),
(47,2200.00,'Paid','2024-05-17'),
(48,1300.00,'Paid','2024-05-18'),
(49,1900.00,'Unpaid','2024-05-19'),
(50,1500.00,'Paid','2024-05-20');

INSERT INTO Departments (department_id,department_name) VALUES (51, 'Cardiology');
INSERT INTO Departments (department_id,department_name) VALUES (52, 'Neurology');
INSERT INTO Departments (department_id,department_name) VALUES (53, 'Orthopedics');
INSERT INTO Departments (department_id,department_name) VALUES (54, 'Pediatrics');
INSERT INTO Departments (department_id,department_name) VALUES (55, 'Dermatology');
INSERT INTO Departments (department_id,department_name) VALUES (56, 'ENT');
INSERT INTO Departments (department_id,department_name) VALUES (57, 'Oncology');
INSERT INTO Departments (department_id,department_name) VALUES (58, 'Radiology');
INSERT INTO Departments (department_id,department_name) VALUES (59, 'General');
INSERT INTO Departments (department_id,department_name) VALUES (60, 'Urology');
INSERT INTO Departments (department_id,department_name) VALUES (61, 'Cardiology');
INSERT INTO Departments (department_id,department_name) VALUES (62, 'Neurology');
INSERT INTO Departments (department_id,department_name) VALUES (63, 'Orthopedics');
INSERT INTO Departments (department_id,department_name) VALUES (64, 'Pediatrics');
INSERT INTO Departments (department_id,department_name) VALUES (65, 'Dermatology');
INSERT INTO Departments (department_id,department_name) VALUES (66, 'ENT');
INSERT INTO Departments (department_id,department_name) VALUES (67, 'Oncology');
INSERT INTO Departments (department_id,department_name) VALUES (68, 'Radiology');
INSERT INTO Departments (department_id,department_name) VALUES (69, 'General');
INSERT INTO Departments (department_id,department_name) VALUES (70, 'Urology');
INSERT INTO Departments (department_id,department_name) VALUES (71, 'Cardiology');
INSERT INTO Departments (department_id,department_name) VALUES (72, 'Neurology');
INSERT INTO Departments (department_id,department_name) VALUES (73, 'Orthopedics');
INSERT INTO Departments (department_id,department_name) VALUES (74, 'Pediatrics');
INSERT INTO Departments (department_id,department_name) VALUES (75, 'Dermatology');
INSERT INTO Departments (department_id,department_name) VALUES (76, 'ENT');
INSERT INTO Departments (department_id,department_name) VALUES (77, 'Oncology');
INSERT INTO Departments (department_id,department_name) VALUES (78, 'Radiology');
INSERT INTO Departments (department_id,department_name) VALUES (79, 'General');
INSERT INTO Departments (department_id,department_name) VALUES (80, 'Urology');
INSERT INTO Departments (department_id,department_name) VALUES (81, 'Cardiology');
INSERT INTO Departments (department_id,department_name) VALUES (82, 'Neurology');
INSERT INTO Departments (department_id,department_name) VALUES (83, 'Orthopedics');
INSERT INTO Departments (department_id,department_name) VALUES (84, 'Pediatrics');
INSERT INTO Departments (department_id,department_name) VALUES (85, 'Dermatology');
INSERT INTO Departments (department_id,department_name) VALUES (86, 'ENT');
INSERT INTO Departments (department_id,department_name) VALUES (87, 'Oncology');
INSERT INTO Departments (department_id,department_name) VALUES (88, 'Radiology');
INSERT INTO Departments (department_id,department_name) VALUES (89, 'General');
INSERT INTO Departments (department_id,department_name) VALUES (90, 'Urology');
INSERT INTO Departments (department_id,department_name) VALUES (91, 'Cardiology');
INSERT INTO Departments (department_id,department_name) VALUES (92, 'Neurology');
INSERT INTO Departments (department_id,department_name) VALUES (93, 'Orthopedics');
INSERT INTO Departments (department_id,department_name) VALUES (94, 'Pediatrics');
INSERT INTO Departments (department_id,department_name) VALUES (95, 'Dermatology');
INSERT INTO Departments (department_id,department_name) VALUES (96, 'ENT');
INSERT INTO Departments (department_id,department_name) VALUES (97, 'Oncology');
INSERT INTO Departments (department_id,department_name) VALUES (98, 'Radiology');
INSERT INTO Departments (department_id,department_name) VALUES (99, 'General');
INSERT INTO Departments (department_id,department_name) VALUES (100, 'Urology');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (51, 'Doctor 1', 'Cardiology', 51, '9000000051');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (52, 'Doctor 2', 'Neurology', 52, '9000000052');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (53, 'Doctor 3', 'Orthopedics', 53, '9000000053');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (54, 'Doctor 4', 'Pediatrics', 54, '9000000054');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (55, 'Doctor 5', 'Dermatology', 55, '9000000055');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (56, 'Doctor 6', 'ENT', 56, '9000000056');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (57, 'Doctor 7', 'Oncology', 57, '9000000057');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (58, 'Doctor 8', 'Radiology', 58, '9000000058');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (59, 'Doctor 9', 'General', 59, '9000000059');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (60, 'Doctor 10', 'Urology', 60, '9000000060');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (61, 'Doctor 11', 'Cardiology', 51, '9000000061');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (62, 'Doctor 12', 'Neurology', 52, '9000000062');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (63, 'Doctor 13', 'Orthopedics', 53, '9000000063');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (64, 'Doctor 14', 'Pediatrics', 54, '9000000064');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (65, 'Doctor 15', 'Dermatology', 55, '9000000065');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (66, 'Doctor 1', 'ENT', 56, '9000000066');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (67, 'Doctor 2', 'Oncology', 57, '9000000067');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (68, 'Doctor 3', 'Radiology', 58, '9000000068');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (69, 'Doctor 4', 'General', 59, '9000000069');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (70, 'Doctor 5', 'Urology', 60, '9000000070');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (71, 'Doctor 6', 'Cardiology', 51, '9000000071');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (72, 'Doctor 7', 'Neurology', 52, '9000000072');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (73, 'Doctor 8', 'Orthopedics', 53, '9000000073');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (74, 'Doctor 9', 'Pediatrics', 54, '9000000074');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (75, 'Doctor 10', 'Dermatology', 55, '9000000075');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (76, 'Doctor 11', 'ENT', 56, '9000000076');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (77, 'Doctor 12', 'Oncology', 57, '9000000077');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (78, 'Doctor 13', 'Radiology', 58, '9000000078');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (79, 'Doctor 14', 'General', 59, '9000000079');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (80, 'Doctor 15', 'Urology', 60, '9000000080');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (81, 'Doctor 1', 'Cardiology', 51, '9000000081');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (82, 'Doctor 2', 'Neurology', 52, '9000000082');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (83, 'Doctor 3', 'Orthopedics', 53, '9000000083');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (84, 'Doctor 4', 'Pediatrics', 54, '9000000084');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (85, 'Doctor 5', 'Dermatology', 55, '9000000085');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (86, 'Doctor 6', 'ENT', 56, '9000000086');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (87, 'Doctor 7', 'Oncology', 57, '9000000087');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (88, 'Doctor 8', 'Radiology', 58, '9000000088');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (89, 'Doctor 9', 'General', 59, '9000000089');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (90, 'Doctor 10', 'Urology', 60, '9000000090');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (91, 'Doctor 11', 'Cardiology', 51, '9000000091');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (92, 'Doctor 12', 'Neurology', 52, '9000000092');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (93, 'Doctor 13', 'Orthopedics', 53, '9000000093');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (94, 'Doctor 14', 'Pediatrics', 54, '9000000094');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (95, 'Doctor 15', 'Dermatology', 55, '9000000095');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (96, 'Doctor 1', 'ENT', 56, '9000000096');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (97, 'Doctor 2', 'Oncology', 57, '9000000097');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (98, 'Doctor 3', 'Radiology', 58, '9000000098');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (99, 'Doctor 4', 'General', 59, '9000000099');
INSERT INTO Doctors (doctor_id,name,specialization,department_id,phone) VALUES (100, 'Doctor 5', 'Urology', 60, '9000000100');






-- showing the record all table
SELECT 
    *
FROM
    Departments;
select * from Doctors;
select * from Patients;
select * from Appointments;
select * from Prescriptions;
select * from  Billing;



drop table Departments;
drop table Patients;
 drop table Appointments;
drop table Prescriptions;
  drop table Billing;

-- BASIC QUERIES 
-- 1. List all patient names and their cities
SELECT 
    name, city
FROM
    patients;

-- 2:Show all doctors along with their specialization.
SELECT 
    name, specialization
FROM
    doctors;


-- 3:Find all patients older than 40.
SELECT 
    *
FROM
    patients
WHERE
    age >= 40;

-- 4:List all female patients from Mumbai.
SELECT 
    *
FROM
    patients
WHERE
    city = 'mumbai' AND gender = 'female';


-- 5 Show all appointments with status 'Completed'.
SELECT 
    *
FROM
    appointments
WHERE
    status = 'completed';


-- 6:Find all doctors whose specialization is 'Cardiologist' or 'Neurologist'.
SELECT 
    *
FROM
    doctors
WHERE
    specialization = 'Cardiologist'
        OR specialization = 'Neurologist';
 
 
 -- 7:List all bills with an amount greater than 1000
SELECT 
    *
FROM
    billing
WHERE
    amount > 1000;
 
 -- 8:Show all patients registered after '2024-02-01'.
SELECT 
    *
FROM
    patients
WHERE
    registration_date > '2024-02-01';
 
 -- 9 List doctors sorted alphabetically by name.
SELECT 
    *
FROM
    doctors
ORDER BY name;
 
-- 10:Show all appointments sorted by date, most recent first.
SELECT 
    *
FROM
    appointments
ORDER BY appointment_date DESC;
 
 -- 11:Find patients whose name starts with the letter 'P'.
SELECT 
    *
FROM
    patients
WHERE
    name LIKE 'p%';
 
-- 12:List all unpaid bills.
SELECT 
    *
FROM
    billing
WHERE
    payment_status = 'unpaid';
 
-- 13:Find all patients aged between 20 and 40.
SELECT 
    *
FROM
    patients
WHERE
    age BETWEEN 20 AND 40;
 
-- 14:Show all male patients from Pune or Delhi.
SELECT 
    *
FROM
    patients
WHERE
    city IN ('pune' , 'mumbai')
        AND gender = 'male';-- there is no Patients belong  from pune so it can'tshow record of it
       
-- 15:List all appointments scheduled for a specific date (e.g., '2024-04-05')
select * from appointments where appointment_date='2024-04-05';

-- 16:Find all doctors who do NOT specialize in 'Cardiologist'.

select * from doctors where specialization not  in ("cardiologist");

-- 17:List all bills sorted by amount, lowest first, highest amount, second highest amount

select * from billing order by amount desc limit 1 offset 1;

-- 18:Find patients whose name ends with 'a'.
SELECT 
    *
FROM
    patients
WHERE
    name LIKE '%a';

-- 19: Show all doctors from the 'Neurology' or 'Pediatrics' department.
SELECT 
    Doctors.name,
    Doctors.specialization,
    Departments.department_name
FROM
    Doctors
        JOIN
    Departments ON Doctors.department_id = Departments.department_id
WHERE
    Departments.department_name IN ('Neurology' , 'Pediatrics');

-- 20:List the top 3 oldest patients.
SELECT 
    *
FROM
    patients
ORDER BY age
LIMIT 3;

-- 21:Show all unique cities patients belong 
SELECT DISTINCT
    city
FROM
    Patients;

-- 22:Find all unique specializations among doctors.
SELECT DISTINCT
    specialization
FROM
    doctors;
 
-- 23:List all appointments where the status is NOT 'Cancelled'.
SELECT 
    *
FROM
    Appointments
WHERE
    status <> 'Cancelled';

-- 24:Find all bills paid exactly on a specific date.
SELECT 
    *
FROM
    Billing
WHERE
    payment_status = 'Paid'
        AND bill_date = '2024-04-01';


-- 25:List all doctors whose name contains 'Sharma' or 'Rao'.
SELECT 
    *
FROM
    Doctors
WHERE
    name LIKE '%Sharma%'
        OR name LIKE '%Rao%';


-- joins :important topic of mysql

SELECT 
    p.name AS patient_name,
    d.name AS doctor_name,
    a.appointment_date
FROM
    appointments a
        INNER JOIN
    patients p ON a.patient_id = p.patient_id
        INNER JOIN
    Doctors d ON a.doctor_id = d.doctor_id;
 
    
    
-- 27:List each doctor along with their department name.
SELECT 
    d.name, d.doctor_id, de.department_name
FROM
    departments de
        INNER JOIN
    doctors d ON d.department_id = de.department_id;


-- 28:Show all prescriptions along with the patient's name.
SELECT 
    a.doctor_id, pre.medicine_name, p.name AS patient_name
FROM
    appointments a
        INNER JOIN
    prescriptions pre ON a.appointment_id = pre.appointment_id
        INNER JOIN
    patients p ON p.patient_id = a.patient_id;


-- 29:Show all prescriptions along with the doctor's name who prescribed them.
SELECT 
    d.doctor_id,
    d.name AS doctor_name,
    pre.medicine_name AS presciption
FROM
    appointments a
        INNER JOIN
    prescriptions pre ON a.appointment_id = pre.appointment_id
        INNER JOIN
    doctors d ON a.doctor_id = d.doctor_id;


-- 30:Find the department name for each patient's appointment.
SELECT 
    p.patient_id,
    p.name AS patient_name,
    a.appointment_id,
    a.appointment_date,
    d.name AS doctor_name,
    dept.department_name
FROM
    Appointments a
        JOIN
    Patients p ON a.patient_id = p.patient_id
        JOIN
    Doctors d ON a.doctor_id = d.doctor_id
        JOIN
    Departments dept ON d.department_id = dept.department_id
ORDER BY a.appointment_date;


-- 31:Show all patients along with their total billed amount (include patients with no bills, using LEFT JOIN).
SELECT 
    p.name AS patientname,
    p.patient_id,
    b.amount,
    a.appointment_date
FROM
    patients p
        LEFT JOIN
    appointments a ON a.patient_id = p.patient_id
        LEFT JOIN
    billing b ON a.appointment_id = b.appointment_id;


-- 32:List all completed appointments along with -the amount billed.
SELECT 
    a.appointment_date, a.status, b.amount, bill_date
FROM
    appointments a
        JOIN
    billing b ON a.appointment_id = b.appointment_id
WHERE
    status = 'completed';

-- 33:Show doctor name, patient name, and medicine prescribed — all in one query.
SELECT 
    d.name AS doctor_name,
    p.name AS patient_name,
    pr.medicine_name
FROM
    Doctors d
        JOIN
    Appointments a ON d.doctor_id = a.doctor_id
        JOIN
    Patients p ON a.patient_id = p.patient_id
        JOIN
    Prescriptions pr ON a.appointment_id = pr.appointment_id;
 
    
    -- 34:Find all patients who visited a doctor in the 'Cardiology' department.
SELECT DISTINCT
    p.patient_id, p.name AS patient_name, dept.department_name
FROM
    Patients p
        JOIN
    Appointments a ON p.patient_id = a.patient_id
        JOIN
    Doctors d ON a.doctor_id = d.doctor_id
        JOIN
    Departments dept ON d.department_id = dept.department_id
WHERE
    dept.department_name = 'Cardiology';


-- 35:Show all appointments where the bill is still unpaid, along with patient and doctor name.
SELECT
    a.appointment_id,
    p.name AS patient_name,
    d.name AS doctor_name,
    b.amount,
    b.payment_status
FROM Appointments a
JOIN Patients p
    ON a.patient_id = p.patient_id
JOIN Doctors d
    ON a.doctor_id = d.doctor_id
JOIN Billing b
    ON a.appointment_id = b.appointment_id
WHERE b.payment_status = 'Unpaid';

-- 36:List all doctors who have never been assigned an appointment (using LEFT JOIN).
SELECT
    d.doctor_id,
    d.name AS doctor_name
FROM Doctors d
LEFT JOIN Appointments a
    ON d.doctor_id = a.doctor_id
WHERE a.appointment_id IS NULL;


-- 37 :. Find all cities where patients have visited a Neurologist.SELECT DISTINCT
select    p.city
FROM Patients p
JOIN Appointments a
    ON p.patient_id = a.patient_id
JOIN Doctors d
    ON a.doctor_id = d.doctor_id
WHERE d.specialization = 'Neurologist';


-- 38:show all patients along with the number of appointments they've had (using JOIN + GROUP BY).
select p.patient_id,p.name as patient_name,p.age,count(appointment_id)
from appointments a inner join patients p 
    ON p.patient_id = a.patient_id
group by patient_id,name;


-- 39:List every doctor and department combination, even departments with no doctors (RIGHT JOIN).
select d.doctor_id,d.name as doctorname,de.department_name
from doctors d right join
departments de
on de.department_id=d.department_id;

-- 40:Find all patients who have taken medicine 'Paracetamol Syrup' (join Patients → Appointments → Prescriptions).
select p.patient_id,p.name as pname,pre.medicine_name,pre.dosage
from patients p join
appointments a 
    ON p.patient_id = a.patient_id
join prescriptions pre
    ON pre.appointment_id=a.appointment_id
    where medicine_name='Paracetamol Syrup';
    
-- 41:List patient name, doctor name, and department name for all completed appointments.
select p.name as patientname,d.name as doctorname,de.department_name,a.status
from  Appointments a inner join patients p 
on a.patient_id = p.patient_id
INNER JOIN Doctors d
    ON a.doctor_id = d.doctor_id
INNER JOIN Departments de
    ON d.department_id = de.department_id
WHERE a.status = 'Completed';

-- 42:Find all doctors who have prescribed more than one type of medicine.
select d.name as doctorname,count(pre.medicine_name)
from doctors d
inner join
appointments a 
on a.doctor_id=d.doctor_id
inner join prescriptions pre
on pre.appointment_id=a.appointment_id group by d.name
having count(pre.medicine_name) > 1;


-- 43:Show department-wise list of all patients treated
select p.name,de.department_name,p.age from departments de
inner join doctors d 
    ON d.department_id = de.department_id
    inner join appointments a
on a.doctor_id=d.doctor_id
inner join patients p
on a.patient_id = p.patient_id 
ORDER BY de.department_name;

-- 44:Find all appointments along with the days elapsed since the appointment
SELECT 
    a.appointment_id,
    p.name AS patient_name,
    d.name AS doctor_name,
    a.appointment_date,
    DATEDIFF(CURDATE(), a.appointment_date) AS days_elapsed
FROM Appointments a
INNER JOIN Patients p
    ON a.patient_id = p.patient_id
INNER JOIN Doctors d
    ON a.doctor_id = d.doctor_id;
    
-- 45:Show patients who have both an appointment and a prescription, with all details combined.
select p.name ,a.appointment_date,pre.prescription_id,pre.medicine_name, p.age,
    p.gender,
    p.city,
    a.appointment_id,
    a.status
from patients p inner join appointments a
    ON a.patient_id = p.patient_id
inner join prescriptions pre
on pre.appointment_id=a.appointment_id;


-- 46:List doctors who share the same specialization as each other (self-join on Doctors).
SELECT
    d1.doctor_id AS doctor1_id,
    d1.name AS doctor1_name,
    d2.doctor_id AS doctor2_id,
    d2.name AS doctor2_name,
    d1.specialization
FROM Doctors d1
INNER JOIN Doctors d2
ON d1.specialization = d2.specialization
AND d1.doctor_id < d2.doctor_id;

-- 47:Find pairs of patients who registered on the same date
select p1.name,p1.registration_date,p2.patient_id,p2.name
from patients p1 inner join patients p2
on p1.registration_date=p2.registration_date
and p1.registration_date < p2.registration_date;

-- 48:Show all bills along with patient name and doctor name, even if the bill amount is missing.
select b.bill_id,b.amount,b.bill_date,p.name as patientname,
    b.payment_status,
d.name as doctorname from patients p 
inner join appointments a
    ON a.patient_id = p.patient_id
    inner join
    doctors d
   ON a.doctor_id = d.doctor_id
   inner join billing b
on b.appointment_id=a.appointment_id;


-- 49:show doctor name, total patients seen, and total revenue generated
select d.doctor_id,d.name,count(a.patient_id) as t_p,
sum(b.amount) from Doctors d
INNER JOIN Appointments a
    ON d.doctor_id = a.doctor_id
INNER JOIN Billing b
    ON a.appointment_id = b.appointment_id
GROUP BY d.doctor_id, d.name;

-- 50:List all completed appointments where the corresponding bill status is 'Unpaid'
SELECT
    a.appointment_id,
    p.name AS patient_name,
    a.appointment_date,
    a.status AS appointment_status,
    b.amount,
    b.payment_status
FROM Appointments a
INNER JOIN Patients p
    ON a.patient_id = p.patient_id
INNER JOIN Billing b
    ON a.appointment_id = b.appointment_id
WHERE a.status = 'Completed'
  AND b.payment_status = 'Unpaid';


-- 51 :List all patients treated by doctors in more than one department
SELECT 
    p.patient_id,
    p.name AS patient_name,
    COUNT(DISTINCT de.department_id) AS departments_visited
FROM
    Patients p
        INNER JOIN
    Appointments a ON p.patient_id = a.patient_id
        INNER JOIN
    Doctors d ON a.doctor_id = d.doctor_id
        INNER JOIN
    Departments de ON d.department_id = de.department_id
GROUP BY p.patient_id , p.name;
 
 
 
 -- 52:create multiple combination  between Doctors and Departments
 select d.name,de.department_name from doctors d cross join departments de;
  
  -- 53:Cross Join with WHERE condition
  SELECT
    p.name AS patient_name,
    d.name AS doctor_name
FROM Patients p
CROSS JOIN Doctors d
WHERE d.specialization = 'Cardiology';

-- 54:patients and Doctors
SELECT
    p.name AS patient_name,
    d.name AS doctor_name
FROM Patients p
CROSS JOIN Doctors d;
 
 
 -- 55:Patients and Departments
 SELECT
    p.name AS patient_name,
    de.department_name
FROM Patients p
CROSS JOIN Departments de;


 
 -- Aggregate Functions & GROUP BY
  
  -- 56:Count the total number of patients.
  select count(patient_id) from patients;
  
  -- 57:Count how many doctors are in each department.
  select department_id,count(doctor_id) from doctors group by department_id;
  
  -- 58:Find the total number of appointments for each doctor.
  
  select count(*),doctor_id from appointments group by doctor_id;
  
  -- 59:Find the total revenue collected .
select sum(amount) as total_revenue
from billing
where payment_status = 'paid';

-- 60:Find the average bill amount.
select avg(amount) as total_revenue
from billing;

-- 61:Count how many appointments fall under each status .
select count(*),status from appointments group by status;

-- 62:Find the number of patients from each city.'
select city,count(*) from patients group by city;

-- 63:Find the total billing amount per departmen
  select
    de.department_name,
    sum(b.amount) as total_billing
from billing b
inner join appointments a
on b.appointment_id = a.appointment_id
inner join doctors d
on a.doctor_id = d.doctor_id
inner join departments de
on d.department_id = de.department_id
group by de.department_name;
  
  
  -- 64:find departments having more than 1 doctor
  select department_id,count(*) from doctors group by 
  department_id having count(*) >1;
  
  -- 65:Find doctors who have handled more than 1 appointment
  select
    doctor_id,
    count(*) as total_appointments
from appointments
group by doctor_id
having count(*) > 1;

-- 66:Find the total number of appointments recorded.
select count(*) from appointments;

-- 67:Find how many patients are male vs female.
select gender,count(gender)  from patients group by gender;

-- 68:Find the total number of prescriptions written by each doctor.
select
    d.doctor_id,
    d.name as doctor_name,
    count(pr.prescription_id) as total_prescriptions
from doctors d
inner join appointments a
on d.doctor_id = a.doctor_id
inner join prescriptions pr
on a.appointment_id = pr.appointment_id
group by d.doctor_id, d.name;


-- 68:Find the average number of appointments per doctor
select avg(total_appointments) as average_appointments
from (
    select
        doctor_id,
        count(*) as total_appointments
    from appointments
    group by doctor_id
) as doctor_appointments;


-- 69:Count how many patients live in each city, sorted by count descending.
select city,count(city) from patients group by city order by city desc;

-- 70:Find the total amount billed per patient.
select p.name ,sum(b.amount) from patients p
inner join  appointments a 
on p.patient_id = a.patient_id
inner join billing b
on a.appointment_id = b.appointment_id
group by  p.name;

-- 71:Find the average number of appointments per doctor.
select d.name,avg(a.appointment_id) as average_appointments
from doctors d inner join appointments a
on d.doctor_id = a.doctor_id
group by d.name;

-- 72:Find the doctor with the lowest number of appointments.
select
    d.doctor_id,
    d.name as doctor_name,
    count(a.appointment_id) as total_appointments
from doctors d
left join appointments a
on d.doctor_id = a.doctor_id
group by d.doctor_id, d.name
order by total_appointments asc
limit 1;

-- 73:Find how many bills are 'Paid' vs 'Unpaid'.
select payment_status ,count(payment_status) from billing group by payment_status ;


-- 74:Find the number of distinct medicines prescribed.
select distinct medicine_name,count(medicine_name) from prescriptions group by medicine_name;


-- 75:. Find the day with the highest number of appointments booked.
select
    appointment_date,
    count(*) as total_appointments
from appointments
group by appointment_date
order by total_appointments desc
limit 1;

-- 76:find the specialization with the most doctors.
select
    specialization,
    count(*) as total_doctors
from doctors
group by specialization;

-- 77:Find the minimum  patient age per gender.
select gender,min(age) as minimuage,max(age) as maximunage from patients group by gender ;

-- 78:Find the total number of 'Scheduled' appointments per doctor.
select
    doctor_id,
    count(*) as total_scheduled
from appointments
where status = 'scheduled'
group by doctor_id;


-- 79:Find departments where total revenue exceeds a certain amount (e.g., 1000), using HAVING.
select
    de.department_name,
    sum(b.amount) as total_revenue
from departments de
inner join doctors d
on de.department_id = d.department_id
inner join appointments a
on d.doctor_id = a.doctor_id
inner join billing b
on a.appointment_id = b.appointment_id
group by de.department_name
having sum(b.amount) > 1000;

-- 80:. Find the percentage of appointments that were 'Cancelled' out of all appointments.
select
    (count(case when status = 'cancelled' then 1 end) * 100.0 / count(*)) as cancelled_percentage
from appointments;





-- String, Date & Conditional Functions

-- 81: how each patient's name along with the year they registered.
select name,year(registration_date) from patients;

-- 82:Find all patients registered in the month of 2.
select name,month(registration_date) from patients where month(registration_date)=2;

-- 83:Show doctor names in uppercase
select upper(name) as d_name,specialization from doctors;

-- 84:Use CASE WHEN to label bills as 'High' or 'Low'.
select amount ,payment_status,
case
when amount >= 2000 then "high" 
when amount <=1000 then "low"
else
"medium"
end
from billing;

-- 85:Find the number of days between each appointment_date and today's date.
select appointment_date,datediff(curdate(),appointment_date) 
from appointments;

-- 86:Concatenate doctor name and specialization into a single column (e.g., "Dr. Rakesh Sharma - Cardiologist").
select concat(name," - ",specialization) as D_records from doctors;

-- 87:Find all patients whose name contains the letter 'a' 
select name from patients where name like "%a%";


-- 88:Find all patients whose registration_date falls on a weekend.
select
    patient_id,
    name as patient_name,
    registration_date
from patients
where dayofweek(registration_date) in (1, 7);

-- 89:Extract only the month name from each appointment_date 
select patient_id,appointment_date ,monthname(appointment_date) from appointments;

-- 90:Find all doctors whose phone number starts with '987'.
select name ,specialization,phone from doctors where phone like "987%";


-- 91:Use CASE WHEN to categorize patients
select
    patient_id,
    name as patient_name,
    age,
    case
        when age < 18 then 'minor'
        when age between 18 and 60 then 'adult'
        else 'senior'
    end as category
from patients;

-- 92:Find the length of each patient's name using LENGTH().
select name,length(name) from patients;


-- 93:trim any extra spaces from patient names using TRIM().
select name,trim(name) from patients;

-- 94:how appointment_date formatted as 'DD-MON-YYYY'
select appointment_date,date_format(appointment_date,'%d-%b-%Y' ) as new_date from appointments;


-- 95:Find how many days until each 'Scheduled' appointment
select
    appointment_id,
    appointment_date,
    datediff(curdate(),appointment_date) as days_remaining
from appointments
where status = 'scheduled';

-- 96:Extract just the first name from a patient's full name using SUBSTRING_INDEX().
select
    patient_id,
    name,
    substring_index(name,' ',1) as first_name
from patients;

-- 97:Use CONCAT_WS() to create a formatted string
select concat_ws(' - ',name,age,city) as info_Patients from patients;

-- 98:Find appointments that happened exactly one week ago from today.
select
    appointment_id,
    appointment_date
from appointments
where appointment_date = curdate() - interval 7 day;



-- 99:Use if() to show 'Yes'/'No' for whether a bill is paid.
select
    bill_id,
    amount,
    if(payment_status = 'paid', 'yes', 'no') as paid
from billing;

-- 100:. Round all bill amounts to the nearest 10.
select
    bill_id,
    amount,
    round(amount) as rounded_amount
from billing;


-- SUBQUERY

-- 101:Find patients whose age is above the average age of all patients.
select
    patient_id,
    name as patient_name,
    age
from patients
where age >
(
    select avg(age) as averageage
    from patients
);

    select avg(age) as averageage
    from patients;
    
    -- 102:Find the  highest bill amount using a subquery.
    select bill_id,amount from billing where amount =(select max(amount) from billing);

-- 103:Find the second highest bill amount using a subquery.
select bill_id,amount from billing where amount < (select max(amount) from billing);

-- 104:Find all patients who share the same city as
-- 'Ravi Kumar' (if applicable) or any named patient.

select patient_id,name,city from patients
where city =
(
    select city
    from patients
    where name = 'Ravi Kumar'
);


-- 105:find doctors who have never prescribed a medicine
select * from doctors
where doctor_id not in
(
    select a.doctor_id
    from appointments a
    inner join prescriptions p
    on a.appointment_id = p.appointment_id
    
);

-- 106:Find the department with the highest number of doctors (using subquery in WHERE).
-- (nested query)
select
    department_id,
    department_name
from departments
where department_id in
(
    select department_id
    from doctors
    group by department_id
    having count(*) =
    (
        select max(total_doctors)
        from
        (
            select
                count(*) as total_doctors
            from doctors
            group by department_id
        ) as t
    )
);

-- 107:Find patients who have paid more than the average bill amount for their city.
select p.patient_id,b.amount,a.appointment_id from appointments a
inner join patients p on a.patient_id=p.patient_id
inner join billing b on b.appointment_id=a.appointment_id
where amount > (select avg(b2.amount)
    from patients p2
    inner join appointments a2
    on p2.patient_id = a2.patient_id
    inner join billing b2
    on a2.appointment_id = b2.appointment_id
    where p2.city = p.city);


-- 108:Find patients who registered in the same month as the most recent patient.
select * from patients where
month(registration_date) =(
select month(max(registration_date)) from patients
);

-- 109:Find doctors whose name appears only once in the Doctors table
select * from doctors where 
name in (
select distinct name  from doctors
 group by name having count(*)=1);
 
 -- 110:find patients who have an appointment but are not present in the Billing table (NOT IN).
 select  p.name,p.patient_id from patients p
 join appointments  a on
 a.patient_id=p.patient_id not in (
 select appointment_id from billing
 );
 
 -- 111:Find the youngest patient in each city
 select * from patients where age=
 (select min(age) from patients);
 
 -- 112:Find all bills higher than the average bill amount of their respective department.
 select * from billing where amount =(
 select max(amount) from billing  ); -- wrong beacuse my logic
 
select
    b.bill_id,
    b.amount,
    de.department_name
from billing b
inner join appointments a
on b.appointment_id = a.appointment_id
inner join doctors d
on a.doctor_id = d.doctor_id
inner join departments de
on d.department_id = de.department_id
where b.amount >
(
    select avg(b2.amount)
    from billing b2
    inner join appointments a2
    on b2.appointment_id = a2.appointment_id
    inner join doctors d2
    on a2.doctor_id = d2.doctor_id
    where d2.department_id = d.department_id
);


-- 113:Find the appointment_id with no corresponding prescription (NOT EXISTS).  
select *
from appointments a
where not exists
(
    select *
    from prescriptions p
    where p.appointment_id = a.appointment_id
);

-- 114:Find all doctors who have treated at least one patient older than 50.
select
    doctor_id,
    name,
    specialization
from doctors
where doctor_id in
(
    select doctor_id
    from appointments
    where patient_id in
    (
        select patient_id
        from patients
        where age > 50
    )
);

-- 115:Find departments where the average bill is above the overall average bill (using HAVING with subquery).
select
    d.department_id,
    de.department_name,
    avg(b.amount) as average_bill
from departments de
inner join doctors d
on de.department_id = d.department_id
inner join appointments a
on d.doctor_id = a.doctor_id
inner join billing b
on a.appointment_id = b.appointment_id
group by d.department_id, de.department_name
having avg(b.amount) >
(
    select avg(amount)
    from billing
);


-- views
-- 116:create a view Doctor_Appointment_Count showing each doctor's name and their total number of appointments.
create view doctor_appointment_count as
select
    d.name as doctor_name,
    count(a.appointment_id) as total_appointments
from doctors d
left join appointments a
on d.doctor_id = a.doctor_id
group by d.doctor_id, d.name;

select * from doctor_appointment_count;


-- 117:Create a view Unpaid_Bills_Report showing patient name, doctor name, and unpaid amount.
create view unpaidbil1 as 
select p.name as patientname,d.name,b.amount,b.payment_status
from patients p inner join 
appointments a on 
p.patient_id=a.patient_id
inner join doctors d
on d.doctor_id = a.doctor_id
join billing b
    on b.appointment_id = a.appointment_id
     where b.payment_status="unpaid";
    
    select * from unpaidbil1;
    
    -- 118:Create a view Doctor_Revenue_Summary showing doctor name, department, and total revenue generated.
   create view doctor_revenue_summary as
select
    d.name as doctor_name,
    de.department_name as department,
    sum(b.amount) as total_revenue
from doctors d
inner join departments de
on d.department_id = de.department_id
inner join appointments a
on d.doctor_id = a.doctor_id
inner join billing b
on a.appointment_id = b.appointment_id
group by d.doctor_id, d.name, de.department_name;

select * from doctor_revenue_summary;


-- 119:Create a view Patient_Full_History combining patient details, appointments, and prescriptions.
create view fullhist as
select p.name,a.appointment_id,pre.prescription_id
from patients p join
appointments a 
on a.patient_id=p.patient_id
join prescriptions    pre
on a.appointment_id = pre.appointment_id;

select * from fullhist;


-- 120:Create a view Department_Stats showing department name, total doctors, and total patients treated.
create view department_stats as
select
    de.department_name,
    count(distinct d.doctor_id) as total_doctors,
    count(distinct a.patient_id) as total_patients_treated
from departments de
left join doctors d
on de.department_id = d.department_id
left join appointments a
on d.doctor_id = a.doctor_id
group by de.department_id, de.department_name;

-- 121:Create a view Patient_Basic_Info showing only patient_id, name, and city from the Patients table 
create view patienfull as select * from patient;

show full tables where table_type='VIEW';

-- 122:Create a view Doctor_Contact_View showing doctor name, specialization, and phone number.
create view doctorview as
select name,specialization,phone from doctors;

select * from doctorview;

-- 123:Create a view Appointment_Summary showing patient name, doctor name, department name, and appointment date
create view Appointment_Summary as
select d.name,de.department_name, p.name as patientname,a.appointment_date
from patients p join
appointments a
on p.patient_id=a.patient_id
join doctors d
on a.doctor_id=d.doctor_id 
join departments de on 
de.department_id=d.department_id;

select * from Appointment_Summary;

-- 124:Create a view High_Value_Bills showing all bills with amount > 1000, joined with patient name.
create view high_value_bills as
select
    b.bill_id,
    b.amount,
    p.name as patient_name
from billing b
inner join appointments a
on b.appointment_id = a.appointment_id
inner join patients p
on a.patient_id = p.patient_id
where b.amount > 1000;
select * from high_value_bills;


-- 125:Create a view Prescription_Details_View showing patient name, doctor name, medicine name, and dosage together.
create view prescriptio as
select d.name,p.name as patinetsname,
pre.medicine_name,pre.dosage
from patients p 
join appointments a 
on p.patient_id=a.patient_id
join doctors d 
on a.doctor_id=d.doctor_id 
join prescriptions pre
on pre.appointment_id = a.appointment_id;


select * from prescriptio;


-- 126:Create a view Senior_Patients_View showing only patients aged above 60.
create view Senior_Patients_View1 as
select * from patients where age >=60;

select * from Senior_Patients_View1;


-- 127:Create a view New_Patients_View showing patients who registered in the last 30 days 
create view New_Patients_View as 
select * from patients where registration_date >=curdate() -interval 30 day;

select * from  New_Patients_View;


-- 128:Create a view Doctor_Workload_View showing doctor name and count of 'Scheduled' appointments only.
create view Doctor_Workload_View as
select d.name, a.status,count(a.status) from doctors d
join appointments a 
on a.doctor_id=d.doctor_id
where a.status="scheduled" 
group by d.name;

select * from Doctor_Workload_View;


-- 129:Create a view Monthly_Appointment_Count showing month name and total number of appointments in that month
select monthname(appointment_date),count(*) from 
appointments
group by month(appointment_date), monthname(appointment_date);

-- 130:Create a view Unassigned_Doctors_View showing doctors who have zero appointments
create view unassigned_doctor_view as
select
    d.doctor_id,
    d.name as doctor_name,
    d.specialization,
    a.appointment_id
from doctors d
left join appointments a
on d.doctor_id = a.doctor_id
where a.appointment_id is not null;

select * from unassigned_doctor_view;

-- 131:create a view Full_Patient_Record combining Patients, Appointments, Prescriptions, and Billing into one wide view — then test its performance with EXPLAIN.
create view full_patient_record as
select
    p.patient_id,
    p.name as patient_name,
    p.age,
    p.gender,
    p.city,
    p.registration_date,
    a.appointment_id,
    a.appointment_date,
    a.status,
    pr.prescription_id,
    pr.medicine_name,
    pr.dosage,
    b.bill_id,
    b.amount,
    b.payment_status,
    b.bill_date
from patients p
left join appointments a
on p.patient_id = a.patient_id
left join prescriptions pr
on a.appointment_id = pr.appointment_id
left join billing b
on a.appointment_id = b.appointment_id;

select * from full_patient_record;

-- imp:explain:show structrie
explain
select *
from full_patient_record;

-- 132:rite a query to drop the view .
drop view Doctor_Workload_View;


-- indexing
-- 133:Write a query to create a simple index on the appointment_date column in the Appointments table 
create index idx_appointment_date
on appointments(appointment_date);

select *
from appointments
where appointment_date = '2024-04-12';


-- 134:Write a query to create a unique index on the email column in the Patients table
create unique index idx_emai
on patients(registration_date);

select * from patients ;
show index from patients;


-- 135:Write a query to create a composite index on (doctor_id, appointment_date) in the Appointments table
create index idx_ad
on appointments(doctor_id, appointment_date);

select *
from appointments
where doctor_id = 5;

-- 136:Write a query to create a composite index on (patient_id, status) in Appointments
create index idx_pa
on appointments(patient_id, status);

-- 137:Write a query to create a full-text index on medicine_name in the Prescriptions table
create fulltext index idx_medicine_name
on prescriptions(medicine_name);

select *
from prescriptions
where medicine_name like '%para%';

-- 138:Write a query to drop the index on appointment_date from the Appointments table.
drop index idx_appointment_date
on appointments;

-- triggers
-- 139:Write a trigger that automatically inserts a row into Billing with a default amount whenever an appointment's status is updated to 'Completed'.
delimiter //
create trigger a_insert
after insert on billing
for each row
begin
    if new.payment_status = 'completed' then

insert into billing values
(new.appointment_id,500,"unpaid",curdate());
end if;
end //
delimiter ;

update billing
set payment_status = 'unpaid'
where appointment_id = 50;

-- select * from billing;



-- 140:Write a trigger that prevents inserting an appointment for a patient who already has a 'Schedu
-- led' appointment with the same doctor on the same date
delimiter //
create trigger be_insert
before insert on appointments
for each row
begin
if exists(
		
        select 1
        from appointments
        where patient_id = new.patient_id
        and doctor_id = new.doctor_id
        and appointment_date = new.appointment_date
        and status = 'scheduled'

)
then signal sqlstate '45000'
set message_text="alredy inserts";
end if;

end //
delimiter ;
show triggers;


-- 141:Write a trigger that prevents deleting a patient who has existing appointments
delimiter //
create trigger del
before delete on appointments
for each row
begin
 
 if exists
    (
 select 1
        from appointments
        where patient_id = old.patient_id           
           
	)     
then signal sqlstate '45000'
set message_text='patient cannt be deleted';
end if;


end //
delimiter ;

delete from patients
where patient_id = 50;

-- 142:Write a trigger that logs every update made to the Billing table into an Audit_Log table.

create table audit_log (
    audit_id int primary key auto_increment,
    bill_id int,
    old_amount decimal(8,2),
    new_amount decimal(8,2),
    old_payment_status varchar(20),
    new_payment_status varchar(20),
    action_time datetime
);

delimiter //
create trigger billing_update_audit
after update on billing
for each row
begin
insert into audit_log(
bill_id,
old_amount,
  new_amount ,
    old_payment_status,
    new_payment_status ,
    action_time 
) values
(
old.bill_id,
old.amount,
new_amount ,
    old_payment_status,
    new_payment_status ,
    now()
);

end //
delimiter ;
update billing
set amount = 1500,
    payment_status = 'paid'
where bill_id = 50;
select * from audit_log;

