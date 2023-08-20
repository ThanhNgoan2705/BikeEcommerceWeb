-- Table: address
INSERT INTO address (address_id, home_address, district, city)
VALUES ('1', '123 Main St', 'District 1', 'City A'),
       ('2', '456 Elm St', 'District 2', 'City B'),
       ('3', '789 Oak St', 'District 3', 'City C'),
       ('4', '101 Pine St', 'District 4', 'City D'),
       ('5', '202 Maple St', 'District 5', 'City E');

-- Table: brand
INSERT INTO brand (brand_id, name, description, email, phone)
VALUES ('1', 'Brand X', 'Description for Brand X', 'contact@brandx.com', '1234567890'),
       ('2', 'Brand Y', 'Description for Brand Y', 'contact@brandy.com', '9876543210'),
       ('3', 'Brand Z', 'Description for Brand Z', 'contact@brandz.com', '5551234567'),
       ('4', 'Brand A', 'Description for Brand A', 'contact@branda.com', '1112223333'),
       ('5', 'Brand B', 'Description for Brand B', 'contact@brandb.com', '4445556666');


-- Table: category
INSERT INTO category (category_id, name, description, parent_id, active, level, short_id)
VALUES ('1', 'Electronics', 'Electronics Category', NULL, 1, 1, 'ELEC'),
       ('2', 'Clothing', 'Clothing Category', NULL, 1, 1, 'CLOTH'),
       ('3', 'Home', 'Home Category', NULL, 1, 1, 'HOME'),
       ('4', 'Beauty', 'Beauty Category', NULL, 1, 1, 'BEAUY'),
       ('5', 'Sports', 'Sports Category', NULL, 1, 1, 'SPORS');

-- Table: color
INSERT INTO color (color_id, name, code)
VALUES ('1', 'Red', '#FF0000'),
       ('2', 'Green', '#00FF00'),
       ('3', 'Blue', '#0000FF'),
       ('4', 'Yellow', '#FFFF00'),
       ('5', 'Purple', '#800080');

-- Table: discount
INSERT INTO discount (discount_id, name, description, discount, active, start_date, end_date)
VALUES ('1', 'Summer Sale', 'Discount for Summer Season', 20.00, 1, '2023-06-01', '2023-08-31'),
       ('2', 'Clearance', 'Clearance Sale', 30.00, 1, '2023-09-01', '2023-09-30'),
       ('3', 'Holiday Special', 'Discount for Holiday Season', 15.00, 1, '2023-12-01', '2023-12-25'),
       ('4', 'Back to School', 'Discount for Back to School', 10.00, 1, '2023-08-15', '2023-09-15'),
       ('5', 'Black Friday', 'Black Friday Sale', 50.00, 1, '2023-11-24', '2023-11-27');

-- Continue the same pattern for other tables...


-- Table: supplier
INSERT INTO supplier (supplier_id, name)
VALUES ('1', 'Supplier X'),
       ('2', 'Supplier Y'),
       ('3', 'Supplier Z'),
       ('4', 'Supplier A'),
       ('5', 'Supplier B');


-- Continue the same pattern for other tables...

-- Table: user
INSERT INTO user (user_id, email, salt, pass, user_name, role)
VALUES ('user1', 'user1@example.com', 'salt1', 'hashed_pass1', 'User 1', 1),
       ('user2', 'user2@example.com', 'salt2', 'hashed_pass2', 'User 2', 1),
       ('user3', 'user3@example.com', 'salt3', 'hashed_pass3', 'User 3', 1),
       ('user4', 'user4@example.com', 'salt4', 'hashed_pass4', 'User 4', 1),
       ('user5', 'user5@example.com', 'salt5', 'hashed_pass5', 'User 5', 1);

