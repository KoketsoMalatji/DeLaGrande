CREATE DATABASE Hotelier

CREATE TABLE Staff
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	FirstName nvarchar(50) NOT NULL,
	LastName nvarchar(50),
	Designation nvarchar(50) NOT NULL,
  Notes nvarchar(255)
)

CREATE TABLE Clients
(
	AccountNumber INT PRIMARY KEY IDENTITY(1,1),
	FirstName nvarchar(50) NOT NULL,
	LastName nvarchar(50) NOT NULL,
	PhoneNumber INT,
	Notes nvarchar(255)
)

CREATE TABLE RoomStatus
(
	RoomType nvarchar(50) PRIMARY KEY NOT NULL,
	Notes nvarchar(255)
)

CREATE TABLE RoomTypes
(
	RoomType nvarchar(50) PRIMARY KEY NOT NULL,
	Notes nvarchar(255)
)


CREATE TABLE BedTypes
(
	BedType nvarchar(50) PRIMARY KEY NOT NULL,
	Notes nvarchar(255)
)

CREATE TABLE Rooms
(
	RoomNumber INT PRIMARY KEY IDENTITY(1,1),
	RoomType nvarchar(50) NOT NULL,
	BedType nvarchar(50) NOT NULL,
	Rate nvarchar(50),
	RoomStatus nvarchar(50),
	Notes nvarchar(255)
)

CREATE TABLE Booking
(
	FirstNameLastName nvarchar(50) NOT NULL,
	Email nvarchar(255) NOT NULL,
	CheckIn date,
	CheckOut date,
	SelectAdult nvarchar(50) NOT NULL,
	SelectChild nvarchar(50) NOT NULL,
  SelectRoom nvarchar(50) NOT NULL,
  Message nvarchar(255) NOT NULL,
	Notes nvarchar(255)
)

CREATE TABLE Payments
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	EmployeeId INT UNIQUE NOT NULL,
	PaymentDate date,
	AccountNumber INT NOT NULL,
	FirstDateOccupied date,
	LastDateOccupied date,
	TotalDays INT NOT NULL,
	AmountCharged INT NOT NULL,
	PaymentTotal INT NOT NULL,
	Notes nvarchar(255)
)

CREATE TABLE Occupancies
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	EmployeeId INT UNIQUE NOT NULL,
	DateOccupied date,
	AccountNumber INT NOT NULL,
	RoomNumber INT NOT NULL,
	RateApplied INT,
	PhoneCharge INT,
	Notes nvarchar(255)
)

INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Seth', 'Peshov', 'Sales and Marketing Manager',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Koketso', 'Malatji', 'Director of Purchasing',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Kokie', 'Petros', 'Spa Manager',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Muhluri', 'Nkuna', 'Executive Chef',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Sean', 'Malik', 'Cleaning Manager',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Phillipe', 'Tyson', 'Hotel Receptionist',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('John', 'Doe', 'Concierge',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Marvin', 'Hall', 'Room Attendant',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('John', 'Cena', 'IT Technician',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Kabaelo', 'Sams', 'Hotel Manager',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Mooris', 'Bvuma', 'Staff Manager',NULL)
INSERT INTO Staff(FirstName,LastName,Designation,Notes)
VALUES('Kenny', 'Slosh', 'Security Manager',NULL)

INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)
INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)
INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)
INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)
INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)
INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)
INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)
INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)
INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)
INSERT INTO Clients(FirstName,LastName,PhoneNumber,EmergencyName,EmergencyNumber, Notes)
VALUES('Pesho', 'Peshov', NULL, NULL, 112, NULL)

INSERT INTO RoomStatus(RoomType, Notes)
VALUES('Free', NULL)
INSERT INTO RoomStatus(RoomType, Notes)
VALUES('Reserved', NULL)
INSERT INTO RoomStatus(RoomType, Notes)
VALUES('Currently not available', NULL)

INSERT INTO RoomTypes(RoomType,Notes)
VALUES('Luxury', NULL)
INSERT INTO RoomTypes(RoomType,Notes)
VALUES('Standard', NULL)
INSERT INTO RoomTypes(RoomType,Notes)
VALUES('Small', NULL)

INSERT INTO BedTypes(BedType,Notes)
VALUES('LARGE', NULL)
INSERT INTO BedTypes(BedType,Notes)
VALUES('Medium', NULL)
INSERT INTO BedTypes(BedType,Notes)
VALUES('Small', NULL)

INSERT INTO Rooms(RoomType, BedType, Rate,RoomStatus,Notes)
VALUES('Luxury', 'Large', 'Perfect for rich people', 'Available', NULL)
INSERT INTO Rooms(RoomType, BedType, Rate,RoomStatus,Notes)
VALUES('Medium', 'Medium', NULL, 'Not available', NULL)
INSERT INTO Rooms(RoomType, BedType, Rate,RoomStatus,Notes)
VALUES('Economy', 'Small', NULL, 'Available', NULL)

INSERT INTO Payments(EmployeeId,PaymentDate,AccountNumber,FirstDateOccupied,LastDateOccupied,TotalDays,AmountCharged,TaxRate,TaxAmount,PaymentTotal,Notes)
VALUES(231, NULL, 2311, NULL,NULL, 7, 5000, 0,0,5000,NULL)
INSERT INTO Payments(EmployeeId,PaymentDate,AccountNumber,FirstDateOccupied,LastDateOccupied,TotalDays,AmountCharged,TaxRate,TaxAmount,PaymentTotal,Notes)
VALUES(321, NULL, 3211, NULL,NULL, 7, 5000, 0,2000,7000,NULL)
INSERT INTO Payments(EmployeeId,PaymentDate,AccountNumber,FirstDateOccupied,LastDateOccupied,TotalDays,AmountCharged,TaxRate,TaxAmount,PaymentTotal,Notes)
VALUES(999, NULL, 9989, NULL,NULL, 7, 5000, 0,50,5500,NULL)

INSERT INTO Occupancies(EmployeeId,DateOccupied,AccountNumber,RoomNumber,RateApplied,PhoneCharge,Notes)
VALUES(991, NULL, 534, 8, NULL,NULL,NULL)
INSERT INTO Occupancies(EmployeeId,DateOccupied,AccountNumber,RoomNumber,RateApplied,PhoneCharge,Notes)
VALUES(561, NULL, 75, 9, NULL,NULL,NULL)
INSERT INTO Occupancies(EmployeeId,DateOccupied,AccountNumber,RoomNumber,RateApplied,PhoneCharge,Notes)
VALUES(135, NULL, 8, 10, NULL,NULL,NULL)
