SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
WHERE order_date >= '1997-01-01'
GROUP BY customer_id
HAVING COUNT(order_id) > 5;

SELECT o.order_id, c.company_name, o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

SELECT c.company_name, o.order_id
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

SELECT SUM(od.unit_price * od.quantity) / COUNT(DISTINCT o.customer_id) AS avg_revenue_per_user
FROM orders o
JOIN order_details od ON o.order_id = od.order_id;

SELECT product_name, unit_price
FROM products
WHERE unit_price > (SELECT AVG(unit_price) FROM products);

CREATE INDEX idx_orders_customer_id ON orders(customer_id);

CREATE OR REPLACE VIEW high_value_customers AS
SELECT o.customer_id, c.company_name, SUM(od.unit_price * od.quantity) AS total_spent
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.company_name
HAVING SUM(od.unit_price * od.quantity) > 10000;

SELECT COALESCE(region, 'No Region') AS region_fixed, COUNT(*) AS total_customers
FROM customers
GROUP BY COALESCE(region, 'No Region');