-- Table: `order`
INSERT INTO `order` (order_id, user_id, address_id, price, discount, shipping_fee, total, send_day, receive_day, status)
VALUES ('1', 'user1', '1', 500.00, 50, 20.00, 470.00, '2023-08-20', '2023-08-25', 2),
       ('2', 'user2', '2', 300.00, 10, 15.00, 305.00, '2023-08-21', '2023-08-26', 2),
       ('3', 'user3', '3', 200.00, 0, 10.00, 210.00, '2023-08-22', '2023-08-27', 1),
       ('4', 'user4', '4', 100.00, 0, 10.00, 110.00, '2023-08-23', '2023-08-28', 1),
       ('5', 'user5', '5', 150.00, 20, 15.00, 145.00, '2023-08-24', '2023-08-29', 2);

-- Table: cart
INSERT INTO cart (cart_id, user_id, ss_id)
VALUES ('1', 'user1', 'session1'),
       ('2', 'user2', 'session2'),
       ('3', 'user3', 'session3'),
       ('4', 'user4', 'session4'),
       ('5', 'user5', 'session5');

-- Continue the same pattern for other carts...

-- Table: user_address
INSERT INTO user_address (user_id, address_id)
VALUES ('user1', '1'),
       ('user2', '2'),
       ('user3', '3'),
       ('user4', '4'),
       ('user5', '5');


-- Table: product
INSERT INTO product (product_id, name, price, description, wheelSize, inventory, material, warranty, category_id,
                     brand_id, supplier_id, status)
VALUES ('1', 'Product 1', 100.00, 'Description for Product 1', '16 inches', 50, 'Metal', '1 year', '1', '1', '1', 1),
       ('2', 'Product 2', 150.00, 'Description for Product 2', '20 inches', 30, 'Plastic', '2 years', '2', '2', '2', 1),
       ('3', 'Product 3', 200.00, 'Description for Product 3', '18 inches', 20, 'Wood', '1 year', '3', '3', '3', 1),
       ('4', 'Product 4', 50.00, 'Description for Product 4', '14 inches', 10, 'Metal', '6 months', '1', '4', '1', 1),
       ('5', 'Product 5', 300.00, 'Description for Product 5', '22 inches', 5, 'Plastic', '2 years', '2', '5', '2', 1);

-- Continue the same pattern for other products...
-- Table: cart_item
INSERT INTO cart_item (cart_id, product_id, quantity)
VALUES ('1', '1', 2),
       ('1', '2', 3),
       ('2', '3', 1),
       ('3', '4', 2),
       ('4', '5', 1);

-- Continue the same pattern for other tables...

-- Table: color_product
INSERT INTO color_product (product_id, color_id)
VALUES ('1', '1'),
       ('1', '2'),
       ('2', '3'),
       ('3', '4'),
       ('4', '5');

-- Continue the same pattern for other color-product associations...
-- Table: comment
INSERT INTO comment (comment_id, user_id, product_id, content)
VALUES ('1', 'user1', '1', 'This is a great product!'),
       ('2', 'user2', '1', 'I love this product.'),
       ('3', 'user3', '2', 'Not satisfied with this.'),
       ('4', 'user4', '3', 'Good quality and value.'),
       ('5', 'user5', '4', 'Could be better.');

-- Table: favorite
INSERT INTO favorite (favorite_id, user_id, product_id)
VALUES ('1', 'user1', '1'),
       ('2', 'user2', '3'),
       ('3', 'user3', '5'),
       ('4', 'user4', '2'),
       ('5', 'user5', '4');

-- Continue the same pattern for other comments and favorites...


-- Table: image_product
INSERT INTO image_product (image_product_id, link, product_id)
VALUES ('1', 'image1.jpg', '1'),
       ('2', 'image2.jpg', '1'),
       ('3', 'image3.jpg', '2'),
       ('4', 'image4.jpg', '3'),
       ('5', 'image5.jpg', '4');

-- Table: order_item
INSERT INTO order_item (order_id, product_id, quantity)
VALUES ('1', '1', 2),
       ('2', '2', 1),
       ('3', '3', 3),
       ('4', '4', 2),
       ('5', '5', 1);

-- Continue the same pattern for other order items...




