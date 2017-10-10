CREATE DATABASE Bamazon;
USE Bamazon;
CREATE TABLE Products(
	ItemID INTEGER(10) AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    Price DECIMAL(10) NOT NULL,
    StockQuantity INTEGER(10),
    primary key (ItemId)
);
/*syntax for creating new product*/
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('A-line Skirt','Clothing',15.00,200);

/*made mistake in usage of DECIMAL, delete old and create new correct column*/
ALTER TABLE Products DROP COLUMN Price;
ALTER TABLE Products ADD COLUMN Price DECIMAL(10,2) NOT NULL;

/*Create new row to ensure database has data*/
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('3 piece bracelet set','Accessories',5.99,100);

/* More options */

INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Blazer','Clothing',34.99,300);
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Snow Boots','Shoes',45.99,150);
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Ballet Flats','Shoes',23.49,200);

