//Calculate total quantity sold and average quantity per order
SELECT SUM(quantity) AS total_quantity, AVG(quantity) AS avg_quantity_per_order
FROM sales;

//Bonus: Include total sales amount and average sales amount per order
SELECT SUM(s.quantity * i.price) AS total_sales_amount, AVG(s.quantity * i.price) AS avg_sales_amount_per_order
FROM sales s
JOIN inventories i ON s.product_id = i.product_id;
