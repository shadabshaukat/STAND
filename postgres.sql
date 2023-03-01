-- PostgreSQL --

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  product_id INTEGER,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR(500)
);


-- Create a function to insert random data into the 'orders' table in PostgreSQL and optimize it for performance --

CREATE OR REPLACE FUNCTION add_random_orders(n INTEGER) RETURNS TEXT AS $$
DECLARE
  i INTEGER := 1;
  v_customer_id INTEGER;
  v_product_id INTEGER;
  v_product_description VARCHAR(500);
  v_order_delivery_address VARCHAR(500);
  v_order_date_taken DATE;
  v_order_misc_notes VARCHAR(500);
BEGIN
  WHILE i <= n LOOP
    v_customer_id := floor(random() * 100) + 1;
    v_product_id := floor(random() * 50) + 1;
    v_product_description := CONCAT('Product ', floor(random() * 10) + 1);
    v_order_delivery_address := CONCAT('Address ', floor(random() * 10) + 1);
    v_order_date_taken := CURRENT_DATE - (floor(random() * 30) || ' days')::INTERVAL;
    v_order_misc_notes := CONCAT('Note ', floor(random() * 10) + 1);

    INSERT INTO orders (customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
    VALUES (v_customer_id, v_product_id, v_product_description, v_order_delivery_address, v_order_date_taken, v_order_misc_notes);

    i := i + 1;
  END LOOP;

  RETURN n || ' random orders added.';
EXCEPTION
  WHEN OTHERS THEN
    RAISE EXCEPTION 'Error: %', SQLERRM;
END;
$$ LANGUAGE plpgsql;


--  Execute the function --

SELECT add_random_orders(10000);


-- Cleanup --

drop table orders;
drop function add_random_orders;

