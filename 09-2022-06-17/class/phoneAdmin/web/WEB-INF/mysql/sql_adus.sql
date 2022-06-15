CREATE DATABASE	phone;
USE phone;
CREATE TABLE phone(
	id 		INT NOT NULL PRIMARY KEY AUTO_INCREMENT,	-- 手机编号
	TYPE 		VARCHAR(20) NOT NULL,				-- 手机型号
	brand 		VARCHAR(20) NOT NULL, 				-- 手机品牌
	company 	VARCHAR(20) NOT NULL,				-- 手机公司
	introduciton 	VARCHAR(50) NOT NULL 				-- 手机介绍
);
SELECT * FROM phone;
INSERT INTO phone VALUE(NULL,'E71','NOKIA','NOKIA','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃');
SELECT * FROM phone  WHERE brand = 'NOKIA';
DELETE FROM phone WHERE id = 1;
INSERT INTO phone VALUE(NULL,'E71','VIVO','VIVO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃');
INSERT INTO phone VALUE(NULL,'E71','OPPO','OPPO','智能商务手机,塞班操作系统,扩展性好性价比极高,能砸核桃');