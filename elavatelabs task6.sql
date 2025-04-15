CREATE TABLE sales_data (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10, 2),
    OrderDate DATE
);

INSERT INTO sales_data (OrderID, CustomerName, Product, Quantity, Price, OrderDate)
VALUES
(1, 'John Doe', 'Laptop', 2, 800.00, '2025-01-15'),
(2, 'Jane Smith', 'Smartphone', 1, 600.00, '2025-01-20'),
(3, 'Alice Johnson', 'Laptop', 1, 800.00, '2025-02-10'),
(4, 'Bob Brown', 'Tablet', 3, 300.00, '2025-03-05'),
(5, 'Charlie Davis', 'Smartphone', 2, 600.00, '2025-03-10'),
(6, 'David White', 'Smartwatch', 5, 150.00, '2025-03-12'),
(7, 'Eve Black', 'Laptop', 1, 850.00, '2025-02-20'),
(8, 'Frank Green', 'Headphones', 2, 100.00, '2025-01-25'),
(9, 'Grace Hall', 'Tablet', 4, 300.00, '2025-02-18'),
(10, 'Hank Wilson', 'Laptop', 3, 800.00, '2025-03-01'),
(11, 'Isla Young', 'Smartphone', 1, 650.00, '2025-03-08'),
(12, 'James King', 'Laptop', 2, 780.00, '2025-01-30'),
(13, 'Kara Lee', 'Smartwatch', 3, 160.00, '2025-02-25'),
(14, 'Liam Carter', 'Tablet', 1, 320.00, '2025-03-03'),
(15, 'Mia Allen', 'Smartphone', 4, 580.00, '2025-01-10'),
(16, 'Nathan Scott', 'Laptop', 1, 850.00, '2025-02-15'),
(17, 'Olivia Taylor', 'Headphones', 3, 120.00, '2025-03-02'),
(18, 'Paul Martinez', 'Smartwatch', 2, 140.00, '2025-02-05'),
(19, 'Quinn Moore', 'Smartphone', 2, 620.00, '2025-03-06'),
(20, 'Rachel Adams', 'Tablet', 5, 290.00, '2025-01-18');


select * from sales_data;


SELECT SUM(Quantity * Price) AS TotalSales FROM sales_data;

SELECT Product, SUM(Quantity * Price) AS TotalSales
FROM sales_data
GROUP BY Product;


SELECT * 
FROM sales_data
WHERE OrderDate BETWEEN '2025-01-01' AND '2025-01-31';



SELECT 
  OrderID,
  CustomerName,
  Product,
  OrderDate,
  DATEPART(MONTH, OrderDate) AS OrderMonth,
  DATEPART(YEAR, OrderDate) AS OrderYear
FROM sales_data;

SELECT COUNT(*) AS TotalOrders
FROM sales_data;





