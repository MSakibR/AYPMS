
---Basic
SELECT * FROM SoilData;


SELECT Name, Region FROM FarmerProfile;


SELECT DISTINCT Season FROM CropData;


SELECT COUNT(*) AS TotalCrops FROM CropData;


SELECT UPPER(Name) AS FertilizerName FROM FertilizerData;


SELECT LEFT(Name, 3) AS Initials FROM FarmerProfile;





---Math

SELECT AVG(EstimatedCost) AS AvgUtilization FROM Budget;


SELECT COUNT(DISTINCT Name) AS CropCount
FROM CropData;


SELECT MIN(CostPerUnit) AS MinPrice, MAX(CostPerUnit) AS MaxPrice
FROM FertilizerData;


SELECT SUM(AmountUsed) AS TotalFertilizerUsed
FROM FertilizerUsage;





---Where, Between

SELECT * 
FROM Alerts 
WHERE AlertType LIKE '%Warning%';


SELECT * FROM FertilizerData 
WHERE Type LIKE '%Nitrogen%'


SELECT Name FROM FarmerProfile 
WHERE Region = 'Dhaka';


SELECT * 
FROM FertilizerData 
WHERE CostPerUnit BETWEEN 10 AND 20;


SELECT * FROM Loan 
WHERE LoanAmount > 50000;


SELECT * 
FROM FarmerProfile 
WHERE Region = 'Dhaka';






---Group, Order, Having

SELECT Region, AVG(ActualYield) AS AvgYield 
FROM YieldData 
GROUP BY Region;


SELECT Region, SUM(ActualYield) AS TotalYield 
FROM YieldData 
GROUP BY Region 
HAVING SUM(ActualYield) > 4;


SELECT * 
FROM FertilizerData 
ORDER BY CostPerUnit ASC;


SELECT Region, SUM(ActualYield) AS TotalYield
FROM YieldData
WHERE Year = 2023
GROUP BY Region
HAVING SUM(ActualYield) > 4


SELECT * FROM FarmerProfile
ORDER BY FarmerID desc





---Union, Intersect

SELECT FarmerID 
FROM Loan
UNION
SELECT FarmerID 
FROM Alerts;


SELECT FarmerID 
FROM Loan
INTERSECT
SELECT FarmerID 
FROM Alerts;


SELECT FarmerID 
FROM Loan
EXCEPT
SELECT FarmerID 
FROM Alerts;






---Join

SELECT f.Name AS FarmerName, agr.Name AS AgronomistName 
FROM FarmerProfile f 
JOIN Appointment ap ON f.FarmerID = ap.FarmerID 
JOIN Agronomist agr ON ap.AgronomistID = agr.AgronomistID;


SELECT Region, COUNT(LoanID) AS LoanCount 
FROM FarmerProfile f 
JOIN Loan l ON f.FarmerID = l.FarmerID 
GROUP BY Region;


SELECT DISTINCT Region 
FROM FarmerProfile f 
LEFT JOIN Appointment ap ON f.FarmerID = ap.FarmerID 
WHERE ap.AgronomistID IS NULL;


SELECT f.Name, l.LoanAmount, l.Status
FROM FarmerProfile f
INNER JOIN Loan l ON f.FarmerID = l.FarmerID;








---SubQuery

SELECT Name
FROM FarmerProfile
WHERE FarmerID NOT IN (SELECT FarmerID FROM Loan);


SELECT * FROM Alerts 
WHERE FarmerID IN (SELECT FarmerID FROM FarmerProfile WHERE Region IN ('Dhaka', 'Sylhet'));



SELECT Name
FROM FarmerProfile 
WHERE FarmerID NOT IN (
    SELECT DISTINCT FarmerID FROM Loan
);


SELECT Name 
FROM FarmerProfile 
WHERE FarmerID IN (
    SELECT FarmerID 
    FROM FertilizerUsage fu 
    JOIN FertilizerData fd ON fu.FertilizerID = fd.FertilizerID 
    WHERE fd.Type = 'Organic'
);




CREATE VIEW LoanSummary AS
SELECT FarmerID, LoanID, LoanAmount, Status
FROM Loan;

select * from LoanSummary


CREATE VIEW CropBasicInfo AS
SELECT CropID, Name AS CropName, Season, AverageYield
FROM CropData;

select * from CropBasicInfo


----------------------------------------------------------------------



CREATE TRIGGER LogLoanUpdates
ON Loan
AFTER UPDATE
AS
BEGIN
    INSERT INTO LoanLog (LoanID, UpdateTime)
    SELECT LoanID, GETDATE()
    FROM Inserted;
END;

