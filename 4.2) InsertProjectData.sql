use Yao_Li_6210;

INSERT INTO Project.MembershipStatus (MembershipStatusDescription)
VALUES 
('Active - Basic Plan'),
('Active - Premium Plan'),
('Active - Gold Member'),
('Active - Corporate Account'),
('Cancelled - User Requested'),
('Cancelled - Non-Payment');

--select * from Project.MembershipStatus;

-- Temporary Memberships
INSERT INTO Project.MembershipStatus (MembershipStatusDescription, MembershipStartDate, MembershipEndDate)
VALUES 
('Active - Black Friday Special', '2023-11-20', '2023-12-05'),
('Active - Christmas Sales', '2023-12-01', '2024-01-10'),
('Active - New Year Special', '2024-01-01', '2024-02-15'),
('Expired - Trial Period', '2022-05-01', '2023-05-01'),
('Expired - Holiday Promotion', '2023-01-01', '2023-06-01'),
('Cancelled - Promotional Termination', '2023-03-15', '2023-09-15');

--select * from Project.MembershipStatus;


INSERT INTO Project.Customer (FirstName, LastName, DateOfBirth, Email, PhoneNumber, DLNumber, BillingAddress, MembershipStatusID)
VALUES 
('John', 'Doe', '1990-05-20', 'john.doe@example.com', '123-456-7890', 'DL12345', '123 Main St, Seattle, WA', 1),
('Jane', 'Smith', '1985-09-15', 'jane.smith@example.com', '321-654-0987', 'DL67890', '456 Oak St, Bellevue, WA', 2),
('Alice', 'Johnson', '2000-03-12', 'alice.johnson@example.com', '555-123-4567', 'DL34567', '789 Pine St, Tacoma, WA', 3),
('Bob', 'Brown', '1995-07-25', 'bob.brown@example.com', '777-888-9999', 'DL78901', '101 Maple St, Redmond, WA', 1),
('Eve', 'Davis', '1998-12-30', 'eve.davis@example.com', '666-555-4444', 'DL45678', '202 Cedar St, Kent, WA', 4),
('Sam', 'Wilson', '1992-11-10', 'sam.wilson@example.com', '999-111-2222', 'DL11223', '303 Birch St, Everett, WA', 5),
('Chris', 'Taylor', '1988-08-08', 'chris.taylor@example.com', '888-777-6666', 'DL22334', '404 Elm St, Olympia, WA', 6),
('Nina', 'Lopez', '1994-04-04', 'nina.lopez@example.com', '444-333-2222', 'DL33445', '505 Fir St, Seattle, WA', 7),
('David', 'King', '1983-06-17', 'david.king@example.com', '123-321-4567', 'DL44556', '606 Ash St, Bellevue, WA', 8),
('Laura', 'Martinez', '1996-09-23', 'laura.martinez@example.com', '555-999-8888', 'DL55667', '707 Pine St, Tacoma, WA', 9);


INSERT INTO Project.Store (StoreName, Address, City, State, Zipcode, PhoneNumber)
VALUES 
('Downtown Rentals', '123 Center St', 'Seattle', 'WA', '98101', '206-555-0199'),
('Eastside Rentals', '456 Market St', 'Bellevue', 'WA', '98004', '425-555-0123'),
('South Sound Rentals', '789 Broadway Ave', 'Tacoma', 'WA', '98402', '253-555-0456'),
('North Rentals', '101 River Rd', 'Everett', 'WA', '98201', '360-555-0789'),
('Westside Rentals', '202 Coastline Dr', 'Olympia', 'WA', '98501', '360-555-1234'),
('Capital Rentals', '808 Capitol Way', 'Olympia', 'WA', '98501', '360-555-5678'),
('Uptown Rentals', '909 Hill St', 'Redmond', 'WA', '98052', '425-555-9876'),
('Central Rentals', '606 Main St', 'Kent', 'WA', '98032', '253-555-4567'),
('Seaside Rentals', '111 Beach Ave', 'Edmonds', 'WA', '98020', '425-555-3210'),
('Midtown Rentals', '222 King St', 'Seattle', 'WA', '98104', '206-555-6789');


