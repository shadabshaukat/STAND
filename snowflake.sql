-- Snowflake --

CREATE TABLE orders (
  order_id INTEGER AUTOINCREMENT PRIMARY KEY,
  customer_id INTEGER,
  product_id INTEGER,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR(500)
);


-- Create a procedure to insert random data into the 'orders' table in Snowflake and optimize it for performance --

CREATE OR REPLACE PROCEDURE add_random_orders(n INTEGER)
  RETURNS VARCHAR
  LANGUAGE JAVASCRIPT
  AS
  $$
    var sql_command = `INSERT INTO orders (customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes) VALUES `;
    var values = [];
    
    for (var i = 1; i <= n; i++) {
      var customer_id = Math.floor(Math.random() * 100) + 1;
      var product_id = Math.floor(Math.random() * 50) + 1;
      var product_description = 'Product ' + (Math.floor(Math.random() * 10) + 1);
      var order_delivery_address = 'Address ' + (Math.floor(Math.random() * 10) + 1);
      var order_date_taken = new Date(Date.now() - Math.floor(Math.random() * 30) * 86400000).toISOString().slice(0, 10);
      var order_misc_notes = 'Note ' + (Math.floor(Math.random() * 10) + 1);
      
      values.push(`(${customer_id}, ${product_id}, '${product_description}', '${order_delivery_address}', '${order_date_taken}', '${order_misc_notes}')`);
    }
    
    sql_command += values.join(',');
    
    snowflake.execute({ sqlText: sql_command });
    
    return n + ' random orders added.';
  $$
;


-- Execute the procedure --

CALL add_random_orders(10000);


-- Cleanup --

drop table orders;
drop procedure add_random_orders;
