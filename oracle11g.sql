-- Oracle Database Version 11.2.0.4 Compatible --
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


