//Retrieve customer names, order dates, and total amounts for orders placed by 'New York' customers
SELECT c.customer_name, o.order_date, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.city = 'New York';

//Bonus: Include the average total amount per customer for orders from 'New York'
SELECT c.customer_name, o.order_date, o.total_amount, AVG(o.total_amount) OVER (PARTITION BY c.customer_id) AS avg_total
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.city = 'New York';

