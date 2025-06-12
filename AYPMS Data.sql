INSERT INTO SoilData VALUES
(1001, 'Dhaka', 'High Nitrogen, Medium Phosphorus', 'Rice, Wheat'),
(1002, 'Chittagong', 'High Phosphorus, Low Potassium', 'Tea, Rice'),
(1003, 'Sylhet', 'High Organic Matter', 'Tea, Vegetables'),
(1004, 'Rajshahi', 'Low Nitrogen, Medium Phosphorus', 'Mango, Wheat'),
(1005, 'Khulna', 'Saline Soil', 'Shrimp, Rice'),
(1006, 'Barisal', 'Acidic Soil', 'Rice, Jute'),
(1007, 'Rangpur', 'High Potassium', 'Potato, Rice'),
(1008, 'Mymensingh', 'Medium Nitrogen', 'Vegetables, Rice'),
(1009, 'Comilla', 'Medium Phosphorus', 'Jute, Rice'),
(1010, 'Noakhali', 'Sandy Loam', 'Rice, Vegetables');

INSERT INTO WeatherData VALUES
(1101, '2024-01-01', 25.50, 70.20, 15.00, 5.10, 'Dhaka'),
(1102, '2024-01-02', 26.00, 72.00, 12.50, 4.50, 'Chittagong'),
(1103, '2024-01-03', 24.00, 68.00, 20.00, 6.00, 'Sylhet'),
(1104, '2024-01-04', 30.00, 65.00, 5.00, 4.00, 'Rajshahi'),
(1105, '2024-01-05', 29.00, 80.00, 25.00, 3.50, 'Khulna'),
(1106, '2024-01-06', 28.50, 78.00, 18.00, 4.20, 'Barisal'),
(1107, '2024-01-07', 22.00, 65.50, 30.00, 5.00, 'Rangpur'),
(1108, '2024-01-08', 27.00, 70.00, 10.00, 5.50, 'Mymensingh'),
(1109, '2024-01-09', 26.50, 72.50, 15.00, 4.80, 'Comilla'),
(1110, '2024-01-10', 25.00, 75.00, 12.00, 5.10, 'Noakhali');

INSERT INTO CropData VALUES
(10001, 'Rice', 'All Season', 3.50, 1001),
(10002, 'Tea', 'Winter', 1.80, 1002),
(10003, 'Mango', 'Summer', 5.00, 1004),
(10004, 'Wheat', 'Rainy', 2.50, 1001),
(10005, 'Potato', 'Winter', 4.00, 1007),
(10006, 'Jute', 'Monsoon', 2.80, 1006),
(10007, 'Shrimp', 'Rainy', 1.20, 1005),
(10008, 'Vegetables', 'All Seasons', 3.00, 1008),
(10009, 'Banana', 'Summer', 6.00, 1010),
(10010, 'Tomato', 'Winter', 2.20, 1003);

INSERT INTO FarmerProfile VALUES
(1001, 'Abdul Karim', 'Dhaka', '01812345678'),
(1002, 'Hasina Begum', 'Sylhet', '01798765432'),
(1003, 'Mizanur Rahman', 'Chittagong', '01987654321'),
(1004, 'Fatema Khatun', 'Rajshahi', '01612347890'),
(1005, 'Jamal Uddin', 'Khulna', '01567894321'),
(1006, 'Ayesha Sultana', 'Barisal', '01823456789'),
(1007, 'Rafiq Hossain', 'Dhaka', '01734567892'), 
(1008, 'Nasima Akter', 'Sylhet', '01923456780'), 
(1009, 'Kabir Chowdhury', 'Rajshahi', '01656789012'),
(1010, 'Shahidul Islam', 'Khulna', '01845678905'),
(1011, 'Abdullah Jubayer', 'Barisal', '01812335578'),
(1012, 'Sheikh Hasina', 'Dhaka', '01798755432'),
(1013, 'Nadeem Rahman', 'Sylhet', '01985554321'),
(1014, 'Shuhurat Khatun', 'Chittagong', '01611367890'),
(1015, 'Jamal Jitu', 'Rajshahi', '01567894021'),
(1016, 'Afia Sultana', 'Khulna', '01823326789'),
(1017, 'Rakib Khan', 'Dhaka', '01734583892'),
(1018, 'Asif Nazim', 'Sylhet', '01923556580'),
(1019, 'Kabir Singh', 'Chittagong', '01656499012'),
(1020, 'Junaid Rafi', 'Barisal', '01843670901');



