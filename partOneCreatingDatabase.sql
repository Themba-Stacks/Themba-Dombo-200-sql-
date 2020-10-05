CREATE DATABASE Umuzi;

CREATE TABLE "Customers" (
  "CustomerID" serial NOT NULL UNIQUE,
  "FirstName" character varying(50) NOT NULL,
  "LastName" character varying(50) NOT NULL,
  "Gender" character(10) NOT NULL,
  "Address" character varying(200) NOT NULL,
  "Phone" character(15) NOT NULL,
  "Email" character varying(100) NOT NULL,
  "City" character varying(20) NOT NULL,
  "Country" character varying(50) NOT NULL
)

INSERT INTO "Customers" ("FirstName", "LastName", "Gender", "Address", "Phone", "Email", "City", "Country")
VALUES ('John', 'Hibert', 'Male', '284 chaucer st', '084789657', 'john@gmail.com', 'Johannesburg', 'South Africa');

INSERT INTO "Customers" ("FirstName", "LastName", "Gender", "Address", "Phone", "Email", "City", "Country")
VALUES ('Thando', 'Sithole', 'Female', '240 Sect 1', '0794445584', 'thando@gmail.com', 'Cape Town', 'South Africa');

INSERT INTO "Customers" ("FirstName", "LastName", "Gender", "Address", "Phone", "Email", "City", "Country")
VALUES ('Leon', 'Glen', 'Male', '81 Everton Rd,Gillits', '0820832830', 'leon@gmail.com', 'Durban', 'South Africa');

INSERT INTO "Customers" ("FirstName", "LastName", "Gender", "Address", "Phone", "Email", "City", "Country")
VALUES ('Charl', 'Muller', 'Male', '290A Dorset Ecke', '+44856872553', 'Charl.muller@yahoo.com', 'Berlin', 'Germany');

INSERT INTO "Customers" ("FirstName", "LastName", "Gender", "Address", "Phone", "Email", "City", "Country")
VALUES ('Julia', 'Stein', 'Female', '2 Wernerring', '+448672445058', 'Js234@yahoo.com', 'Frankfurt', 'Germany');


CREATE TABLE "Employees" (
  "EmployeeID" serial NOT NULL UNIQUE,
  "FirstName" character varying(50) NOT NULL,
  "LastName" character varying(50) NOT NULL,
  "Email" character varying(100) NOT NULL,
  "JobTitle" character varying(20) NOT NULL
);

INSERT INTO "Employees" ("FirstName", "LastName", "Email", "JobTitle")
VALUES ('Kani', 'Matthew', 'mat@gmail.com', 'Manger');

INSERT INTO "Employees" ("FirstName", "LastName", "Email", "JobTitle")
VALUES ('Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk');

INSERT INTO "Employees" ("FirstName", "LastName", "Email", "JobTitle")
VALUES ('Gideon', 'Maduku', 'm@gmail.com', 'Accountant');


CREATE TABLE "Orders" (
  "OrdersID" serial NOT NULL UNIQUE,
  "ProductionID" integer NOT NULL,
  "PaymentID" integer NOT NULL,
  "FulFilledByEmployeeID" integer NOT NULL,
  "DateRequired" date NOT NULL,
  "DateShipped" date,
  "Status" character varying(20) NOT NULL 
);

INSERT INTO "Orders" ("ProductionID", "PaymentID", "FulFilledByEmployeeID", "DateRequired", "DateShipped", "Status")
VALUES ('1', '1', '2', '05-09-2018', NULL, 'Not shipped');

INSERT INTO "Orders" ("ProductionID", "PaymentID", "FulFilledByEmployeeID", "DateRequired", "DateShipped", "Status")
VALUES ('1', '2', '2', '04-09-2018', '03-09-2018', 'Shipped');

INSERT INTO "Orders" ("ProductionID", "PaymentID", "FulFilledByEmployeeID", "DateRequired", "DateShipped", "Status")
VALUES ('3', '3', '3', '06-09-2018', NULL, 'Not shipped');


CREATE TABLE "Payments" (
  "CustomerId" integer NOT NULL,
  "PaymentID" serial NOT NULL UNIQUE,
  "PaymentDate" date NOT NULL,
  "Amount" numeric NOT NULL
);

INSERT INTO "Payments" ("CustomerId", "PaymentDate", "Amount")
VALUES ('1', '01-09-2018', '150.75');

INSERT INTO "Payments" ("CustomerId", "PaymentDate", "Amount")
VALUES ('5', '03-09-2018', '150.75');

INSERT INTO "Payments" ("CustomerId", "PaymentDate", "Amount")
VALUES ('4', '03-09-2018', '700.60');


CREATE TABLE "Products" (
  "ProductID" serial NOT NULL UNIQUE,
  "ProductName" character varying(100) NOT NULL,
  "Description" character varying(300) NOT NULL,
  "BuyPrice" numeric NOT NULL
);

INSERT INTO "Products" ("ProductName", "Description", "BuyPrice")
VALUES ('Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', '150.75');

INSERT INTO "Products" ("ProductName", "Description", "BuyPrice")
VALUES ('Classic Car', 'Turnable front wheels, steering function', '550.75');

INSERT INTO "Products" ("ProductName", "Description", "BuyPrice")
VALUES ('Sports Car', 'Turnable front wheels, steering function', '700.60');
