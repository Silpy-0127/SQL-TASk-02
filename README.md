# SQL Internship - TASK-02: Data Insertion and Handling Null Values, Performing Update and # Local Market E-Commerce Database – Internship Task 2

## 📌 Overview
This project simulates a backend database system for a local market e-commerce platform using **PostgreSQL**. It covers full **Data Definition** and **Data Manipulation** operations including:

- Data Reset  
- Bulk Insertion (10 records in each table)  
- Targeted Updates (handling `NULL`s and meaningful updates)  
- Conditional Deletions  
- Final verification through `SELECT` queries  

The schema is designed for a small seller ecosystem including sellers, products, customers, inventory, and transaction management.

---

## 🧱 Tables Involved

- `Sellers`  
- `Customers`  
- `Categories`  
- `Products`  
- `Inventory`  
- `Orders`  
- `OrderItems`  
- `Payments`

---

## 🔁 Operations Performed

### 1. TRUNCATE  
All tables are reset using:
```sql
TRUNCATE TABLE ... RESTART IDENTITY CASCADE;
This clears existing data and resets ID counters.

2. INSERT (10 Records Each)
Data is inserted into each table with variations including:

NULL values for update demonstration

Diverse categories, products, and payment methods

3. UPDATE (Multiple Tables)
Handled:

NULL correction for email/phone fields

Price and description updates

Stock restock and quantity changes

Order status and date corrections

Payment method and amount changes

4. DELETE (Conditional)
Deleted:

Customers with phone numbers starting with '90'

Sellers in specific test cities

Orders with status 'Cancelled' or 'Pending'

Inventory items with low stock

Products above a price threshold or containing keywords like 'Pen'

Unneeded categories such as 'Stationery', 'Footwear'

5. SELECT
Used SELECT * FROM queries at the end to confirm the final data state of all tables.

🛠️ Tools Used
PostgreSQL

pgAdmin 4

##▶️ How to Run
Open pgAdmin

Create or connect to a database (e.g., LocalMarketDB)

Open the Query Tool

Paste and run the provided SQL script

Verify your output using the final SELECT statements

##📝 Notes
RESTART IDENTITY resets all auto-incrementing primary key IDs

CASCADE ensures foreign key–linked deletions work correctly

Designed as an academic/internship project to practice:

INSERT, UPDATE, DELETE, SELECT

WHERE, LIKE, IN, IS NULL, CASCADE
