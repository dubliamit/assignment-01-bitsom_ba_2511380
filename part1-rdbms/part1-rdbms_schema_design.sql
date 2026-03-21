-- 1. Customers Table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL UNIQUE,
    customer_city VARCHAR(50) NOT NULL
);

-- 2. Products Table
DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

-- 3. Sales Representatives Table
DROP TABLE IF EXISTS Sales_Reps;
CREATE TABLE Sales_Reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL UNIQUE,
    office_address VARCHAR(200) NOT NULL
);

-- 4. Orders Table
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    sales_rep_id VARCHAR(10) NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),        
    FOREIGN KEY (sales_rep_id) REFERENCES Sales_Reps(sales_rep_id)  
);

-- 5. Order_Items Table
DROP TABLE IF EXISTS Order_Items;
CREATE TABLE Order_Items (
    order_item_id VARCHAR(10) PRIMARY KEY,
    order_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Sales_Reps;
SELECT * FROM Orders;
SELECT * FROM Order_Items;

-- 5. Inserting values into all tables
INSERT INTO Customers (customer_id, customer_name, customer_email, customer_city) VALUES
('C001','Rohan Mehta', 'rohan@gmail.com', 'Mumbai'),
('C002','Priya Sharma', 'priya@gmail.com', 'Delhi'),
('C003','Amit Verma', 'amit@gmail.com', 'Bangalore'),
('C004','Sneha Iyer', 'sneha@gmail.com', 'Chennai'),
('C005','Vikram Singh', 'vikram@gmail.com', 'Mumbai');

INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
('P001','Laptop', 'Electronics', 55000),
('P002','Mouse', 'Electronics', 800),
('P003','Desk Chair', 'Furniture', 8500),
('P004','Notebook', 'Stationery', 120),
('P005','Headphones', 'Electronics', 3200);

INSERT INTO Sales_Reps (sales_rep_id, sales_rep_name, sales_rep_email, office_address) VALUES
('SR01','Deepak Joshi', 'deepak@corp.com', 'Mumbai HQ, Nariman Point, Mumbai - 400021'),
('SR02','Anita Desai', 'anita@corp.com', 'Delhi Office, Connaught Place, New Delhi - 110001'),
('SR03','Ravi Kumar', 'ravi@corp.com', 'South Zone, MG Road, Bangalore - 560001');

INSERT INTO Orders (order_id, customer_id, sales_rep_id, order_date) VALUES
('ORD1000', 'C002', 'SR03','2023-05-21'),
('ORD1001', 'C004', 'SR03','2023-02-22'),
('ORD1002', 'C002', 'SR02','2023-01-17'),
('ORD1003', 'C002', 'SR01','2023-09-16'),
('ORD1004', 'C001', 'SR01','2023-11-29');

INSERT INTO Order_Items (order_item_id,order_id, product_id, quantity) VALUES
(1,'ORD1000', 'P001', 2),
(2,'ORD1001', 'P002', 5),
(3,'ORD1002', 'P005', 1),
(4,'ORD1003', 'P002', 5),
(5,'ORD1004', 'P005', 5);
