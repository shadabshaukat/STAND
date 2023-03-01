-- SQlLite --

CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_id INTEGER,
  product_id INTEGER,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR(500)
);


-- Create a procedure to insert random data into the 'orders' table in SQLite and optimize it for performance --

CREATE PROCEDURE add_random_orders(@n INTEGER)
AS
BEGIN
  PRAGMA foreign_keys=off;

  WITH RECURSIVE cnt(x) AS (
      SELECT 1 UNION ALL SELECT x+1 FROM cnt WHERE x < @n
  )
  INSERT INTO orders (customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
  SELECT
      (CAST(RANDOM() * 100 AS INTEGER) + 1),
      (CAST(RANDOM() * 50 AS INTEGER) + 1),
      ('Product ' || CAST(RANDOM() * 10 AS INTEGER) + 1),
      ('Address ' || CAST(RANDOM() * 10 AS INTEGER) + 1),
      (DATE('now', '-' || CAST(RANDOM() * 30 AS INTEGER) || ' days')),
      ('Note ' || CAST(RANDOM() * 10 AS INTEGER) + 1)
  FROM cnt;

  PRAGMA foreign_keys=on;

  SELECT @n || ' random orders added.' AS message;
END;


-- Generate Random Data --

CALL add_random_orders(10000);


-- Cleanup --

drop table orders;
drop procedure add_random_orders;
