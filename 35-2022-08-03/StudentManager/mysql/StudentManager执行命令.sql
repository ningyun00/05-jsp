CREATE DATABASE studentDB;

USE studentDB;

TRUNCATE TABLE studentInfo;
DROP TABLE studentInfo;
CREATE TABLE studentInfo(
	sid 		INT AUTO_INCREMENT PRIMARY KEY,								-- 学号
	sname 		VARCHAR(30) NOT NULL,										-- 姓名
	sgender 	VARCHAR(2) NOT NULL DEFAULT '男',							-- 性别
	sage        INT  NOT NULL,												-- 年龄
	saddress	VARCHAR(100), 												-- 家庭住址
	semaile 	VARCHAR(50)													-- 电子邮箱
);

INSERT INTO studentInfo VALUES
(NULL,'张全芳','女',20,'北京市朝阳区','quanfang@163.com'),
(NULL,'李思阳',DEFAULT,19,'北京崇文区','siyang@126.com'),
(NULL,'候全如','女',21,'江苏省市南京市','quanru@126.com'),
(NULL,'寜1',DEFAULT,12,'地球上','1234@qq.com'),
(NULL,'寜2','女',16,'地球','122134@qq.com'),
(NULL,'寜3','女',18,'暗示','132453@qas.sas')
;

SELECT * FROM studentInfo;

SELECT * FROM studentInfo WHERE sid = 1;

UPDATE studentInfo SET sname = '1',sgender = '2',sage = 21,saddress='3',semaile='4' WHERE sid = 1;

