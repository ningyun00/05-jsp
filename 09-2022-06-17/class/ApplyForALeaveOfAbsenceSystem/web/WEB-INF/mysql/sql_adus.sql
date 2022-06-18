CREATE DATABASE leaveTheLibrary
USE `leaveTheLibrary`;
CREATE TABLE furloughapply(
	ID 		INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 	-- 编号
	proposer 	VARCHAR(30) NOT NULL,				-- 姓名
	dept 		VARCHAR(20) NOT NULL,				-- 部门
	applyDate 	DATE NOT NULL,					-- 申请日期
	startTime 	DATETIME NOT NULL,				-- 开始日期
	lasTime 	DATETIME NOT NULL,				-- 结束日期
	TYPE 		VARCHAR(30) NOT NULL 				-- 休假类型
);
INSERT INTO furloughapply VALUE(NULL,'寜','人事部',CURRENT_DATE,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,'无条件请假');
SELECT * FROM `furloughapply`;
SELECT * FROM furloughapply WHERE ID=49 ORDER BY applyDate DESC  LIMIT 0,5;