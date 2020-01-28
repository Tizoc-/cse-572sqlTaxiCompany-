-- CALIFORNIA STATE UNIVERSITY, SAN BERNARDINO
-- DEPARTMENT OF COMPUTER SCIENCE
-- Course: CSE572
-- Student Names: Phillip Nahhas, Paul Alvarez
--
-- FASTCABS DATABASE PROJECT
-- CREATION OF VIEWS

SET PAUSE OFF

--Number of staff at each branch
DROP VIEW noStaff;
CREATE VIEW noStaff AS
	SELECT COUNT(staffId) AS NO_of_Staff, officeNo FROM Staff GROUP BY officeNo;
SELECT * FROM noStaff;

--Total number of private clients in each city
DROP VIEW privateCity;
CREATE VIEW privateCity AS
	SELECT COUNT(ClientID) AS NO_of_Clients, city FROM ClientPrivate GROUP BY city;
SELECT * FROM privateCity;

--Names and Info for all Female Drivers
DROP VIEW femaleDrivers;
CREATE VIEW femaleDrivers AS 
	SELECT s.staffID, s.fname, s.lname, s.sex, s.Phone, s.DOB, s.officeNo, d.DriverID FROM Staff s, StaffDetails d WHERE s.staffID IN (SELECT staffID FROM StaffDetails WHERE DriverID is NOT NULL) AND s.sex IN 'F' AND s.staffID = d.staffID ORDER BY s.staffID;
SELECT * FROM femaleDrivers;

--Total Jobs and Miles Driven for each contract
DROP VIEW contractMiles;
CREATE VIEW contractMiles AS
	SELECT contractNo, COUNT(contractNo) AS NO_of_Jobs, SUM(milesDriven) AS Total_Miles_Driven FROM Job WHERE contractNo IS NOT NULL GROUP BY contractNo ORDER BY contractNo;
SELECT * FROM contractMiles;

--Business Contract Info for Fontana Office
DROP VIEW fontanaContracts;
CREATE VIEW fontanaContracts AS
	SELECT contractNo, noJobs, Fee, ClientID, officeNo FROM Contract WHERE officeNo IN 'B001';
SELECT * FROM fontanaContracts;

--Number of Drivers Allocated to each taxi
DROP VIEW allocatedTaxi;
CREATE VIEW allocatedTaxi AS
	SELECT COUNT(staffID) AS NO_of_Drivers, TaxiID FROM Allocated GROUP BY TaxiID ORDER BY TaxiID;
SELECT * FROM allocatedTaxi;

--Total number of jobs allocated to each driver
DROP VIEW driverJob;
CREATE VIEW driverJob AS
	SELECT COUNT(jobID) AS NO_of_jobs, staffID FROM Job GROUP BY staffID ORDER BY staffID;
SELECT * FROM driverJob;

--Total number of jobs allocated to each Taxi
DROP VIEW taxiJob;
CREATE VIEW taxiJob AS
	SELECT COUNT(jobID) AS NO_of_jobs, TaxiID FROM Job GROUP BY TaxiID ORDER BY TaxiID;
SELECT * FROM taxiJob;

--Average number of miles driven during a job
DROP VIEW avgMiles;
CREATE VIEW avgMiles AS
	SELECT avg(milesDriven) AS AVG_miles_driven FROM Job;
SELECT * FROM avgMiles;

--Total number of jobs and miles driven for a given contract
DROP VIEW contractTotals;
CREATE VIEW contractTotals AS
	SELECT contractNo ,COUNT(jobID) AS NO_of_Jobs, SUM(milesDriven) AS Total_miles_driven FROM Job WHERE contractNo IS NOT NULL GROUP BY contractNo ORDER BY contractNo;
SELECT * FROM contractTotals;

SET PAUSE ON

