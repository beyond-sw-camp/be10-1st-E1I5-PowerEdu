CREATE TABLE IF NOT EXISTS `PAY_HISTORY`
(
    `PAY_ID`    INT NOT NULL AUTO_INCREMENT COMMENT '결제내역ID',
    `USER_ID`    INT NOT NULL COMMENT '사용자ID',
    `PAY_DATE`    DATE NOT NULL DEFAULT CURRENT_DATE() COMMENT '결제일',
    `PRICE`    DECIMAL(10) NOT NULL COMMENT '가격',
    `PAY_METHOD`    VARCHAR(255) NOT NULL COMMENT '결제수단',
    `PAY_CONFIRM_ID`    VARCHAR(255) COMMENT '결제완료ID',
    PRIMARY KEY (`PAY_ID`),
    FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USER_ID`)
) COMMENT = '결제내역';