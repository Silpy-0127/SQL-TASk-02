
-- Reset all tables
TRUNCATE TABLE Payments, OrderItems, Orders, Inventory, Products, Categories, Customers, Sellers RESTART IDENTITY CASCADE;

-- Insert 10 Sellers
INSERT INTO Sellers (Name, Email, Phone, ShopName, Address) VALUES
('Ravi Kumar', 'ravidubey@gmail.com', '9876543210', 'Ravi Store', 'Bangalore'),
('Anjali Sharma', 'anjali034@gmail.com', '9123456789', 'Anjali Mart', 'Mumbai'),
('Ramesh Patel', 'rameshbabu045@gmail.com', '9888777666', 'Patel Store', 'Ahmedabad'),
('Sunita Rao', 'sunitasharma@gmail.com', '9855554444', 'Sunita Shop', 'Hyderabad'),
('Amit Singh', 'amitsingh@egmail.com', '9988998877', 'Amit Traders', 'Delhi'),
('Neha Jain', 'nehayadav@gmail.com', '9777766666', 'Neha Mart', 'Jaipur'),
('Suresh Das', 'suresh2345@gmail.com', '9765432100', 'Das Bazar', 'Kolkata'),
('Pooja Mehra', NULL, '9456781234', 'Pooja Store', 'Pune'),
('Kiran Joshi', 'kirandesai@gmail.com', NULL, 'Joshi Market', 'Indore'),
('Meena Gupta', 'meenamishra@gmail.com', '9876512345', 'Meena Mart', 'Chandigarh');

-- Insert 10 Customers
INSERT INTO Customers (Name, Email, Phone, Address) VALUES
('Sohan Mehta', 'sohanlal89@gmail.com', '9988776655', 'Delhi'),
('Priya Desai', 'priyamehta034@gmail.com', '9876543211', 'Chennai'),
('Alok Tiwari', 'alokasharma@gmail.com', '8074568930', 'Lucknow'),
('Tina Singh', NULL, '9123456780', 'Bhopal'),
('Varun Rao', 'varunchauhan@gmail.com', NULL, 'Hyderabad'),
('Kavita Sharma', 'kavitayadav@example.com', '9012345678', 'Agra'),
('Deepak Kumar', 'deepak079@gmail.com', '9023456789', 'Amritsar'),
('Rekha Verma', 'rekha7890@gmail.com', '9034567890', 'Patna'),
('Arjun Gill', 'arjun0923@gmail.com', NULL, 'Ludhiana'),
('Nisha Joshi', 'nishapatil@gmail.com', '9876540000', 'Nashik');

-- Insert 10  Categories
INSERT INTO Categories (CategoryName)VALUES 
('Electronics'), 
('Groceries'),
('Clothing'),
('Books'),
('Toys'),
('Beauty'),
('Sports'),
('Home Decor'),
('Stationery'),
('Footwear');

-- Insert 10 Products
INSERT INTO Products (SellerID, CategoryID, Name, Description, Price)
VALUES 
(1, 1, 'Bluetooth Speaker', 'Portable speaker with deep bass', 1500.00),
(2, 2, 'Organic Rice', '1kg bag of premium rice', 120.00),
(3, 3, 'Cotton Shirt', 'Men''s full-sleeve shirt', 850.00),
(4, 4, 'Notebook Set', 'Pack of 5 ruled notebooks', 250.00),
(5, 5, 'Remote Car', 'Rechargeable toy car', 600.00),
(6, 6, 'Face Cream', 'Daily moisturizing cream', 300.00),
(7, 7, 'Cricket Bat', 'Lightweight tennis bat', 1200.00),
(8, 8, 'Wall Clock', 'Stylish home decor clock', 700.00),
(9, 9, 'Pen Set', 'Luxury pen set of 10', 180.00),
(10, 10, 'Running Shoes', 'Sports shoes size 9', 2200.00);

--Insert 10 inventory
INSERT INTO Inventory (ProductID, QuantityAvailable, LastRestocked)VALUES 
(1, 30, '2024-06-01'),
(2, 100, '2024-06-10'),
(3, 45, '2024-06-05'),
(4, 200, '2024-06-08'),
(5, 60, '2024-06-12'),
(6, 90, '2024-06-15'),
(7, 35, '2024-06-17'),
(8, 40, '2024-06-20'),
(9, 80, '2024-06-21'),
(10, 50, '2024-06-22');

-- Insert 10 Orders
INSERT INTO Orders (CustomerID, Status)
VALUES 
(1, 'Shipped'),
(2, 'Processing'),
(3, 'Delivered'),
(4, 'Cancelled'),
(5, 'Shipped'),
(6, 'Processing'),
(7, 'Delivered'),
(8, 'Pending'),
(9, 'Processing'),
(10, 'Shipped');

-- Insert 10 OrderItems
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price)VALUES 
(1, 1, 2, 3000.00),
(2, 2, 5, 600.00),
(3, 3, 1, 850.00),
(4, 4, 10, 2500.00),
(5, 5, 3, 1800.00),
(6, 6, 2, 600.00),
(7, 7, 1, 1200.00),
(8, 8, 2, 1400.00),
(9, 9, 6, 1080.00),
(10, 10, 1, 2200.00);

