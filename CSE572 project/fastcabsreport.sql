--fast cabs report
set pause off 
spool fastcabsreport.txt
SELECT * FROM user_tab_comments;
SELECT * FROM user_col_comments WHERE table_name ='OFFICE';
SELECT * FROM user_col_comments WHERE table_name ='STAFF';
SELECT * FROM user_col_comments WHERE table_name ='STAFFDETAILS';
SELECT * FROM user_col_comments WHERE table_name ='CLIENTPRIVATE';
SELECT * FROM user_col_comments WHERE table_name ='CLIENTBUSINESS';
SELECT * FROM user_col_comments WHERE table_name ='CONTRACT';
SELECT * FROM user_col_comments WHERE table_name ='JOB';
SELECT * FROM user_col_comments WHERE table_name ='ALLOCATED';
SELECT * FROM user_col_comments WHERE table_name ='TAXI';

desc Office;
desc Staff;
desc Staffdetails;
desc ClientPrivate;
desc ClientBusiness;
desc Contract;
desc Job;
desc Allocated;
desc Taxi;

SELECT * FROM Office;
SELECT * FROM Staff;
SELECT * FROM Staffdetails;
SELECT * FROM ClientPrivate;
SELECT * FROM ClientBusiness;
SELECT * FROM Contract;
SELECT * FROM Job;
SELECT * FROM Allocated;
SELECT * FROM Taxi;

SPOOL OFF
SET PAUSE ON
