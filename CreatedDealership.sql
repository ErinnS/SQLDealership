DROP DATABASE IF EXISTS CarDealership;

CREATE DATABASE IF NOT EXISTS CarDealership;

USE CarDealership;
-- Creating dealership table

CREATE TABLE Dealership (
	DealershipID INT auto_increment PRIMARY KEY, 
    NAME VARCHAR(50),
    Address VARCHAR(50),
    Phone VARCHAR(12) 
);
    
CREATE TABLE  Vehicles (
	Vin VARCHAR(17),
    Model VARCHAR(50),
    MAKE VARCHAR(50),
    Year INT,
    Price DECIMAL(10, 2),
    Sold BOOLEAN
); 

CREATE TABLE Inventory (
	DealershipID INT,
    Vin VARCHAR(17)
);

CREATE TABLE Sales_contracts (
	SaleID INT AUTO_INCREMENT PRIMARY KEY,
    Vin VARCHAR(17),
    SaleDate DATE,
    TotalCost DECIMAL(10, 2)
); 

-- Added to Dealership 

INSERT INTO Dealership (Name, Address, Phone) VALUES
	('VelocityCars', '4578 Clark Ave', '123-456-7890'),
    ('Heritage Wheels', '1234 Lane Ct', '555-555-5555'),
    ('Evergreen Auto Haven', '2134 Thomas Dr', '778-655-9800');
    
-- Added to Vehicles

INSERT INTO Vehicles (Vin, Make, Model, Year, Price, Sold) VALUES
	('1S1ABCD1E1123456', 'Nissan', 'Maxima', '2020', '35,000'),
	('2A2AHAH5R6930303', 'Cadillac', 'CT5', '2023', '52,000'),
	('3B3BAJF8O0384859', 'Lexus', 'IS 500', '2024', '60,000'),
	('4A3GGJF9K647892', 'Toyota', 'Camry', '2024', '38,000');
    
-- Added to Inventory

INSERT INTO Inventory (DealershipID, Vin) VALUES
	('1', '1S1ABCD1E1123456'),
    ('2', '2A2AHAH5R6930303'),
    ('3', '2A2AHAH5R6930303'),
    ('4', '4A3GGJF9K647892');

-- Added to Sales_contracts

INSERT INTO Sales_contracts (SaleID, Vin, SaleDate, TotalCost) VALUES
('1', '1S1ABCD1E1123456', DATE, '35,000'),
('2', '2A2AHAH5R6930303', DATE, '52,000'),
('3', '2A2AHAH5R6930303', DATE, '60,000'),
('4', '4A3GGJF9K647892', DATE, '38,000')

    
    
    
	 
    
    
    
    