INSERT INTO Project.Staff (FirstName, LastName, Position, Email, PhoneNumber, ManagerID, StoreID)
VALUES 
('Mark', 'Lee', 'General Manager', 'mark.lee@example.com', '111-222-3333', NULL, 1),
('Susan', 'Adams', 'Assistant Manager', 'susan.adams@example.com', '444-555-6666', 1, 1),
('Tom', 'White', 'Supervisor', 'tom.white@example.com', '777-888-9999', 2, 2),
('Kate', 'Green', 'Sales Associate', 'kate.green@example.com', '222-333-4444', 3, 2),
('Jim', 'Brown', 'Technician', 'jim.brown@example.com', '555-666-7777', 2, 3),
('Anna', 'Taylor', 'Receptionist', 'anna.taylor@example.com', '888-999-0000', 2, 4),
('John', 'Davis', 'Mechanic', 'john.davis@example.com', '123-456-7890', 5, 5),
('Mia', 'Clark', 'Supervisor', 'mia.clark@example.com', '321-654-0987', 3, 6),
('Noah', 'Lopez', 'Security', 'noah.lopez@example.com', '456-789-1234', 4, 7),
('Liam', 'Martinez', 'Cleaner', 'liam.martinez@example.com', '987-654-3210', 3, 8),
('Steve', 'Johnson', 'Accountant', 'steve.johnson@example.com', '555-111-2222', 1, 1),
('Rachel', 'Lee', 'Marketing Manager', 'rachel.lee@example.com', '666-222-3333', 1, 2),
('David', 'Williams', 'IT Specialist', 'david.williams@example.com', '777-444-5555', 3, 3),
('Emma', 'Davis', 'HR Manager', 'emma.davis@example.com', '888-555-6666', 1, 4),
('Sophia', 'Miller', 'Customer Service Rep', 'sophia.miller@example.com', '999-666-7777', 2, 5),
('Oliver', 'Brown', 'Cashier', 'oliver.brown@example.com', '222-111-3333', 4, 6),
('Lucas', 'Wilson', 'Inventory Manager', 'lucas.wilson@example.com', '333-444-5555', 2, 7),
('Charlotte', 'Anderson', 'Sales Representative', 'charlotte.anderson@example.com', '444-333-2222', 3, 8),
('James', 'Harris', 'Transport Manager', 'james.harris@example.com', '555-888-9999', 1, 9),
('Amelia', 'Walker', 'HR Assistant', 'amelia.walker@example.com', '666-777-8888', 14, 10);


INSERT INTO Project.CarStatus (CarStatusDescription)
VALUES 
('Available'),
('Rented'),
('Under Maintenance'),
('Reserved'),
('Retired'),
('Cleaned'),
('Inspected'),
('Damaged'),
('Waiting Approval'),
('Out of Service');

insert into Project.Car (Make, Model, Year, VIN, PlateNumber, Mileage, DailyRate, CarStatusID, StoreID)
values 
('Toyota', 'Camry', 2020, '1HGCM82633A123456', 'ABC123', 10000, 55.00, 1, 1),
('Honda', 'Civic', 2021, '1HGFA16526L123456', 'DEF456', 12000, 50.00, 1, 1),
('Ford', 'Focus', 2019, '1FTSW21R08EB12345', 'GHI789', 15000, 60.00, 1, 2),
('Chevrolet', 'Malibu', 2021, '1G1ZT51826F123456', 'JKL123', 18000, 65.00, 1, 2),
('Nissan', 'Altima', 2022, '2HGCM82633A654321', 'MNO456', 2000, 58.00, 1, 3),
('Hyundai', 'Sonata', 2020, '5YJSA1E26GF654321', 'PQR789', 9000, 70.00, 1, 3),
('Kia', 'Optima', 2019, 'JHMCM56457C123456', 'STU123', 25000, 55.00, 1, 1),
('BMW', '3 Series', 2021, 'WBA3A5C59FF654321', 'VWX456', 8000, 90.00, 1, 2),
('Mercedes', 'C-Class', 2020, 'WDDGF8BB0BF123456', 'YZA789', 5000, 95.00, 1, 3),
('Audi', 'A4', 2018, 'WAUDF78E57A123456', 'BCD123', 16000, 85.00, 1, 1),
('Tesla', 'Model 3', 2022, '5YJ3E1EA7KF654321', 'EFG456', 4000, 100.00, 1, 1),
('Volkswagen', 'Passat', 2019, 'WVWG7A7CX6P123456', 'HIJ789', 13000, 60.00, 1, 2),
('Mazda', '6', 2021, 'JM1GL1V565156431', 'KLM123', 7000, 65.00, 1, 3),
('Subaru', 'Legacy', 2020, '4S3BL676866123456', 'NOP456', 11000, 70.00, 1, 1),
('Jeep', 'Cherokee', 2019, '1J4GR48KX7C654321', 'QRS789', 9000, 80.00, 1, 2),
('GMC', 'Terrain', 2021, '2GKFLTEK6F1212345', 'TUV123', 6000, 75.00, 1, 1),
('Volvo', 'XC60', 2022, 'YV1RS592862345678', 'WXY456', 3000, 95.00, 1, 2),
('Lexus', 'RX 350', 2020, '2T2GK31U87C123456', 'ZAB789', 7000, 100.00, 1, 3),
('Porsche', 'Macan', 2021, 'WP1AB2A55FL123456', 'CDE123', 2000, 150.00, 1, 3),
('Jaguar', 'F-Pace', 2019, 'SADCL2EV4KA123456', 'FGH456', 5000, 140.00, 1, 1),
('Infiniti', 'QX50', 2022, 'JN1BJ0HR7GM123456', 'IJK789', 1000, 130.00, 1, 2),
('Mitsubishi', 'Outlander', 2021, 'JA4AD3A39FZ123456', 'LMN123', 15000, 85.00, 1, 1),
('Cadillac', 'XT5', 2020, '1GYKNDRS4GZ123456', 'OPQ456', 4000, 120.00, 1, 2),
('Acura', 'MDX', 2019, '5FRYD3H55GB123456', 'RST789', 8000, 110.00, 1, 3),
('Lincoln', 'Navigator', 2021, '5LMFU28R3XJ123456', 'UVW123', 10000, 150.00, 1, 3),
('Buick', 'Enclave', 2022, '5GAKRBKD9GJ123456', 'XYZ456', 6000, 90.00, 1, 1),
('Chrysler', '300', 2020, '2C3CCABG8JH123456', 'ABC789', 9000, 80.00, 1, 2),
('Dodge', 'Durango', 2019, '1C4RDHDG4FC123456', 'DEF123', 14000, 75.00, 1, 3),
('Land Rover', 'Discovery', 2021, 'SALCR2BGXKH123456', 'GHI456', 3000, 160.00, 1, 2),
('Genesis', 'GV80', 2020, 'KMUHC8AEXNU123456', 'JKL789', 1000, 170.00, 1, 3);

