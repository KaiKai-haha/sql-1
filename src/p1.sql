//employees
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    position TEXT,
    department TEXT,
    salary NUMERIC
);

//sales
CREATE TABLE sales (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES inventories(product_id)
);

//customers
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    city TEXT
);

//orders
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_id INTEGER,
    total_amount NUMERIC,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

//inventories
CREATE TABLE inventories (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    quantity INTEGER,
    price NUMERIC
);



INSERT INTO employees (name, position, department, salary)
VALUES
    ('Kai Kai', 'Manager', 'Sales', 70000),
    ('Jason Lee', 'Developer', 'IT', 80000),
    ('Richard Ben', 'Clerk', 'HR', 40000);

INSERT INTO customers (customer_name, city)
VALUES
    ('Ben', 'New York'),
    ('John', 'Los Angeles');

INSERT INTO inventories (product_name, quantity, price)
VALUES
    ('Book', 100, 50),
    ('Charger', 200, 75);

INSERT INTO orders (order_date, customer_id, total_amount)
VALUES
    ('2023-09-15', 1, 500),
    ('2023-09-17', 2, 750);
