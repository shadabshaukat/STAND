-- SQL Server --

CREATE TABLE orders (
  order_id INT IDENTITY(1,1) PRIMARY KEY,
  customer_id INT,
  product_id INT,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR(500)
);


-- Create a procedure to insert random data into the 'orders' table in SQL Server and optimize it for performance --

CREATE PROCEDURE add_random_orders (@n INT)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @i INT = 1;
  DECLARE @v_customer_id INT;
  DECLARE @v_product_id INT;
  DECLARE @v_product_description VARCHAR(500);
  DECLARE @v_order_delivery_address VARCHAR(500);
  DECLARE @v_order_date_taken DATE;
  DECLARE @v_order_misc_notes VARCHAR(500);

  BEGIN TRANSACTION;

  WHILE @i <= @n
  BEGIN
    SET @v_customer_id = CAST(RAND() * 100 AS INT) + 1;
    SET @v_product_id = CAST(RAND() * 50 AS INT) + 1;
    SET @v_product_description = CONCAT('Product ', CAST(RAND() * 10 AS INT) + 1);
    SET @v_order_delivery_address = CONCAT('Address ', CAST(RAND() * 10 AS INT) + 1);
    SET @v_order_date_taken = DATEADD(DAY, -CAST(RAND() * 30 AS INT), GETDATE());
    SET @v_order_misc_notes = CONCAT('Note ', CAST(RAND() * 10 AS INT) + 1);

    INSERT INTO orders (customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
    VALUES (@v_customer_id, @v_product_id, @v_product_description, @v_order_delivery_address, @v_order_date_taken, @v_order_misc_notes);

    SET @i = @i + 1;
  END;

  COMMIT;

  SELECT CONCAT(@n, ' random orders added.') AS message;
END;


-- Generate Random Data --

EXEC add_random_orders @n = 10000

-- Cleanup --

drop table orders;
drop PROCEDURE add_random_orders;