INSERT INTO Project.CarRentalStatus (CarRentalStatusDescription)
VALUES 
('Pending'),
('Confirmed'),
('Picked Up'),
('Returned'),
('Cancelled'),
('In Progress'),
('Awaiting Payment'),
('Checked Out');



INSERT INTO Project.CarRentalReview (Rating, ReviewText, ReviewDate)
VALUES 
(5, 'Excellent service and clean vehicle!', '2023-10-15'),
(4, 'Good experience, but car had minor issues.', '2023-09-20'),
(3, 'Average service. Could be better.', '2023-08-10'),
(2, 'Unhappy with the condition of the car.', '2023-07-05'),
(1, 'Terrible experience. Would not recommend.', '2023-06-12'),
(5, 'Fantastic! Everything was smooth.', '2023-11-05'),
(4, 'Good value for the price.', '2023-10-22'),
(3, 'Neutral experience.', '2023-09-18'),
(4, 'Friendly staff and easy process.', '2023-08-30'),
(5, 'Loved the luxury car options.', '2023-07-25');


INSERT INTO Project.CarRental (StaffID, CarID, StoreID, CustomerID, RentalStartDate, RentalEndDate, TotalAmount, CarRentalStatusID, CarRentalReviewID)
VALUES
(1, 1, 1, 3, '2024-11-01', '2024-11-05', 200.00, 1, NULL),
(2, 2, 1, 7, '2024-11-03', '2024-11-07', 220.00, 1, NULL),
(3, 3, 2, 5, '2024-11-04', '2024-11-08', 180.00, 2, NULL),
(4, 4, 2, 8, '2024-11-05', '2024-11-10', 240.00, 1, NULL),
(5, 5, 3, 1, '2024-11-06', '2024-11-11', 300.00, 3, NULL),
(6, 6, 3, 10, '2024-11-07', '2024-11-12', 230.00, 1, NULL),
(7, 7, 4, 6, '2024-11-08', '2024-11-13', 270.00, 2, NULL),
(8, 8, 4, 4, '2024-11-09', '2024-11-14', 250.00, 1, NULL),
(9, 9, 5, 2, '2024-11-10', '2024-11-15', 280.00, 1, NULL),
(10, 10, 5, 9, '2024-11-11', '2024-11-16', 260.00, 1, NULL),
(11, 1, 1, 7, '2024-11-12', '2024-11-17', 220.00, 2, NULL),
(12, 2, 1, 1, '2024-11-13', '2024-11-18', 210.00, 4, NULL),
(13, 3, 2, 3, '2024-11-14', '2024-11-19', 240.00, 1, NULL),
(14, 4, 2, 5, '2024-11-15', '2024-11-20', 200.00, 2, NULL),
(15, 5, 3, 9, '2024-11-16', '2024-11-21', 260.00, 1, NULL),
(16, 6, 3, 2, '2024-11-17', '2024-11-22', 230.00, 1, NULL),
(17, 7, 4, 10, '2024-11-18', '2024-11-23', 270.00, 2, NULL),
(18, 8, 4, 8, '2024-11-19', '2024-11-24', 280.00, 1, NULL),
(19, 9, 5, 6, '2024-11-20', '2024-11-25', 290.00, 5, NULL),
(20, 10, 5, 4, '2024-11-21', '2024-11-26', 250.00, 1, NULL),
(1, 1, 1, 5, '2024-11-22', '2024-11-27', 230.00, 2, NULL),
(2, 2, 1, 7, '2024-11-23', '2024-11-28', 200.00, 1, NULL),
(3, 3, 2, 8, '2024-11-24', '2024-11-29', 210.00, 2, NULL),
(4, 4, 2, 1, '2024-11-25', '2024-11-30', 240.00, 1, NULL),
(5, 5, 3, 3, '2024-11-26', '2024-12-01', 250.00, 1, NULL),
(6, 6, 3, 6, '2024-11-27', '2024-12-02', 270.00, 2, NULL),
(7, 7, 4, 4, '2024-11-28', '2024-12-03', 260.00, 1, NULL),
(8, 8, 4, 9, '2024-11-29', '2024-12-04', 230.00, 2, NULL),
(9, 9, 5, 2, '2024-11-30', '2024-12-05', 220.00, 1, NULL),
(10, 10, 5, 10, '2024-12-01', '2024-12-06', 210.00, 2, NULL),
(11, 1, 1, 8, '2024-12-02', '2024-12-07', 230.00, 1, NULL),
(12, 2, 1, 3, '2024-12-03', '2024-12-08', 240.00, 1, NULL),
(13, 3, 2, 5, '2024-12-04', '2024-12-09', 220.00, 2, NULL),
(14, 4, 2, 7, '2024-12-05', '2024-12-10', 210.00, 1, NULL),
(15, 5, 3, 1, '2024-12-06', '2024-12-11', 250.00, 1, NULL),
(16, 6, 3, 9, '2024-12-07', '2024-12-12', 260.00, 2, NULL),
(17, 7, 4, 6, '2024-12-08', '2024-12-13', 270.00, 1, NULL),
(18, 8, 4, 2, '2024-12-09', '2024-12-14', 290.00, 2, NULL),
(19, 9, 5, 4, '2024-12-10', '2024-12-15', 300.00, 1, NULL),
(20, 10, 5, 3, '2024-12-11', '2024-12-16', 250.00, 2, NULL),
(1, 1, 1, 7, '2024-12-12', '2024-12-17', 220.00, 1, NULL),
(2, 2, 1, 5, '2024-12-13', '2024-12-18', 210.00, 2, NULL),
(3, 3, 2, 10, '2024-12-14', '2024-12-19', 230.00, 1, NULL),
(4, 4, 2, 6, '2024-12-15', '2024-12-20', 240.00, 1, NULL),
(5, 5, 3, 8, '2024-12-16', '2024-12-21', 250.00, 1, NULL),
(6, 6, 3, 1, '2024-12-17', '2024-12-22', 260.00, 2, NULL),
(7, 7, 4, 9, '2024-12-18', '2024-12-23', 270.00, 1, NULL),
(8, 8, 4, 5, '2024-12-19', '2024-12-24', 280.00, 2, NULL),
(9, 9, 5, 2, '2024-12-20', '2024-12-25', 290.00, 1, NULL),
(10, 10, 5, 4, '2024-12-21', '2024-12-26', 300.00, 2, NULL);
 


