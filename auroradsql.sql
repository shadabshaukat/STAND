CREATE SCHEMA app;

CREATE TABLE app.orders (
  order_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  customer_id INTEGER,
  product_id INTEGER,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR(500)
);

CREATE OR REPLACE PROCEDURE app.populate_orders(records_to_insert INTEGER)
LANGUAGE plpgsql
AS $$
DECLARE
    i INTEGER;
    random_customer_id INTEGER;
    random_product_id INTEGER;
    random_product_desc VARCHAR(500);
    random_order_address VARCHAR(500);
    random_order_date DATE;
    random_misc_notes VARCHAR(500);
BEGIN
    FOR i IN 1..records_to_insert LOOP
        -- Generate random data
        random_customer_id := (SELECT trunc(random() * 10000 + 1)::INTEGER); -- Random customer ID between 1 and 10,000
        random_product_id := (SELECT trunc(random() * 1000 + 1)::INTEGER);   -- Random product ID between 1 and 1,000
        random_product_desc := (SELECT 'Product Description ' || random_customer_id);
        random_order_address := (SELECT 'Address ' || i || ', City ' || trunc(random() * 100 + 1)::INTEGER);
        random_order_date := CURRENT_DATE - trunc(random() * 365); -- Random date in the last year
        random_misc_notes := (SELECT 'Notes for order ' || i);
        
        -- Insert into the table
        INSERT INTO app.orders (
            customer_id, 
            product_id, 
            product_description, 
            order_delivery_address, 
            order_date_taken, 
            order_misc_notes
        )
        VALUES (
            random_customer_id, 
            random_product_id, 
            random_product_desc, 
            random_order_address, 
            random_order_date, 
            random_misc_notes
        );
    END LOOP;
END;
$$;
