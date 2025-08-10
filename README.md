# Internship Task 4 – SQL for Data Analysis (PostgreSQL)

## 📄 Overview
This project contains SQL queries executed on the **Northwind** PostgreSQL sample database as part of my Data Analyst internship **Task 4**.  
The queries demonstrate core SQL concepts including:
- Filtering data (`WHERE`, `HAVING`)
- Joining multiple tables (INNER, LEFT, RIGHT)
- Aggregate functions (`SUM`, `AVG`, `COUNT`)
- Subqueries
- Creating Views
- Query optimization with Indexes
- Handling NULL values

---

## 🗂 Dataset
The **Northwind** sample database simulates a small e-commerce business with:
- Customers
- Orders
- Products
- Order Details
- Categories
- Suppliers

The database was loaded into PostgreSQL using:
```sql
CREATE DATABASE northwind;
```
Then the schema and data were imported using `northwind.sql` and `northwind-data.sql`.

---

## 🛠 Tools Used
- **PostgreSQL** (v15+)
- **pgAdmin 4** for running queries and viewing results
- **Northwind sample database** (PostgreSQL version)

---

## ▶ Steps to Run
1. Create and load the `northwind` database in PostgreSQL.
2. Open **pgAdmin 4** and connect to the `northwind` database.
3. Open `task4.sql` in the **Query Tool**.
4. Run each query **one by one** and observe the output.
5. Take screenshots showing:
   - Query text (top panel)
   - Query results (bottom panel)
6. Save all screenshots.

---

## 📋 Queries in `task4.sql`
1. **WHERE vs HAVING** – Filtering before and after aggregation.
2. **INNER JOIN** – Matching customers with their orders.
3. **LEFT JOIN** – Showing all customers, even if they have no orders.
4. **RIGHT JOIN** – Showing all orders, even if no matching customer is found.
5. **Average Revenue Per User (ARPU)** – Using SUM and COUNT with DISTINCT.
6. **Subquery** – Products priced above the average price.
7. **Create Index** – Optimizing lookups on `customer_id` in `orders`.
8. **Create View** – High value customers who spent more than 10,000.
9. **Handling NULL Values** – Using `COALESCE` to replace NULLs with descriptive text.

---




## 📌 Author
**Garima Negi**  
Data Analyst Internship – Task 4 Submission  
