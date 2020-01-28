-- CALIFORNIA STATE UNIVERSITY, SAN BERNARDINO
-- DEPARTMENT OF COMPUTER SCIENCE
-- Course: CSE572
-- Student Names: Phillip Nahhas, Paul Alvarez
--
-- FASTCABS DATABASE PROJECT
-- TABLE AND COLUMN COMMENTS

--Table Office
COMMENT ON TABLE OFFICE IS 'Fast Cab office information';
COMMENT ON COLUMN Office.officeNo IS 'Unique Office NO';
COMMENT ON COLUMN Office.strAddress IS 'Office Street Address';
COMMENT ON COLUMN Office.city IS 'Office City Location';
COMMENT ON COLUMN Office.postcode IS 'Office Zipcode';

--Table Staffdetails
COMMENT ON TABLE Staffdetails IS 'Staff Details';
COMMENT ON COLUMN Staffdetails.StaffID IS 'Staff ID';
COMMENT ON COLUMN Staffdetails.bonus IS 'Staff Bonus';
COMMENT ON COLUMN Staffdetails.DriverID IS 'Staff Driver ID';

--Table ClientBusiness
COMMENT ON TABLE ClientBusiness IS 'Business Client';
COMMENT ON COLUMN ClientBusiness.ClientID IS 'Unqiue ID of Client';
COMMENT ON COLUMN ClientBusiness.Bname IS 'Name of Business';
COMMENT ON COLUMN ClientBusiness.phoneNo IS 'Business phone #';
COMMENT ON COLUMN ClientBusiness.strAddress IS 'Business Street Address';
COMMENT ON COLUMN ClientBusiness.city IS 'Business City';
COMMENT ON COLUMN ClientBusiness.officeNo IS 'Client officeNo';

--Table Contract
COMMENT ON TABLE Contract IS 'Business Contract Information';
COMMENT ON COLUMN Contract.contractNo IS 'Unique Contract Number';
COMMENT ON COLUMN Contract.noJobs IS 'Number of Jobs';
COMMENT ON COLUMN Contract.fee IS 'Agreed upon fee for contract';
COMMENT ON COLUMN Contract.officeNo IS 'Associated office number';
COMMENT ON COLUMN Contract.clientID IS 'Associated client ID';

--Table Taxi
COMMENT ON TABLE Taxi IS 'Taxi cab information';
COMMENT ON COLUMN Taxi.TaxiID IS 'Unique Taxi ID';
COMMENT ON COLUMN Taxi.staffID IS 'ID of owner';
COMMENT ON COLUMN Taxi.DriverID IS 'ID of current Driver';
COMMENT ON COLUMN Taxi.allocatedDate IS 'Date the taxi is Allocated to driver';

--Table Staff 
COMMENT ON TABLE Staff IS 'All active employees in the COMPANY database'; 
COMMENT ON COLUMN Staff.StaffID IS 'Employee’s unique staffID';
COMMENT ON COLUMN Staff.fname IS 'Employee’s fisrt name';
COMMENT ON COLUMN Staff.lname IS 'Employee’s last name';
COMMENT ON COLUMN Staff.sex IS 'Employee’s sex';
COMMENT ON COLUMN Staff.DOB IS 'Employee’s date of birth';
COMMENT ON COLUMN Staff.Phone IS 'Employee’s phone number';
COMMENT ON COLUMN Staff.officeNo IS 'Employee’s office ';

--Table ClientPrivate 
COMMENT ON TABLE ClientPrivate IS 'All private clients in the COMPANY database'; 
COMMENT ON COLUMN ClientPrivate.ClientID IS 'Client’s unique client ID';
COMMENT ON COLUMN ClientPrivate.phoneNo IS 'Clients phone number';
COMMENT ON COLUMN ClientPrivate.strAddress IS 'Client’s address';
COMMENT ON COLUMN ClientPrivate.city IS 'Client’s city';
COMMENT ON COLUMN ClientPrivate.name IS 'Client’s name';
COMMENT ON COLUMN ClientPrivate.officeNo IS 'Client officeNo';

--Table Job 
COMMENT ON TABLE Job IS 'All jobs in the COMPANY database'; 
COMMENT ON COLUMN Job.jobID IS 'Job’s unique client ID';
COMMENT ON COLUMN Job.pickupDate IS 'Date job is done';
COMMENT ON COLUMN Job.strAddress IS 'Job locations';
COMMENT ON COLUMN Job.city IS 'Job’s city';
COMMENT ON COLUMN Job.postCode IS 'Job’s postcode';
COMMENT ON COLUMN Job.milesDriven IS 'Job’s mile driven';
COMMENT ON COLUMN Job.chargemade IS 'Jobs fee';
COMMENT ON COLUMN Job.jobStatus IS 'Client’s address';
COMMENT ON COLUMN Job.TaxiID IS 'Job’s assigned taxi';
COMMENT ON COLUMN Job.ClientID IS 'Jobs’s assigned client';
COMMENT ON COLUMN Job.contractNo IS 'Jobs’s contract number';
COMMENT ON COLUMN Job.StaffID IS 'Job’s assigned staff';

--Table Allocated 
COMMENT ON TABLE Allocated IS 'All drivers allocated to taxi'; 
COMMENT ON COLUMN Allocated.TaxiID IS 'Drivers allocated Taxi';
COMMENT ON COLUMN Allocated.StaffID IS 'Taxis allocated driver';
COMMENT ON COLUMN Allocated.allocatedDate IS 'Date driver is assigned to a driver';

--View Comments
COMMENT ON MATERIALIZED VIEW noStaff IS 'Number of staff at each branch';
COMMENT ON MATERIALIZED VIEW privateCity IS 'Total number of private clients in each city';
COMMENT ON MATERIALIZED VIEW femaleDrivers IS 'Names and Info for all Female Drivers';
COMMENT ON MATERIALIZED VIEW contractMiles IS 'Total Jobs and Miles Driven for each contract';
COMMENT ON MATERIALIZED VIEW fontanaContracts IS 'Business Contract Info for Fontana Office';
COMMENT ON MATERIALIZED VIEW allocatedTaxi IS 'Number of Drivers Allocated to each taxi';
COMMENT ON MATERIALIZED VIEW driverJob IS 'Total number of jobs allocated to each driver';
COMMENT ON MATERIALIZED VIEW taxiJob IS 'Total number of jobs allocated to each Taxi';
COMMENT ON MATERIALIZED VIEW avgMiles IS 'Average number of miles driven during a job';
COMMENT ON MATERIALIZED VIEW contractTotals IS 'Total number of jobs and miles driven for a given contract';

