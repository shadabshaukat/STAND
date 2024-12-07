CREATE TABLE orders (
  order_id BIGINT,
  customer_id BIGINT,
  product_id BIGINT,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR(500)
);
