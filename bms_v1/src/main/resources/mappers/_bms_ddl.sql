
CREATE DATABASE BMS;

USE BMS;

CREATE TABLE `ADMIN`(
    ADMIN_ID 	VARCHAR(20) PRIMARY KEY,
	PASSWD 		VARCHAR(100),
	JOIN_DT 	DATETIME
);

INSERT INTO `ADMIN` VALUES ('bmsadmin' , 'P@ssw0rd' , NOW());


CREATE TABLE MEMBER(
    MEMBER_ID 		VARCHAR(20) PRIMARY KEY,
	MEMBER_NM 		VARCHAR(50),
    PASSWD 			VARCHAR(1000),
	SEX 			VARCHAR(10),
	DATE_BIRTH 		VARCHAR(20),
	HP 				VARCHAR(20),
	SMSSTS_YN 		VARCHAR(20),
	EMAIL 			VARCHAR(20),
	EMAILSTS_YN 	VARCHAR(20),
	ZIPCODE 		VARCHAR(20),
	ROAD_ADDRESS 	VARCHAR(500),
	JIBUN_ADDRESS 	VARCHAR(500),
	NAMUJI_ADDRESS 	VARCHAR(500),
	POINT			INT,
	JOIN_DT 		DATETIME
);


CREATE TABLE GOODS(
    GOODS_CD 		  INT AUTO_INCREMENT PRIMARY KEY,
    GOODS_NM 		  VARCHAR(500),
    WRITER 			  VARCHAR(200),
	PRICE 			  INT,
	DISCOUNT_RATE 	  INT,
	STOCK			  INT,
	PUBLISHER 		  VARCHAR(50),
	SORT 			  VARCHAR(50),
	POINT 			  INT,
	PUBLISHED_DT 	  DATE,
	TOTAL_PAGE 		  INT,
	ISBN 			  VARCHAR(50),
	DELIVERY_PRICE 	  INT,
	PART 			  VARCHAR(50),
	WRITER_INTRO 	  VARCHAR(2000),
	CONTENTS_ORDER 	  VARCHAR(2000),
	INTRO 			  VARCHAR(2000),
	PUBLISHER_COMMENT VARCHAR(2000),
	RECOMMENDATION 	  VARCHAR(2000),
	GOODS_FILE_NAME	  VARCHAR(2000),
	ENROLL_DT 		  DATETIME
);


CREATE TABLE `ORDER`(
	ORDER_CD 			INT AUTO_INCREMENT PRIMARY KEY,
    MEMBER_ID 			VARCHAR(20),
    GOODS_CD 			INT,
	ORDER_GOODS_QTY 	INT,
	PAYMENT_AMT			INT,
    ORDERER_NM 			VARCHAR(50),
    ORDERER_HP 			VARCHAR(50),
	RECEIVER_NM 		VARCHAR(50),
	RECEIVER_HP 		VARCHAR(20),
	ZIPCODE 			VARCHAR(20),
	ROAD_ADDRESS 		VARCHAR(500),
	JIBUN_ADDRESS 		VARCHAR(500),
	NAMUJI_ADDRESS 		VARCHAR(500),
    DELIVERY_METHOD 	VARCHAR(40),
    DELIVERY_MESSAGE 	VARCHAR(300),
    DELIVERY_STATUS 	VARCHAR(100),
	GIFT_WRAPPING 		VARCHAR(20),
	PAY_METHOD 			VARCHAR(200),
	PAY_ORDERER_HP 		VARCHAR(50), 
	CARD_COMPANY_NM 	VARCHAR(50),
	CARD_PAY_MONTH 		VARCHAR(20),
    PAY_ORDER_TIME 		DATETIME
);

CREATE TABLE CART (
	CART_CD   	   INT AUTO_INCREMENT PRIMARY KEY,
	MEMBER_ID 	   VARCHAR(20),
	GOODS_CD  	   INT,
	CART_GOODS_QTY INT,
	ENROLL_DT 	   DATETIME
);

CREATE TABLE CONTACT (
	CONTACT_CD  INT AUTO_INCREMENT PRIMARY KEY,
	NAME		VARCHAR(50),
	EMAIL		VARCHAR(50),
	SUBJECT		VARCHAR(300),
	CONTENT		VARCHAR(2000),
	REG_DT  	DATETIME
);