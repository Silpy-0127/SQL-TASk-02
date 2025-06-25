# SQL Internship - Task 2: Data Insertion and Handling Nulls (MySQL)

## 📌 About the Task
This task focuses on practicing **DML (Data Manipulation Language)** operations using **MySQL**.  
The objective was to insert sample data, handle missing (`NULL`) values, and perform meaningful `UPDATE` and `DELETE` operations to maintain clean and consistent records.

---

## 🏠 Database Overview
The database used is `RentalDB`, designed to manage rental property listings and transactions.  
It includes the following 6 relational tables:

- `Locations`  
- `Owners`  
- `Properties`  
- `Renters`  
- `Bookings`  
- `Payments`  

All tables are connected using foreign keys to preserve relationships between properties, renters, and their transactions.

---

## ✅ What I Did

### 🔸 Data Insertion
- Inserted **10 sample records** into each table.  
- Included `NULL` values in fields like `ZipCode`, `Phone`, and `RentAmount` to reflect real-world missing data scenarios.

### 🔸 Handling Nulls & Updates
- Used `UPDATE` queries to populate missing fields, such as:
  - Adding phone numbers
  - Setting missing rents
  - Filling in booking end dates

### 🔸 Deleting Unwanted Data
- Used `DELETE` to remove:
  - Properties where `AvailableFrom IS NULL`
  - Bookings without `EndDate`

---

## 💡 MySQL Specific Notes
- Used `AUTO_INCREMENT` for primary key fields  
- Proper foreign key constraints to maintain referential integrity  
- Compatible with MySQL Workbench, CLI, or DB Fiddle (MySQL 8.0+)

---

## 📂 Files Included

- `schema.sql` – Contains all `INSERT`, `UPDATE`, and `DELETE` statements  
- `README.md` – This file explaining the objective and implementation

---

## 🛠️ Tools Used

- **PG Admin** (for execution and testing)





