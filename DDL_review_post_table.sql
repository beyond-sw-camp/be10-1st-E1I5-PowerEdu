CREATE TABLE IF NOT EXISTS `REVIEW_POST`
(
	 `REVIEW_ID`	INT NOT NULL AUTO_INCREMENT COMMENT '후기게시판ID',
	 `USER_ID`	INT NOT NULL COMMENT '사용자ID',
	 `LECTURE_ID`	INT NOT NULL COMMENT '강의ID',
	 `USER_NICKNAME` VARCHAR(30) COMMENT '사용자닉네임',
	 `REVIEW_TITLE`	VARCHAR(255) NOT NULL COMMENT '후기게시판제목',
	 `REVIEW_CONTENT`	LONGTEXT NOT NULL COMMENT '후기게시판내용',
	 `REVIEW_RATE` INT NOT NULL COMMENT '후기별점',
	 `REVIEW_TIME`	DATETIME NOT NULL DEFAULT NOW() COMMENT '작성시간',
	 `LIKE_COUNT` INT COMMENT '좋아요_개수',
	 `IS_DELETED` BOOLEAN NOT NULL DEFAULT 0 COMMENT '후기삭제여부',
	 PRIMARY KEY(`REVIEW_ID`),
	 FOREIGN KEY(`USER_ID`) REFERENCES `USER`(`USER_ID`),
	 FOREIGN KEY(`LECTURE_ID`) REFERENCES `LECTURE`(`LECTURE_ID`),
	 CHECK (`REVIEW_RATE` BETWEEN 1 AND 5)
) COMMENT = '후기게시글';