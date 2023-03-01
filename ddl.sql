## SQL Server 

CREATE TABLE orders (
  order_id bigint PRIMARY KEY,
  customer_id bigint,
  product_id bigint,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken date,
  order_misc_notes VARCHAR(500)
);


INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (1, 100, 200, 'Table', '30/2 Acme Street, Pin : 9000, AZ-US', '2023-01-01', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (2, 101, 201, 'Chair', '32/4 Acme Street, Pin : 9000, AZ-US', '2023-01-02', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (3, 102, 202, 'Sofa', '34/6 Acme Street, Pin : 9000, AZ-US', '2023-01-03', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (4, 103, 203, 'Bed', '36/8 Acme Street, Pin : 9000, AZ-US', '2023-01-04', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (5, 104, 204, 'Wardrobe', '38/10 Acme Street, Pin : 9000, AZ-US', '2023-01-05', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (6, 105, 205, 'Bookshelf', '40/12 Acme Street, Pin : 9000, AZ-US', '2023-01-06', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (7, 106, 206, 'Dining Table', '42/14 Acme Street, Pin : 9000, AZ-US', '2023-01-07', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (8, 107, 207, 'Chair', '44/16 Acme Street, Pin : 9000, AZ-US', '2023-01-08', 'Deliver to Doorstep');


## Oracle

CREATE TABLE orders (
  order_id NUMBER(38) PRIMARY KEY,
  customer_id NUMBER(38),
  product_id NUMBER(38),
  product_description VARCHAR2(500),
  order_delivery_address VARCHAR2(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR2(500)
);


INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (9, 108, 208, 'Table', '30/2 Acme Street, Pin : 9000, AZ-US', to_date('2023-01-01', 'yyyy-mm-dd'), 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (10, 109, 209, 'Chair', '32/4 Acme Street, Pin : 9000, AZ-US', to_date('2023-01-02', 'yyyy-mm-dd'), 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (11, 110, 210, 'Sofa', '34/6 Acme Street, Pin : 9000, AZ-US', to_date('2023-01-03', 'yyyy-mm-dd'), 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (12, 111, 211, 'Bed', '36/8 Acme Street, Pin : 9000, AZ-US', to_date('2023-01-04', 'yyyy-mm-dd'), 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (13, 112, 212, 'Wardrobe', '38/10 Acme Street, Pin : 9000, AZ-US', to_date('2023-01-05', 'yyyy-mm-dd'), 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (14, 113, 213, 'Bookshelf', '40/12 Acme Street, Pin : 9000, AZ-US', to_date('2023-01-06', 'yyyy-mm-dd'), 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (15, 114, 214, 'Lamp', '40/12 Acme Street, Pin : 9000, AZ-US', to_date('2023-01-06', 'yyyy-mm-dd'), 'Deliver to Doorstep');

commit;

## MySQL/MariaDB

CREATE TABLE orders (
  order_id BIGINT PRIMARY KEY,
  customer_id BIGINT,
  product_id BIGINT,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR(500)
);


INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (16, 115, 215, 'Chair', '32/4 Acme Street, Pin : 9000, AZ-US', '2023-01-02', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (17, 116, 216, 'Sofa', '34/6 Acme Street, Pin : 9000, AZ-US', '2023-01-03', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (18, 117, 217, 'Bed', '36/8 Acme Street, Pin : 9000, AZ-US', '2023-01-04', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (19, 118, 218, 'Wardrobe', '38/10 Acme Street, Pin : 9000, AZ-US', '2023-01-05', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (20, 119, 219, 'Bookshelf', '40/12 Acme Street, Pin : 9000, AZ-US', '2023-01-06', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (21, 120, 220, 'Mattress', '40/12 Acme Street, Pin : 9000, AZ-US', '2023-01-06', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (22, 121, 221, 'Cabinet', '40/12 Acme Street, Pin : 9000, AZ-US', '2023-01-06', 'Deliver to Doorstep');


## Postgres

CREATE TABLE orders (
  order_id bigint PRIMARY KEY,
  customer_id bigint,
  product_id bigint,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken date,
  order_misc_notes VARCHAR(500)
);


INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (23, 114, 214, 'Table', '30/2 Acme Street, Pin : 9000, AZ-US', '2023-01-01', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (24, 115, 215, 'Chair', '31/3 Acme Street, Pin : 9000, AZ-US', '2023-01-02', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (25, 116, 216, 'Sofa', '32/4 Acme Street, Pin : 9000, AZ-US', '2023-01-03', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (26, 117, 217, 'Bed', '33/5 Acme Street, Pin : 9000, AZ-US', '2023-01-04', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (27, 118, 218, 'Wardrobe', '34/6 Acme Street, Pin : 9000, AZ-US', '2023-01-05', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (28, 119, 219, 'Dressing Table', '35/7 Acme Street, Pin : 9000, AZ-US', '2023-01-06', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (29, 120, 220, 'Cupboard', '36/8 Acme Street, Pin : 9000, AZ-US', '2023-01-07', 'Deliver to Doorstep');


## Sybase

CREATE TABLE orders (
  order_id bigint NOT NULL PRIMARY KEY,
  customer_id bigint,
  product_id bigint,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATETIME,
  order_misc_notes VARCHAR(500)
);


INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (30, 100, 200, 'Table', '30/2 Acme Street, Pin : 9000, AZ-US', '2023-01-01 00:00:00', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (31, 101, 201, 'Book', '31/3 Acme Street, Pin : 9000, AZ-US', '2023-01-02 00:00:00', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (32, 102, 202, 'Laptop', '32/4 Acme Street, Pin : 9000, AZ-US', '2023-01-03 00:00:00', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (33, 103, 203, 'Mobile', '33/5 Acme Street, Pin : 9000, AZ-US', '2023-01-04 00:00:00', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (34, 104, 204, 'Camera', '34/6 Acme Street, Pin : 9000, AZ-US', '2023-01-05 00:00:00', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (35, 105, 205, 'TV', '35/7 Acme Street, Pin : 9000, AZ-US', '2023-01-06 00:00:00', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (36, 106, 206,'Gaming Console', '35/7 Acme Street, Pin : 9000, AZ-US', '2023-01-06 00:00:00', 'Deliver to Doorstep');



## SQLlite

CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  product_id INTEGER,
  product_description TEXT,
  order_delivery_address TEXT,
  order_date_taken DATE,
  order_misc_notes TEXT
);


INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (37, 100, 200, 'Table', '30/2 Acme Street, Pin : 9000, AZ-US', '2023-01-01', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (38, 200, 300, 'Chair', '2/2 Acme Street, Pin : 9000, AZ-US', '2023-01-02', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (39, 300, 400, 'Sofa', '3/3 Acme Street, Pin : 9000, AZ-US', '2023-01-03', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (40, 400, 500, 'Lamp', '4/4 Acme Street, Pin : 9000, AZ-US', '2023-01-04', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (41, 500, 600, 'Carpet', '5/5 Acme Street, Pin : 9000, AZ-US', '2023-01-05', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (42, 600, 700, 'Bookshelf', '6/6 Acme Street, Pin : 9000, AZ-US', '2023-01-06', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (43, 700, 800, 'Tv Stand', '7/7 Acme Street, Pin : 9000, AZ-US', '2023-01-07', 'Deliver to Doorstep');


## IBM DB2


CREATE TABLE orders (
  order_id BIGINT NOT NULL PRIMARY KEY,
  customer_id BIGINT,
  product_id BIGINT,
  product_description VARCHAR(500),
  order_delivery_address VARCHAR(500),
  order_date_taken DATE,
  order_misc_notes VARCHAR(500)
);


INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (44, 100, 200, 'Table', '30/2 Acme Street, Pin : 9000, AZ-US', '2023-01-01', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (45, 101, 201, 'Chair', '40/2 Acme Street, Pin : 9100, AZ-US', '2023-01-02', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (46, 102, 202, 'Lamp', '50/2 Acme Street, Pin : 9200, AZ-US', '2023-01-03', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (47, 103, 203, 'Bookshelf', '60/2 Acme Street, Pin : 9300, AZ-US', '2023-01-04', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (48, 104, 204, 'Pillow', '70/2 Acme Street, Pin : 9400, AZ-US', '2023-01-05', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (49, 105, 205, 'Blanket', '80/2 Acme Street, Pin : 9500, AZ-US', '2023-01-06', 'Deliver to Doorstep');

INSERT INTO orders (order_id, customer_id, product_id, product_description, order_delivery_address, order_date_taken, order_misc_notes)
VALUES (50, 106, 206, 'Mattress', '90/2 Acme Street, Pin : 9600, AZ-US', '2023-01-07', 'Deliver to Doorstep');

