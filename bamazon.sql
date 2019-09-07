DROP DATABASE IF EXISTS bamazon_DB;
CREATE database bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
  position INT NOT NULL AUTO_INCREMENT,
  item_id VARCHAR(100) NULL,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL, 
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (position)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("bike", "Treck", "sporting goods", 800, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("guitar", "Gibson", "music", 2000, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("golf clubs", "Callaway", "sporting goods", 900, 35);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("I-pad","Apple", "electronics", 450, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("sneakers", "Nike", "clothing", 95.50, 150);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("jeans", "Levi", "clothing", 45.90, 200);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("makeup kit", "L'Oreal", "cosmetics", 50, 300);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("prefume", "Chanel", "cosmetics", 85, 250);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("cologne", "Chanel", "cosmetics", 75, 250);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Tshirt", "Nike","clothing", 24.99, 1000);

