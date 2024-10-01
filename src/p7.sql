//Delete a specific customer by customer_id
DELETE FROM customers
WHERE customer_id = 1;

//Bonus: Delete associated records to maintain data integrity
DELETE FROM sales
WHERE customer_id = 1;

DELETE FROM orders
WHERE customer_id = 1;

DELETE FROM customers
WHERE customer_id = 1;

