-- Part 2: Create Table
CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL,
  category TEXT,
  unit_price REAL,
  quantity_in_stock INTEGER,
  supplier TEXT
);

-- Part 3: Insert
INSERT INTO products VALUES
(1, 'Wireless Mouse', 'Electronics', 15.99, 120, 'TechSource'),
(2, 'Mechanical Keyboard', 'Electronics', 45.50, 60, 'TechSource'),
(3, 'USB-C Cable', 'Electronics', 8.25, 200, 'TechSource'),
(4, 'Office Chair', 'Furniture', 89.99, 35, 'ComfortCo'),
(5, 'Standing Desk', 'Furniture', 199.00, 15, 'ComfortCo'),
(6, 'Desk Lamp', 'Furniture', 22.75, 80, 'ComfortCo'),
(7, 'Printer Paper (Ream)', 'Office Supplies', 6.50, 300, 'PaperPlus'),
(8, 'Ballpoint Pens (Box)', 'Office Supplies', 4.25, 250, 'PaperPlus'),
(9, 'Sticky Notes (Pack)', 'Office Supplies', 3.10, 180, 'PaperPlus'),
(10, 'External Hard Drive', 'Electronics', 64.99, 40, 'TechSource'),
(11, 'Whiteboard Eraser', 'Office Supplies', 2.00, 90, 'PaperPlus');

-- Part 3: Read
SELECT * FROM products;

-- Part 3: Update
UPDATE products SET unit_price = 12.99 WHERE product_id = 1;

-- Part 3: Delete
DELETE FROM products WHERE product_id = 11;

-- Part 3: Confirm 10 rows
SELECT * FROM products;

-- Part 4.1: Aliases
SELECT product_name AS "Item Name", unit_price AS "Price" FROM products;

-- Part 4.2: Computed column
SELECT product_name, unit_price * quantity_in_stock AS "Total Value" FROM products;

-- Part 4.3: Concatenation
SELECT product_name || ' (' || category || ')' AS "Product Listing" FROM products;

-- Part 4.4: Filter multiple criteria
SELECT * FROM products WHERE category = 'Electronics' AND unit_price > 20;

-- Part 4.5: BETWEEN
SELECT * FROM products WHERE unit_price BETWEEN 10 AND 50;

-- Part 4.6: Sort by stock
SELECT * FROM products ORDER BY quantity_in_stock DESC;

-- Part 4.7: SUM
SELECT SUM(quantity_in_stock) AS "Total Stock" FROM products;

-- Part 4.8: COUNT
SELECT COUNT(*) AS "Office Supplies Count" FROM products WHERE category = 'Office Supplies';
