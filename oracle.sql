-- Oracle Database --

CREATE TABLE orders (
  order_id NUMBER(38) PRIMARY KEY,
  customer_id NUMBER(38),
  product_id NUMBER(38),
  product_description VARCHAR2(500),
  order_delivery_address VARCHAR2(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR2(500)
);


-- PL/SQL Procedure to INSERT 'n' random Records to 'orders' Table -- 

CREATE OR REPLACE PROCEDURE add_random_orders(n IN NUMBER)
IS
  i NUMBER := 1;
  v_order_id NUMBER;
  CURSOR c_orders IS
    SELECT order_id FROM orders;
BEGIN
  WHILE i <= n LOOP
    v_order_id := i;
    -- Check if record with same order_id exists
    FOR o IN c_orders LOOP
      IF v_order_id = o.order_id THEN
        v_order_id := v_order_id + 1;
      END IF;
    END LOOP;
    -- Insert new record with updated order_id
    INSERT INTO orders (
      order_id, 
      customer_id, 
      product_id, 
      product_description, 
      order_delivery_address, 
      order_date_taken, 
      order_misc_notes
    ) VALUES (
      v_order_id,
      FLOOR(DBMS_RANDOM.VALUE(1, 100)),
      FLOOR(DBMS_RANDOM.VALUE(1, 50)),
      'Product ' || (FLOOR(DBMS_RANDOM.VALUE(1, 10)) + 1),
      'Address ' || (FLOOR(DBMS_RANDOM.VALUE(1, 10)) + 1),
      TRUNC(SYSDATE) - FLOOR(DBMS_RANDOM.VALUE(1, 30)),
      'Note ' || (FLOOR(DBMS_RANDOM.VALUE(1, 10)) + 1)
    );
    i := i + 1;
  END LOOP;
  COMMIT;
  DBMS_OUTPUT.PUT_LINE(n || ' random orders added.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    ROLLBACK;
END;
/


-- Generate 1,000 Random Records --

BEGIN
  add_random_orders(1000);
END;