INSERT INTO Loan VALUES
(10, 1001, 50000.00, 7.5, '2023-01-01', '2026-01-01', 'Active'),
(20, 1002, 100000.00, 6.5, '2022-01-01', '2025-01-01', 'Active'),
(30, 1006, 75000.00, 7.0, '2023-06-01', '2026-06-01', 'Completed'),
(40, 1004, 60000.00, 8.0, '2024-01-01', '2027-01-01', 'Pending'),
(50, 1009, 120000.00, 6.5, '2023-03-01', '2028-03-01', 'Active');

INSERT INTO Budget VALUES
(60101, 1001, 10001, 10, 2023, 30000.00, 28000.00, 40000.00, 12000.00),
(60102, 1002, 10002, 20, 2023, 50000.00, 48000.00, 60000.00, 12000.00),
(60103, 1013, 10003, NULL, 2023, 45000.00, 43000.00, 55000.00, 12000.00),
(60104, 1004, 10004, 40, 2023, 35000.00, 37000.00, 45000.00, 8000.00),
(60105, 1015, 10008, 50, 2023, 40000.00, 42000.00, 60000.00, 18000.00),
(60106, 1016, 10006, NULL, 2023, 20000.00, 22000.00, 35000.00, 13000.00),
(60107, 1007, 10001, NULL, 2023, 45000.00, 47000.00, 65000.00, 18000.00),
(60108, 1018, 10008, 10, 2023, 30000.00, 31000.00, 40000.00, 9000.00),
(60109, 1009, 10009, NULL, 2023, 50000.00, 52000.00, 70000.00, 18000.00),
(60110, 1019, 10010, 30, 2023, 20000.00, 21000.00, 30000.00, 9000.00);

INSERT INTO YieldData VALUES
(401, 'Dhaka', 10001, 2023, 3.60),
(402, 'Sylhet', 10002, 2023, 1.75),
(403, 'Chittagong', 10002, 2023, 1.90),
(404, 'Rajshahi', 10003, 2023, 5.10),
(405, 'Khulna', 10007, 2023, 1.30),
(406, 'Barisal', 10006, 2023, 2.85),
(407, 'Rangpur', 10005, 2023, 4.10),
(408, 'Mymensingh', 10008, 2023, 3.05),
(409, 'Comilla', 10006, 2023, 2.90),
(410, 'Noakhali', 10001, 2023, 3.70);


INSERT INTO Recommendations VALUES
(1201, 1001, 10001, '2024-01-15', 'Aman'),
(1202, 1002, 10002, '2024-02-01', 'Kharif'),
(1203, 1003, 10003, '2024-03-10', 'Summer'),
(1204, 1004, 10004, '2024-04-05', 'Rabi'),
(1205, 1005, 10007, '2024-05-20', 'Rainy'),
(1206, 1006, 10006, '2024-06-15', 'Monsoon'),
(1207, 1007, 10005, '2024-07-10', 'Winter'),
(1208, 1008, 10008, '2024-08-25', 'All Seasons'),
(1209, 1009, 10009, '2024-09-12', 'Summer'),
(1210, 1010, 10010, '2024-10-18', 'Winter');


