CREATE TABLE `TB_USER` (
`ID`  varchar(32) NOT NULL ,
`USER_NAME`  varchar(32) NOT NULL ,
`PASSWORD`  varchar(32) NOT NULL ,
`ENABLE`  varchar(2) NOT NULL DEFAULT '1' ,
`PHONE`  varchar(11) NULL ,
`EMAIL`  varchar(32) NULL ,
`EXTEND_FIELD`  text NULL ,
`CREATE_TIME`  datetime NOT NULL DEFAULT now() ,
`UPDATE_TIME`  datetime NOT NULL DEFAULT now() ,
PRIMARY KEY (`ID`)
);

CREATE TABLE `TB_RESOURCE` (
  `ID` varchar(32) NOT NULL,
  `FATHER_ID` varchar(32) NOT NULL,
  `CODE` varchar(32) NOT NULL,
  `TITLE` varchar(32) DEFAULT NULL,
  `URL` varchar(32) DEFAULT NULL,
  `ICON` varchar(32) DEFAULT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  `LEVEL` int(11) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT now(),
  `UPDATE_TIME` datetime DEFAULT now(),
  PRIMARY KEY (`ID`)
);

CREATE TABLE `TB_ROLE` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(32) NOT NULL,
  `DESCRIPTION` varchar(32) NOT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT now(),
  `UPDATE_TIME` datetime DEFAULT now(),
  PRIMARY KEY (`ID`)
);

CREATE TABLE `TB_ROLE_RESOURCE` (
  `ID` varchar(32) NOT NULL,
  `ROLE_ID` varchar(32) NOT NULL,
  `RESOURCE_ID` varchar(32) NOT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT now(),
  `UPDATE_TIME` datetime DEFAULT now(),
  PRIMARY KEY (`ID`)
);

CREATE TABLE `TB_USER_ROLE` (
  `ID` varchar(32) NOT NULL,
  `ROLE_ID` varchar(32) NOT NULL,
  `USER_ID` varchar(32) NOT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT now(),
  `UPDATE_TIME` datetime DEFAULT now(),
  PRIMARY KEY (`ID`)
);