-- Insert 10 Payments
INSERT INTO Payments (OrderID, PaymentMethod, Amount)VALUES 
(1, 'UPI', 3000.00),
(2, 'Credit Card', 600.00),
(3, 'Net Banking', 850.00),
(4, 'Wallet', 2500.00),
(5, 'UPI', 1800.00),
(6, 'Credit Card', 600.00),
(7, 'Net Banking', 1200.00),
(8, 'UPI', 1400.00),
(9, 'Wallet', 1080.00),
(10, 'Credit Card', 2200.00);


-- Update Sellers where email or phone is NULL
UPDATE Sellers SET Email = 'pooja@store.com' WHERE Email IS NULL;
UPDATE Sellers SET Phone = '9050791230' WHERE Phone IS NULL;

-- Update Customers where email or phone is NULL
UPDATE Customers SET Email = 'tinarajeshwari@gmail.com' WHERE Email IS NULL;
UPDATE Customers SET Phone = '9111111111' WHERE Phone IS NULL;
UPDATE Customers SET Phone = '9222222222' WHERE Name = 'Arjun Gill';

-- Update category name and Rename another category
UPDATE Categories SET CategoryName = 'Consumer Electronics' WHERE CategoryName = 'Electronics';
UPDATE Categories SET CategoryName = 'Fresh Groceries' WHERE CategoryName = 'Groceries';

-- Update price for a specific product and Update product description for other
UPDATE Products SET Price = 1600.00 WHERE Name = 'Bluetooth Speaker';
UPDATE Products SET Description = 'Premium 1kg bag of organic rice' WHERE Name = 'Organic Rice';

-- Increase stock for a specific product and Update restock date
UPDATE Inventory SET QuantityAvailable = QuantityAvailable + 20 WHERE ProductID = 1;
UPDATE Inventory SET LastRestocked = '2024-06-30' WHERE ProductID = 2;

-- Update order status and Backdate an order
UPDATE Orders SET Status = 'Delivered' WHERE Status = 'Processing';
UPDATE Orders SET OrderDate = '2024-06-01' WHERE OrderID = 1;

-- Update quantity in an order item and Adjust price
UPDATE OrderItems SET Quantity = 3 WHERE OrderID = 1 AND ProductID = 1;
UPDATE OrderItemsSET Price = 180.00 WHERE ProductID = 9;

-- Update payment method and Correct amount
UPDATE Payments SET PaymentMethod = 'Debit Card' WHERE PaymentMethod = 'Wallet';
UPDATE Payments SET Amount = 2999.00 WHERE OrderID = 1;


-- All Delete Operation
-- Step 1: Delete payments linked to orders that will be deleted
DELETE FROM Payments
WHERE OrderID IN (
    SELECT OrderID FROM Orders
    WHERE Status IN ('Cancelled', 'Pending')
    OR CustomerID IN (
        SELECT CustomerID FROM Customers
        WHERE Phone LIKE '90%'
    )
);

-- Step 2: Delete order items linked to:
-- a) Orders with 'Cancelled' or 'Pending' status
-- b) Orders placed by customers with phone numbers starting with '90'
-- c) Products that will be deleted
DELETE FROM OrderItems
WHERE OrderID IN (
    SELECT OrderID FROM Orders
    WHERE Status IN ('Cancelled', 'Pending')
    OR CustomerID IN (
        SELECT CustomerID FROM Customers
        WHERE Phone LIKE '90%'
    )
)
OR ProductID IN (
    SELECT ProductID FROM Products
    WHERE Price > 1500 OR Name LIKE '%Pen%'
    OR SellerID IN (
        SELECT SellerID FROM Sellers
        WHERE Address IN ('Pune', 'Indore', 'Chandigarh', 'Jaipur', 'Kolkata')
    )
);

-- Step 3: Delete orders with targeted statuses or customers
DELETE FROM Orders
WHERE Status IN ('Cancelled', 'Pending')
OR CustomerID IN (
    SELECT CustomerID FROM Customers
    WHERE Phone LIKE '90%'
);

-- Step 4: Delete customers with phone numbers starting with '90'
DELETE FROM Customers
WHERE Phone LIKE '90%';

-- Step 5: Delete inventory for products to be deleted
DELETE FROM Inventory
WHERE ProductID IN (
    SELECT ProductID FROM Products
    WHERE Price > 1500 OR Name LIKE '%Pen%'
    OR SellerID IN (
        SELECT SellerID FROM Sellers
        WHERE Address IN ('Pune', 'Indore', 'Chandigarh', 'Jaipur', 'Kolkata')
    )
)
OR QuantityAvailable < 50;

-- Step 6: Delete products that are:
-- a) Too expensive
-- b) Named with 'Pen'
-- c) Belong to sellers in demo cities
DELETE FROM Products
WHERE Price > 1500 OR Name LIKE '%Pen%'
OR SellerID IN (
    SELECT SellerID FROM Sellers
    WHERE Address IN ('Pune', 'Indore', 'Chandigarh', 'Jaipur', 'Kolkata')
);

-- Step 7: Now delete sellers located in demo cities
DELETE FROM Sellers
WHERE Address IN ('Pune', 'Indore', 'Chandigarh', 'Jaipur', 'Kolkata');

-- Step 8: Delete demo or unused categories
DELETE FROM Categories
WHERE CategoryName IN ('Stationery', 'Footwear');

-- Final view to verify all remaining data
SELECT * FROM Sellers;
SELECT * FROM Customers;
SELECT * FROM Categories;
SELECT * FROM Products;
SELECT * FROM Inventory;
SELECT * FROM Orders;
SELECT * FROM OrderItems;
SELECT * FROM Payments;



