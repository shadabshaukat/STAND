-- Oracle Database --

CREATE TABLE orders (
  order_id NUMBER(38) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  customer_id NUMBER(38),
  product_id NUMBER(38),
  product_description VARCHAR2(500),
  order_delivery_address VARCHAR2(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR2(500)
);

-- Create Procedure to insert 'n' random records --
-- We're generating random data for the 'orders' table and storing it in a collection. We're then using the GENERATED ALWAYS AS IDENTITY column for the 'order_id' field to automatically generate unique 'order_id' values for each new row inserted into the table.
-- We're also using the BULK COLLECT feature to insert the entire collection of 'orders' records into the database at once, which can be faster than inserting each row one at a time.
-- With these modifications, the procedure should be able to generate and insert a large number of random orders into the 'orders' table quickly and efficiently.

CREATE OR REPLACE PROCEDURE add_random_orders(n IN NUMBER)
IS
  TYPE t_orders IS TABLE OF orders%ROWTYPE;
  v_orders t_orders := t_orders();
BEGIN
  -- Generate random orders and add to collection
  FOR i IN 1..n LOOP
    v_orders.EXTEND;
    v_orders(i).customer_id := FLOOR(DBMS_RANDOM.VALUE(1, 100));
    v_orders(i).product_id := FLOOR(DBMS_RANDOM.VALUE(1, 50));
    v_orders(i).product_description := 'Product ' || (FLOOR(DBMS_RANDOM.VALUE(1, 10)) + 1);
    v_orders(i).order_delivery_address := 'Address ' || (FLOOR(DBMS_RANDOM.VALUE(1, 10)) + 1);
    v_orders(i).order_date_taken := TRUNC(SYSDATE) - FLOOR(DBMS_RANDOM.VALUE(1, 30));
    v_orders(i).order_misc_notes := 'Note ' || (FLOOR(DBMS_RANDOM.VALUE(1, 10)) + 1);
  END LOOP;
  -- Insert collection into database using BULK COLLECT
  FORALL i IN 1..v_orders.COUNT
    INSERT INTO orders (customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
    VALUES (v_orders(i).customer_id, v_orders(i).product_id, v_orders(i).product_description, v_orders(i).order_delivery_address, v_orders(i).order_date_taken, v_orders(i).order_misc_notes);
  COMMIT;
  DBMS_OUTPUT.PUT_LINE(n || ' random orders added.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    ROLLBACK;
END;
/

-- Execute Procedure --

BEGIN
  add_random_orders(100000);
END;
/


-- Cleanup --

--drop table orders;
--drop procedure add_random_orders;
