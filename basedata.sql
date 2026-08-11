CREATE DATABASE IF NOT EXISTS ecommjava;
USE ecommjava;


DROP TABLE IF EXISTS CART_PRODUCT;
DROP TABLE IF EXISTS CART;
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS CATEGORY;
DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS ADMIN;



CREATE TABLE CUSTOMER (
    id          INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username    VARCHAR(255) UNIQUE,
    password    VARCHAR(255),
    email       VARCHAR(255),
    address     VARCHAR(255),
    role        VARCHAR(255)
);



CREATE TABLE ADMIN (
    id          INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username    VARCHAR(255) UNIQUE,
    password    VARCHAR(255),
    email       VARCHAR(255),
    role        VARCHAR(255)
);



CREATE TABLE CATEGORY (
    category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(255)
);



CREATE TABLE PRODUCT (
    product_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(255),
    description VARCHAR(255),
    price       INT,
    quantity    INT,
    weight      INT,
    image       VARCHAR(255),
    category_id INT,
    customer_id INT,
    FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(id)
);



CREATE TABLE CART (
    id          INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT UNIQUE,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(id)
);



CREATE TABLE CART_PRODUCT (
    id          INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cart_id     INT,
    product_id  INT,
    quantity    INT,
    FOREIGN KEY (cart_id)    REFERENCES CART(id),
    FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);



CREATE INDEX idx_product_category ON PRODUCT(category_id);
CREATE INDEX idx_product_customer ON PRODUCT(customer_id);
CREATE INDEX idx_cart_customer ON CART(customer_id);
CREATE INDEX idx_cartproduct_cart ON CART_PRODUCT(cart_id);
CREATE INDEX idx_cartproduct_product ON CART_PRODUCT(product_id);

INSERT INTO CATEGORY(name) VALUES 
    ('Fruits'),
    ('Vegetables'),
    ('Meat'),
    ('Fish'),
    ('Dairy'),
    ('Bakery'),
    ('Drinks'),
    ('Sweets'),
    ('Other');



INSERT INTO CUSTOMER(username, password, email, address, role) VALUES
    ('admin', '123', 'admin@nyan.cat', '123, Albany Street', 'ROLE_ADMIN'),
    ('lisa',  '765', 'lisa@gmail.com',   '765, 5th Avenue',  'ROLE_NORMAL');



INSERT INTO PRODUCT(name, description, price, quantity, weight, image, category_id) VALUES
    ('Apple',        'Fresh and juicy',                            3,  40, 76, 'https://freepngimg.com/save/9557-apple-fruit-transparent/744x744', 1),
    ('Cracked Eggs', 'Woops! There goes the eggs...',              1,  90, 43, 'https://www.nicepng.com/png/full/813-8132637_poiata-bunicii-cracked-egg.png', 9),
    ('Banana',       'Ripe and yellow',                            2,  50, 120, 'https://example.com/banana.png', 1),
    ('Carrot',       'Fresh organic carrots',                      2,  30, 150, 'https://example.com/carrot.png', 2),
    ('Chicken',      'Boneless chicken breast',                    10, 20, 500, 'https://example.com/chicken.png', 3),
    ('Milk',         'Fresh whole milk',                           5,  15, 1000, 'https://example.com/milk.png', 5),
    ('Bread',        'Freshly baked white bread',                  3,  25, 400, 'https://example.com/bread.png', 6),
    ('Orange Juice', '100% pure orange juice',                     4,  30, 250, 'https://example.com/orange-juice.png', 7),
    ('Chocolate',    'Dark chocolate 70%',                         6,  40, 100, 'https://example.com/chocolate.png', 8),
    ('Salmon',       'Fresh Atlantic salmon',                      15, 10, 200, 'https://example.com/salmon.png', 4);



INSERT INTO CART(customer_id) VALUES
    (1),
    (2);



INSERT INTO CART_PRODUCT(cart_id, product_id, quantity) VALUES
    (1, 1, 2),
    (1, 3, 1),
    (2, 4, 3),
    (2, 6, 1);