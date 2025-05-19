# Question 1

-- Create a new table to store order products
CREATE TABLE OrderProducts (
  OrderID INT,
  Product VARCHAR(255)
);

-- Insert data into the new table
INSERT INTO OrderProducts (OrderID, Product)
VALUES
  (101, 'Laptop'),
  (101, 'Mouse'),
  (102, 'Tablet'),
  (102, 'Keyboard'),
  (102, 'Mouse'),
  (103, 'Phone');

-- Select the data to verify the transformation
SELECT * FROM OrderProducts;

#Question 2
-- Create a new table to store orders
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(255)
);

-- Create a new table to store order details
CREATE TABLE OrderDetails (
  OrderID INT,
  Product VARCHAR(255),
  Quantity INT,
  PRIMARY KEY (OrderID, Product),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert data into the Orders table
INSERT INTO Orders (OrderID, CustomerName)
VALUES
  (101, 'John Doe'),
  (102, 'Jane Smith'),
  (103, 'Emily Clark');

-- Insert data into the OrderDetails table
INSERT INTO OrderDetails (OrderID, Product, Quantity)
VALUES
  (101, 'Laptop', 2),
  (101, 'Mouse', 1),
  (102, 'Tablet', 3),
  (102, 'Keyboard', 1),
  (102, 'Mouse', 2),
  (103, 'Phone', 1);

-- Select the data to verify the transformation
SELECT * FROM Orders;
SELECT * FROM OrderDetails;
