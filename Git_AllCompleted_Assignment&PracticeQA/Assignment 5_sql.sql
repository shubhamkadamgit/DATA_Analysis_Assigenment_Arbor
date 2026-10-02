-- Task 1: Creating a Database and Table
-- Step 1: Create a Database
Create database ProductD;

-- Step 2:Create a Table
use ProductD;
CREATE TABLE Product (
    ProductID SMALLINT,
    ProductName VARCHAR(200),
    Category VARCHARACTER(50),
    Price DECIMAL,
    StockQuantity SMALLINT,
    ManufactureDate DATETIME,
    ExpiryDate DATETIME,
    SupplierName VARCHARACTER(200)
);
-- Task 2: Modifying the Table with ALTER Command
-- Step 1: Add a Column
-- 1.	Add a column named Description to the Products table.

alter table Product
add Descrip varchar(200);

desc product;

-- Step 2: Modify the Data Type of a Column
alter table Product
modify ExpiryDate date;



-- Step 3: Drop a Column
-- 1.Change the data type of the Category column.

Alter table product
modify Category varchar(100);

-- 2.Remove the ExpiryDate column from the Products table.
alter table product
drop ExpiryDate ;

-- Step 4: Add a Constraint
-- 1.	Add a unique constraint to the ProductName column.
alter table product
add constraint u_ProductName unique(ProductName);

-- Step 5: Drop a Constraint
-- 1.Remove the unique constraint from the ProductName column.
alter table product
drop index u_ProductName;

-- Step 6: Change the Column Name
-- 1.Rename the Price column to ProductPrice.
alter table product
rename column  Price to ProductPrice;

-- Step 7:
-- 1.Insert 10 rows in table using all forms
-- 2.Use update command
-- 3.Use Delete command
insert into Product
( ProductID, ProductName, Category, ProductPrice, StockQuantity, ManufactureDate, SupplierName,Descrip)
values(101, 'Organic Whole Milk 1L', 'Dairy', 3.49, 150, '2026-07-20 08:00:00', 'Dairy Pure Co.','Milk 1L');

select * from product;

insert into Product
( ProductID, ProductName, Category, ProductPrice, StockQuantity, ManufactureDate, SupplierName,Descrip) 
value
(102, 'Greek Yogurt Vanilla 500g', 'Dairy', 4.99, 85, '2026-07-15 06:30:00','Alpine Foods','Vanilla 500g'),
(103, 'Cheddar Cheese Block 250g', 'Dairy', 5.20, 200, '2026-06-01 10:00:00', 'Dairy Pure Co.','Block 250g'),
(104, 'Whole Wheat Bread 400g', 'Bakery', 2.50, 60, '2026-07-27 04:00:00', 'Golden Grain Bakery',' Bread 400g'),
(105, 'Salted Butter 200g', 'Dairy', 3.80, 110, '2026-07-10 09:15:00', 'Alpine Foods','Butter 200g'),
(106, 'Almond Milk Unsweetened 1L', 'Beverages', 3.99, 95, '2026-05-12 11:00:00', 'NutraLife Drinks','Unsweetened 1L'),
(107, 'Fresh Orange Juice 1L', 'Beverages', 4.50, 40, '2026-07-25 07:00:00', 'NutraLife Drinks','Juice 1L'),
(108, 'Dark Chocolate 85% 100g', 'Confectionery', 2.99, 300, '2026-03-01 14:00:00', 'Sweet Tooth Supplies','Chocolate 85% 100g'),
(109, 'Extra Virgin Olive Oil 500ml', 'Pantry', 8.99, 75, '2026-01-10 12:00:00','Mediterranean Imports','Olive Oil 500ml'),
(110, 'Oatmeal Porridge Oats 1kg', 'Pantry', 3.25, 180, '2026-04-18 09:00:00','Golden Grain Bakery','Oats 1kg');

select * from product;
update Product 
set stockQuantity = 100
where  productId=101;

DELETE FROM Product
WHERE ProductID = 110;
SELECT * FROM Product;