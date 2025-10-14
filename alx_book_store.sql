CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Authors";
CREATE TABLE IF NOT EXISTS "Authors" (
	"author_id "	INTEGER,
	"author_name"	VARCHAR(215),
	PRIMARY KEY("author_id ")
);
DROP TABLE IF EXISTS "Books";
CREATE TABLE IF NOT EXISTS "Books" (
	"book_id "	INTEGER,
	"title"	VARCHAR(130),
	"author_id "	INTEGER,
	"price"	DOUBLE,
	"publication_date"	DATE,
	FOREIGN KEY("author_id ") REFERENCES "Authors"("author_id "),
	PRIMARY KEY("book_id ")
);
DROP TABLE IF EXISTS "Customers";
CREATE TABLE IF NOT EXISTS "Customers" (
	"customer_id "	INTEGER,
	"customer_name"	VARCHAR(215), 
	"email"	VARCHAR(215),
	"address" TEXT,
	PRIMARY KEY("customer_id ")
);
DROP TABLE IF EXISTS "Orders";
CREATE TABLE IF NOT EXISTS "Orders" (
	"order_id "	INTEGER,
	"customer_id "	INTEGER,
	"order_date"	DATE,
	FOREIGN KEY("customer_id ") REFERENCES "Customers"("customer_id "),
	PRIMARY KEY("order_id ")
);
DROP TABLE IF EXISTS "Order_Details";
CREATE TABLE IF NOT EXISTS "Order_Details" (
	"orderdetailid "	INTEGER,
	"order_id "	INTEGER,
	"book_id "	INTEGER,
	"quantity "	DOUBLE,
	FOREIGN KEY("book_id ") REFERENCES "Books"("book_id "),
	FOREIGN KEY("order_id ") REFERENCES "Orders"("order_id "),
	PRIMARY KEY("orderdetailid ")
);
COMMIT;
