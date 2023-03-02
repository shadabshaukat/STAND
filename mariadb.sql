-- MariaDB --

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR(500)
);


-- Create a procedure to insert random data into the 'orders' table in MySQL --

DELIMITER //

CREATE PROCEDURE add_random_orders(n INT)
BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE v_customer_id INT;
  DECLARE v_product_id INT;
  DECLARE v_product_description VARCHAR(500);
  DECLARE v_order_delivery_address VARCHAR(500);
  DECLARE v_order_date_taken DATE;
  DECLARE v_order_misc_notes VARCHAR(500);

  START TRANSACTION;

  WHILE i <= n DO
    SET v_customer_id = FLOOR(RAND() * 100) + 1;
    SET v_product_id = FLOOR(RAND() * 50) + 1;
    SET v_product_description = CONCAT('Product ', FLOOR(RAND() * 10) + 1);
    SET v_order_delivery_address = CONCAT('Address ', FLOOR(RAND() * 10) + 1);
    SET v_order_date_taken = DATE_SUB(CURRENT_DATE(), INTERVAL FLOOR(RAND() * 30) DAY);
    SET v_order_misc_notes = CONCAT('Note ', FLOOR(RAND() * 10) + 1);

    INSERT INTO orders (customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
    VALUES (v_customer_id, v_product_id, v_product_description, v_order_delivery_address, v_order_date_taken, v_order_misc_notes);

    SET i = i + 1;
  END WHILE;

  COMMIT;

  SELECT CONCAT(n, ' random orders added.') AS message;
END//

DELIMITER ;


-- Generate and insert 10k random orders into the 'orders' table using the procedure --

CALL add_random_orders(10000);

-- Cleanup --

drop table orders;
drop procedure add_random_orders;
