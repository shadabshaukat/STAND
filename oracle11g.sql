-- Oracle Database Version 11.2 Compatible --

-- Create orders table
CREATE TABLE orders (
  order_id NUMBER(38) PRIMARY KEY,
  customer_id NUMBER(38),
  product_id NUMBER(38),
  product_description VARCHAR2(500),
  order_delivery_address VARCHAR2(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR2(500)
);

-- Create sequence for order_id
CREATE SEQUENCE orders_seq START WITH 1 INCREMENT BY 1;

-- Create trigger to auto-increment order_id using the sequence
CREATE OR REPLACE TRIGGER orders_bir
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
  SELECT orders_seq.NEXTVAL INTO :new.order_id FROM dual;
END;
/


-- Create Procedure to Generate 'n' Random Records --
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
  add_random_orders(1000);
END;
/


-- Cleanup --

--drop table orders;
--drop procedure add_random_orders;
