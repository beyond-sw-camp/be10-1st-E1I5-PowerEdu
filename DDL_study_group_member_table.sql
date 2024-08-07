CREATE TABLE `STUDY_GROUP_MEMBER` (
    `STUDY_GRP_MEMBER_ID` INT NOT NULL AUTO_INCREMENT COMMENT '스터디그룹별멤버 ID',
    `STUDY_GRP_ID` INT NOT NULL COMMENT '스터디그룹ID',
    `USER_ID` INT NOT NULL COMMENT '사용자ID',
    `ROLE` VARCHAR(1) DEFAULT 'M' NOT NULL COMMENT '역할 (L: 리더, M: 멤버)',
    PRIMARY KEY (`STUDY_GRP_MEMBER_ID`),
    FOREIGN KEY (`STUDY_GRP_ID`) REFERENCES `STUDY_GROUP` (`STUDY_GRP_ID`),
    FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USER_ID`),
    CHECK (`ROLE` IN ('L', 'M'))
) COMMENT = '스터디그룹 멤버';