CREATE DATABASE hibernate_lesson_06_hw;

CREATE TABLE hibernate_lesson_06_hw.CUSTOMERS (
  CUSTOMER_ID bigint NOT NULL AUTO_INCREMENT,
  CUSTOMER_NAME varchar(255) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
);

CREATE TABLE hibernate_lesson_06_hw.PRODUCTS (
  PRODUCT_ID bigint NOT NULL AUTO_INCREMENT,
  PRODUCT_NAME varchar(255) NOT NULL,
  PRODUCT_COST decimal(19,2) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
);

CREATE TABLE hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (
  CUSTOMER_ID bigint NOT NULL,
  PRODUCT_ID bigint NOT NULL,
  CONSTRAINT FK_CUSTOMER_ID FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS (CUSTOMER_ID),
  CONSTRAINT FK_PRODUCT_ID FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS (PRODUCT_ID)
);

INSERT INTO hibernate_lesson_06_hw.CUSTOMERS (CUSTOMER_NAME) VALUES ("Customer1");
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS (CUSTOMER_NAME) VALUES ("Customer2");
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS (CUSTOMER_NAME) VALUES ("Customer3");
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS (CUSTOMER_NAME) VALUES ("Customer4");
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS (CUSTOMER_NAME) VALUES ("Customer5");

INSERT INTO hibernate_lesson_06_hw.PRODUCTS (PRODUCT_NAME, PRODUCT_COST) VALUES ("Product1", 100);
INSERT INTO hibernate_lesson_06_hw.PRODUCTS (PRODUCT_NAME, PRODUCT_COST) VALUES ("Product2", 200);
INSERT INTO hibernate_lesson_06_hw.PRODUCTS (PRODUCT_NAME, PRODUCT_COST) VALUES ("Product3", 300);
INSERT INTO hibernate_lesson_06_hw.PRODUCTS (PRODUCT_NAME, PRODUCT_COST) VALUES ("Product4", 400);
INSERT INTO hibernate_lesson_06_hw.PRODUCTS (PRODUCT_NAME, PRODUCT_COST) VALUES ("Product5", 500);

INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (1, 1);
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (1, 2);
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (1, 3);
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (2, 1);
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (2, 3);
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (2, 5);
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (3, 1);
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (4, 2);
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (5, 4);
INSERT INTO hibernate_lesson_06_hw.CUSTOMERS_PRODUCTS (CUSTOMER_ID, PRODUCT_ID) VALUES (5, 5);