INSERT INTO Alerts VALUES
(40401, 1001, 'Weather Warning', '2024-01-15'),
(40402, 1002, 'Fertilizer Usage Reminder', '2024-02-01'),
(40403, 1003, 'Irrigation Alert', '2024-03-10'),
(40404, 1014, 'Pesticide Application', '2024-04-05'),
(40405, 1005, 'Crop Rotation Suggestion', '2024-05-20'),
(40406, 1016, 'Market Price Update', '2024-06-15'),
(40407, 1007, 'Flood Risk Warning', '2024-07-10'),
(40408, 1018, 'Drought Alert', '2024-08-25'),
(40409, 1009, 'Harvest Time Reminder', '2024-09-12'),
(40410, 1010, 'Pest Infestation Alert', '2024-10-18');


INSERT INTO FertilizerData VALUES
(801, 'Urea', 'Nitrogen', 12.50),
(802, 'TSP', 'Phosphorus', 25.00),
(803, 'MOP', 'Potassium', 18.00),
(804, 'DAP', 'Nitrogen-Phosphorus', 22.50),
(805, 'Gypsum', 'Sulfur', 15.00),
(806, 'Zinc Sulphate', 'Micronutrient', 20.00),
(807, 'Compost', 'Organic', 10.00),
(808, 'Vermicompost', 'Organic', 15.00),
(809, 'Biofertilizer', 'Microbial', 30.00),
(810, 'Lime', 'pH Balancer', 8.00);


INSERT INTO FertilizerUsage VALUES
(7001, 10001, 801, 50.00, '2024-01-10'),
(7002, 10002, 802, 30.00, '2024-02-05'),
(7003, 10006, 803, 40.00, '2024-03-15'),
(7004, 10008, 804, 35.00, '2024-04-20'),
(7005, 10005, 805, 25.00, '2024-05-10'),
(7006, 10001, 806, 15.00, '2024-06-15'),
(7007, 10003, 807, 20.00, '2024-07-20'),
(7008, 10008, 808, 25.00, '2024-08-05'),
(7009, 10009, 809, 30.00, '2024-09-15'),
(7010, 10010, 810, 20.00, '2024-10-10');


INSERT INTO PestControl VALUES
(901, 10001, 'Chlorpyrifos', '2024-01-12', 200.00),
(902, 10002, 'Imidacloprid', '2024-02-20', 250.00),
(903, 10003, 'Carbaryl', '2024-03-10', 300.00),
(904, 10004, 'Lambda-cyhalothrin', '2024-04-18', 180.00),
(905, 10003, 'Deltamethrin', '2024-05-22', 220.00),
(906, 10006, 'Neem Oil', '2024-06-14', 150.00),
(907, 10003, 'Spinosad', '2024-07-30', 280.00),
(908, 10008, 'Malathion', '2024-08-16', 300.00),
(909, 10004, 'Thiacloprid', '2024-09-25', 270.00),
(910, 10010, 'Cypermethrin', '2024-10-11', 230.00);

INSERT INTO Agronomist VALUES
(1201, 'Dr. Mahmud Ali', 'Soil Specialist', '01712345678', 'Dhaka'),
(1202, 'Dr. Parveen Sultana', 'Crop Scientist', '01898765432', 'Sylhet'),
(1203, 'Dr. Rahman Khan', 'Weather Analyst', '01987654321', 'Chittagong'),
(1204, 'Dr. Fatima Rahim', 'Irrigation Expert', '01612347890', 'Rajshahi'),
(1205, 'Dr. Jamil Ahmed', 'Fertilizer Advisor', '01734567892', 'Khulna');



INSERT INTO Appointment VALUES
(301, 1001, 1201, '2024-01-20'),
(302, 1020, 1202, '2024-02-15'),
(303, 1003, 1203, '2024-03-12'),
(304, 1014, 1204, '2024-04-25'),
(305, 1005, 1205, '2024-05-18'),
(306, 1016, 1201, '2024-06-10'),
(307, 1007, 1202, '2024-07-14'),
(308, 1018, 1203, '2024-08-20'),
(309, 1009, 1204, '2024-09-16'),
(310, 1010, 1205, '2024-10-05');



