//Update price for a specific product by product_id
UPDATE inventories
SET price = 60
WHERE product_id = 1;

//Bonus: Increase price of all products by 10%
UPDATE inventories
SET price = price * 1.10;
