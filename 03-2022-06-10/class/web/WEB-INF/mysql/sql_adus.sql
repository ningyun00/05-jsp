CREATE DATABASE class;
CREATE TABLE Student(
	SID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	SName VARCHAR(10) NOT NULL,
	SSex VARCHAR(2) NOT NULL,
	SDate DATE NOT NULL
)
SELECT * FROM Student;

TRUNCATE TABLE Student;

INSERT INTO Student VALUES(NULL,'sadfg','女',CURRENT_TIMESTAMP);
DELETE FROM Student WHERE SID = 1;
CREATE TABLE product(
	pid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	pname VARCHAR(20),
	price FLOAT,
	pdesc VARCHAR(100)
);
SELECT * FROM product;
INSERT INTO product VALUES(NULL,'西瓜',200,'超级贵');
DELETE FROM product WHERE pid = 1;