INSERT INTO Project.PaymentMethod (PaymentMethodDescription)
VALUES 
('Credit Card'),
('Debit Card'),
('Cash'),
('Check'),
('Gift Card');



INSERT INTO Project.PaymentStatus (PaymentStatusDescription)
VALUES 
('Pending'),
('Completed'),
('Failed'),
('Refunded'),
('In Progress'),
('Cancelled'),
('Awaiting Confirmation'),
('Overdue'),
('Paid'),
('Chargeback');

--select CarRentalId from Project.CarRental;
/*Error occurred during SQL query execution

Reason:
SQL Error [547] [23000]: The INSERT statement conflicted with the FOREIGN KEY constraint "FK__Payment__CarRent__4850AF91". The conflict occurred in database "Yao_Li_6210", table "Project.CarRental", column 'CarRentalID'.
*/ 

--select CarRentalID from Project.CarRental;

insert into Project.Payment (CarRentalID, ActualPaymentAmount, DiscountAmount, PaymentDate, PaymentDescription, PaymentMethodID, PaymentStatusID)
values
(1, 150.00, 50.00, '2024-11-01', 'Full payment', 1, 1),
(2, 180.00, 40.00, '2024-11-03', 'Full payment', 1, 1),
(3, 160.00, 20.00, '2024-11-04', 'Full payment', 2, 1),
(4, 200.00, 40.00, '2024-11-05', 'Full payment', 2, 1),
(5, 250.00, 50.00, '2024-11-06', 'Full payment', 3, 1),
(6, 210.00, 20.00, '2024-11-07', 'Full payment', 1, 1),
(7, 230.00, 40.00, '2024-11-08', 'Full payment', 2, 1),
(8, 240.00, 10.00, '2024-11-09', 'Full payment', 3, 1),
(9, 260.00, 20.00, '2024-11-10', 'Full payment', 1, 1),
(10, 230.00, 20.00, '2024-11-11', 'Full payment', 2, 1),
(11, 200.00, 20.00, '2024-11-12', 'Full payment', 1, 1),
(12, 210.00, 10.00, '2024-11-13', 'Full payment', 3, 1),
(13, 240.00, 10.00, '2024-11-14', 'Full payment', 1, 1),
(14, 180.00, 30.00, '2024-11-15', 'Full payment', 2, 1),
(15, 250.00, 10.00, '2024-11-16', 'Full payment', 3, 1),
(16, 220.00, 30.00, '2024-11-17', 'Full payment', 2, 1),
(17, 230.00, 10.00, '2024-11-18', 'Full payment', 3, 1),
(18, 250.00, 30.00, '2024-11-19', 'Full payment', 1, 1),
(19, 220.00, 30.00, '2024-11-20', 'Full payment', 2, 1),
(20, 210.00, 20.00, '2024-11-21', 'Full payment', 1, 1),
(21, 240.00, 40.00, '2024-11-22', 'Full payment', 3, 1),
(22, 230.00, 10.00, '2024-11-23', 'Full payment', 1, 1),
(23, 220.00, 20.00, '2024-11-24', 'Full payment', 2, 1),
(24, 200.00, 30.00, '2024-11-25', 'Full payment', 3, 1),
(25, 240.00, 20.00, '2024-11-26', 'Full payment', 1, 1),
(26, 230.00, 30.00, '2024-11-27', 'Full payment', 2, 1),
(27, 250.00, 40.00, '2024-11-28', 'Full payment', 3, 1),
(28, 260.00, 20.00, '2024-11-29', 'Full payment', 1, 1),
(29, 230.00, 10.00, '2024-11-30', 'Full payment', 2, 1),
(30, 220.00, 30.00, '2024-12-01', 'Full payment', 3, 1),
(31, 210.00, 20.00, '2024-12-02', 'Full payment', 1, 1),
(32, 240.00, 10.00, '2024-12-03', 'Full payment', 2, 1),
(33, 230.00, 40.00, '2024-12-04', 'Full payment', 3, 1),
(34, 200.00, 20.00, '2024-12-05', 'Full payment', 1, 1),
(35, 250.00, 10.00, '2024-12-06', 'Full payment', 2, 1),
(36, 220.00, 30.00, '2024-12-07', 'Full payment', 1, 1),
(37, 230.00, 40.00, '2024-12-08', 'Full payment', 3, 1),
(38, 240.00, 10.00, '2024-12-09', 'Full payment', 2, 1),
(39, 250.00, 30.00, '2024-12-10', 'Full payment', 1, 1),
(40, 260.00, 20.00, '2024-12-11', 'Full payment', 3, 1),
(41, 230.00, 10.00, '2024-12-12', 'Full payment', 2, 1),
(42, 220.00, 30.00, '2024-12-13', 'Full payment', 1, 1),
(43, 210.00, 20.00, '2024-12-14', 'Full payment', 3, 1),
(44, 240.00, 40.00, '2024-12-15', 'Full payment', 1, 1),
(45, 250.00, 20.00, '2024-12-16', 'Full payment', 2, 1),
(46, 260.00, 10.00, '2024-12-17', 'Full payment', 3, 1),
(47, 230.00, 20.00, '2024-12-18', 'Full payment', 1, 1),
(48, 220.00, 30.00, '2024-12-19', 'Full payment', 2, 1),
(49, 250.00, 40.00, '2024-12-20', 'Full payment', 3, 1),
(50, 230.00, 20.00, '2024-12-21', 'Full payment', 1, 1);


