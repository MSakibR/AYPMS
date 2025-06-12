-- Create Database
CREATE DATABASE AYPMS;
go
USE AYPMS;
go
-- Create Tables
CREATE TABLE SoilData (
    SoilTypeID INT PRIMARY KEY,
    Region VARCHAR(100) UNIQUE,
    NutrientLevels VARCHAR(255),
    CropCompatibility VARCHAR(255)
);

CREATE TABLE WeatherData (
    WeatherID INT PRIMARY KEY,
    Date DATE,
    Temperature DECIMAL(5, 2),
    Humidity DECIMAL(5, 2),
    Rainfall DECIMAL(5, 2),
    WindSpeed DECIMAL(5, 2),
    Region VARCHAR(100),
    FOREIGN KEY (Region) REFERENCES SoilData(Region)
);

CREATE TABLE CropData (
    CropID INT PRIMARY KEY,
    Name VARCHAR(100),
    Season VARCHAR(50),
    AverageYield DECIMAL(10, 2),
    CompatibleSoilTypeID INT,
    FOREIGN KEY (CompatibleSoilTypeID) REFERENCES SoilData(SoilTypeID)
);

CREATE TABLE FarmerProfile (
    FarmerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Region VARCHAR(100),
    ContactInfo VARCHAR(255) 
);

CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    FarmerID INT,
    LoanAmount DECIMAL(12, 2),
    InterestRate DECIMAL(5, 2),
    LoanStartDate DATE,
    LoanEndDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (FarmerID) REFERENCES FarmerProfile(FarmerID)
);

CREATE TABLE Budget (
    BudgetID INT PRIMARY KEY,
    FarmerID INT,
    CropID INT,
    LoanID INT,
    Year INT,
    EstimatedCost DECIMAL(10, 2),
    ActualCost DECIMAL(10, 2),
    Revenue DECIMAL(10, 2),
    Profit DECIMAL(10, 2),
    FOREIGN KEY (FarmerID) REFERENCES FarmerProfile(FarmerID),
    FOREIGN KEY (CropID) REFERENCES CropData(CropID),
    FOREIGN KEY (LoanID) REFERENCES Loan(LoanID)
);

CREATE TABLE YieldData (
    YieldID INT PRIMARY KEY,
    Region VARCHAR(100),
    CropID INT,
    Year INT,
    ActualYield DECIMAL(10, 2),
    FOREIGN KEY (CropID) REFERENCES CropData(CropID),
    FOREIGN KEY (Region) REFERENCES SoilData(Region)
);

CREATE TABLE Recommendations (
    RecommendationID INT PRIMARY KEY,
    FarmerID INT,
    CropID INT,
    Date DATE,
    Season VARCHAR(50),
    FOREIGN KEY (FarmerID) REFERENCES FarmerProfile(FarmerID),
    FOREIGN KEY (CropID) REFERENCES CropData(CropID)
);

CREATE TABLE Alerts (
    AlertID INT PRIMARY KEY,
    FarmerID INT,
    AlertType VARCHAR(50),
    Date DATE,
    FOREIGN KEY (FarmerID) REFERENCES FarmerProfile(FarmerID)
);

CREATE TABLE FertilizerData (
    FertilizerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Type VARCHAR(50),
    CostPerUnit DECIMAL(10, 2)
);

CREATE TABLE FertilizerUsage (
    UsageID INT PRIMARY KEY,
    CropID INT,
    FertilizerID INT,
    AmountUsed DECIMAL(10, 2),
    ApplicationDate DATE,
    FOREIGN KEY (CropID) REFERENCES CropData(CropID),
    FOREIGN KEY (FertilizerID) REFERENCES FertilizerData(FertilizerID)
);

CREATE TABLE PestControl (
    PestControlID INT PRIMARY KEY,
    CropID INT,
    PesticideUsed VARCHAR(100),
    ApplicationDate DATE,
    Cost DECIMAL(10, 2),
    FOREIGN KEY (CropID) REFERENCES CropData(CropID)
);

CREATE TABLE Agronomist (
    AgronomistID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    ContactInfo VARCHAR(255),
    Region VARCHAR(100),
    FOREIGN KEY (Region) REFERENCES SoilData(Region)
);

CREATE TABLE Appointment (
    Appointment_ID INT PRIMARY KEY,
    FarmerID INT,
    AgronomistID INT,
    AppointmentDate DATE,
    FOREIGN KEY (FarmerID) REFERENCES FarmerProfile(FarmerID),
    FOREIGN KEY (AgronomistID) REFERENCES Agronomist(AgronomistID)
);
