CREATE TABLE `INTEREST_LECTURE`
(
	 `INTEREST_LECTURE_ID` INT NOT NULL AUTO_INCREMENT COMMENT '관심강의ID',
	 `LECTURE_ID`    INT NOT NULL COMMENT '강의ID',
	 `INTEREST_USER_ID` INT NOT NULL COMMENT '관심이있는사용자ID',
 PRIMARY KEY (`INTEREST_LECTURE_ID`),
 FOREIGN KEY(`LECTURE_ID`) REFERENCES `LECTURE`(`LECTURE_ID`),
 FOREIGN KEY(`INTEREST_USER_ID`) REFERENCES `USER`(`USER_ID`)
) COMMENT = '관심강의';