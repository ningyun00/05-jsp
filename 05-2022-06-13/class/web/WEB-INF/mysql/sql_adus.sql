CREATE DATABASE employee;
CREATE TABLE emp(
	EID INT AUTO_INCREMENT PRIMARY KEY,
	EName VARCHAR(20),
	ESix VARCHAR(2),
	ETelephone VARCHAR(18),
	EHireDate DATE 
);
INSERT INTO emp VALUES(NULL,'寜','女','18573031245',CURRENT_TIMESTAMP);
SELECT * FROM emp WHERE EName LIKE '%寜%' LIMIT 0,50;
SELECT MAX(EID) FROM emp LIMIT 0,50;
DELETE FROM emp
TRUNCATE TABLE emp;
UPDATE emp SET EName = '暗示',ESix = '妖',ETelephone = '1',EHireDate = CURRENT_TIMESTAMP WHERE EID = 2;
DELETE FROM emp WHERE EID =  4
SELECT COUNT(*) FROM emp;
SELECT COUNT(*) FROM emp WHERE EName = '寜21' AND ETelephone = '18573031245';
INSERT INTO emp VALUES(NULL,'1','女','2',CURRENT_TIMESTAMP);