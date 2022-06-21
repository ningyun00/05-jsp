CREATE DATABASE class;
USE class;
CREATE TABLE USER(
	UID INT PRIMARY KEY AUTO_INCREMENT,
	UName VARCHAR(20) NOT NULL,
	UPassword VARCHAR(20) NOT NULL
);
SELECT COUNT(*) FROM USER WHERE UName = 'user';
INSERT INTO USER VALUE(NULL,'user','123456');
SELECT * FROM city WHERE pid = 1;
CREATE TABLE constellation(
	CID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	CName VARCHAR(3) NOT NULL,
	CContent VARCHAR(11) NOT NULL
);
INSERT INTO constellation VALUE(NULL,'白羊座','3/21-4/20');
INSERT INTO constellation VALUE(NULL,'金牛座','4/21-5/21');
INSERT INTO constellation VALUE(NULL,'双子座','5/22-6/21');
INSERT INTO constellation VALUE(NULL,'巨蟹座','6/22-7/22');
INSERT INTO constellation VALUE(NULL,'狮子座','7/23-8/23');
INSERT INTO constellation VALUE(NULL,'处女座','8/24-9/23');
INSERT INTO constellation VALUE(NULL,'天秤座','9/24-10/23');
INSERT INTO constellation VALUE(NULL,'天蝎座','10/24-11/22');
INSERT INTO constellation VALUE(NULL,'射手座','11/23-12/21');
INSERT INTO constellation VALUE(NULL,'魔羯座','12/22-1/20');
INSERT INTO constellation VALUE(NULL,'水瓶座','1/21-2/19');
INSERT INTO constellation VALUE(NULL,'双鱼座','2/20-3/20');
SELECT * FROM constellation WHERE CID = 8;