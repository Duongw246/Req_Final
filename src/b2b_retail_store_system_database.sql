USE b2b_retail_store_system;

CREATE TABLE Branch (
	branchID INT PRIMARY KEY,
    branchAdress varchar(255)
);

CREATE TABLE Admin (
	adminID INT PRIMARY KEY,
    adminName varchar(255),
    adminAddress varchar(255),
    adminPhone varchar(255),
    adminEmail varchar(255),
    branchID INT,
    FOREIGN KEY (branchID) REFERENCES Branch(branchID)
);
    
CREATE TABLE Staff (
  	staffID INT PRIMARY KEY,
    staffName VARCHAR(255),
    staffAddress VARCHAR(255),
    staffPhone VARCHAR(255),
    staffEmail VARCHAR(255),
    adminID INT,
    FOREIGN KEY (adminID) REFERENCES Admin(adminID)
);

CREATE TABLE Inventory (
	inventoryID INT PRIMARY KEY,
    inventoryName varchar(255),
    inventoryQuantity varchar(255),
    branchID INT,
    FOREIGN KEY (branchID) REFERENCES Branch(branchID)
);

CREATE TABLE Customer (
	customerID INT PRIMARY KEY,
    customerName varchar(255),
    customerPhone varchar(255),
    customerAddress varchar(255),
    customerEmail varchar(255),
    customerDOB DATE,
    customerPurchaseHistory varchar(255)
);

CREATE TABLE Orders (
    orderID INT PRIMARY KEY,
    customerID INT,
    orderDate DATE,
    orderTotalAmount DECIMAL(10,2),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

CREATE TABLE Invoices (
    invoiceID INT PRIMARY KEY,
    orderID INT,
    invoiceDate DATE,
    invoiceTotalAmount DECIMAL(10,2),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID)
);

CREATE TABLE Product (
	productID INT PRIMARY KEY,
    productName varchar(255),
    productCategory varchar(255),
    productBarcode BIT(64),
    productImportPrice double,
    productRetailPrice double
);

CREATE TABLE Report (
	reportID INT PRIMARY KEY,
    reportDate DATE,
    reportRevenue double
);