CREATE TABLE `article` (
`articleId` int(11) NOT NULL,
`title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`siteId` int(11) NOT NULL,
`userId` int(11) NOT NULL,
PRIMARY KEY (`articleId`) ,
INDEX `siteId` (`siteId`),
INDEX `userId` (`userId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `kind` (
`kindId` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`kindId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=0;

CREATE TABLE `reply` (
`replyId` int(11) NOT NULL AUTO_INCREMENT,
`content` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`articleId` int(11) NOT NULL,
`userId` int(11) NOT NULL,
PRIMARY KEY (`replyId`) ,
INDEX `reply_article` (`articleId`),
INDEX `reply_user` (`userId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `site` (
`siteId` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`KindId` int(11) NOT NULL,
`owner` int(11) NOT NULL AUTO_INCREMENT,
PRIMARY KEY (`siteId`) ,
INDEX `KindId` (`KindId`),
INDEX `owner` (`owner`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `user` (
`userId` int(11) NOT NULL AUTO_INCREMENT,
`password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
`username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
PRIMARY KEY (`userId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;


ALTER TABLE `article` ADD CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);
ALTER TABLE `article` ADD CONSTRAINT `siteId` FOREIGN KEY (`siteId`) REFERENCES `site` ();
ALTER TABLE `reply` ADD CONSTRAINT `reply_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);
ALTER TABLE `reply` ADD CONSTRAINT `reply_article` FOREIGN KEY (`articleId`) REFERENCES `article` (`articleId`);
ALTER TABLE `site` ADD CONSTRAINT `owner` FOREIGN KEY (`owner`) REFERENCES `user` (`userId`);
ALTER TABLE `site` ADD CONSTRAINT `KindId` FOREIGN KEY (`KindId`) REFERENCES `kind` ();

