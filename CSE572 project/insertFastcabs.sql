-- CALIFORNIA STATE UNIVERSITY, SAN BERNARDINO
-- DEPARTMENT OF COMPUTER SCIENCE
-- Course: CSE572
-- Student Names: Phillip Nahhas, Paul Alvarez
--
-- FASTCABS DATABASE PROJECT
-- INSERTION OF DATA INTO TABLES

SET CONSTRAINTS ALL DEFERRED;

INSERT INTO Office VALUES ('B001','1234 Foothill Ave','Fontana', '92336');
INSERT INTO Office VALUES ('B002','6789 Baseline Ave','Moreno Valley', '92551');

INSERT INTO Staff VALUES ('S0001','David','Anguiano','M','20-Feb-90','3425555','B001');
INSERT INTO Staff VALUES ('S0002','Felipe','Valadez','F','20-Mar-86','4435555','B001');
INSERT INTO Staff VALUES ('S0003','Hector','Madrigal','M','13-Oct-91','1235555','B002');
INSERT INTO Staff VALUES ('S0004','Rocio','Tabatai','F','10-Sep-87','8795555','B002');
INSERT INTO Staff VALUES ('S0005','Danielle','Nolan','F', '13-Mar-65','5675555','B001');

INSERT INTO Staffdetails VALUES ('S0004',NULL,'D0001', NULL);
INSERT INTO Staffdetails VALUES ('S0002',NULL,'D0002',NULL);
INSERT INTO Staffdetails VALUES ('S0005',NULL,NULL,'B001');
INSERT INTO Staffdetails VALUES ('S0001',NULL,NULL,'B002');

INSERT INTO ClientPrivate VALUES ('C0001','9095551000','123 University Ave','San Bernardino','Jan Levninson','B001');
INSERT INTO ClientPrivate VALUES ('C0002','9095551001','456 Citrus Ave','Fontana','Oscar Martinez', 'B002');
INSERT INTO ClientPrivate VALUES ('C0003','9095551002','789 Siera Ave','Rancho','Holly Flax','B001');
INSERT INTO ClientPrivate VALUES ('C0004','9095551003','321 Day Creek Ave','Riverside','Creed Braton', 'B002');

INSERT INTO ClientBusiness VALUES('C1001','Apple','9515551234','111 Tyler Ave','Riverside','B001');
INSERT INTO ClientBusiness VALUES('C1002','Dell','9515551111','222 Kendal Ave','San Bernardino','B002');
INSERT INTO ClientBusiness VALUES('C1003','Intel','9515552222','333 Highland Ave','Victorville','B001');

INSERT INTO Contract VALUES ('A0001',100,50,'B001','C1001');
INSERT INTO Contract VALUES ('A0002',200,50,'B002','C1002');
INSERT INTO Contract VALUES ('A0003',300,50,'B001','C1003');



INSERT INTO Job   VALUES ('J0001','08-Jan-19','111 First Ave','Fontana','92336',10,'25','T0001','C0001',NULL,'S0004','Complete');
INSERT INTO Job   VALUES ('J0002','08-Jan-19','222 Second Ave','Victorville','92356',40,'50','T0001',NULL,'A0001','S0004','Complete');
INSERT INTO Job   VALUES ('J0003','22-May-19','333 Third ST','Upland','92367',10,'25','T0001','C0003',NULL,'S0002','Incomplete, Taxi flat tire');
INSERT INTO Job   VALUES ('J0004','22-May-19','444 Fourth St','Riverside','92054',20,'50','T0001',NULL,'A0002','S0002','Complete');
INSERT INTO Job   VALUES ('J0005','01-Jun-19','555 Fifth St','Moreno Valley','92059',80,'200','T0002','C0004',NULL,'S0004','Complete, Overtime');
INSERT INTO Job   VALUES ('J0006','20-Apr-19','666 Sixth St','Ontario','92330',5,'50','T0004',NULL,'A0003','S0002','Complete');



INSERT INTO Allocated  VALUES ('T0001','S0004','08-Jan-19');
INSERT INTO Allocated VALUES ('T0001','S0002','22-May-19');
INSERT INTO Allocated VALUES ('T0002','S0004','01-Jun-19');
INSERT INTO Allocated VALUES ('T0004','S0002','20-Apr-19');

INSERT INTO Taxi  VALUES ('T0001','S0004','D0001');
INSERT INTO Taxi VALUES ('T0002','S0004','D0002');
INSERT INTO Taxi VALUES ('T0003','S0004','D0002');
INSERT INTO Taxi VALUES ('T0004','S0004','D0002');

SET CONSTRAINTS ALL IMMEDIATE;

SET PAUSE OFF

SELECT * FROM Office;
SELECT * FROM Staff;
SELECT * FROM Staffdetails;
SELECT * FROM ClientPrivate;
SELECT * FROM ClientBusiness;
SELECT * FROM Contract;
SELECT * FROM Job;
SELECT * FROM Allocated;
SELECT * FROM Taxi;

SET PAUSE ON


