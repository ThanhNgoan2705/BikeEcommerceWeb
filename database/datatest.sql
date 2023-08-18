-- Insert data into address table
INSERT INTO address (address_id, home_address, district, city, created_at, updated_at)
VALUES
    ('1', '123 Main St', 'District A', 'City X', NOW(), NOW()),
    ('2', '456 Elm St', 'District B', 'City Y', NOW(), NOW()),
    ('3', '789 Oak St', 'District C', 'City Z', NOW(), NOW()),
    ('4', '111 Pine St', 'District D', 'City W', NOW(), NOW()),
    ('5', '222 Maple St', 'District E', 'City V', NOW(), NOW());

-- Insert data into brand table
INSERT INTO brand (brand_id, name, description, image, logo, address, email, phone, created_at, updated_at)
VALUES
    ('1', 'Brand A', 'Description A', 'imageA.jpg', 'logoA.png', '123 Brand St', 'brandA@example.com', '1234567890', NOW(), NOW()),
    ('2', 'Brand B', 'Description B', 'imageB.jpg', 'logoB.png', '456 Brand St', 'brandB@example.com', '2345678901', NOW(), NOW()),
    ('3', 'Brand C', 'Description C', 'imageC.jpg', 'logoC.png', '789 Brand St', 'brandC@example.com', '3456789012', NOW(), NOW()),
    ('4', 'Brand D', 'Description D', 'imageD.jpg', 'logoD.png', '111 Brand St', 'brandD@example.com', '4567890123', NOW(), NOW()),
    ('5', 'Brand E', 'Description E', 'imageE.jpg', 'logoE.png', '222 Brand St', 'brandE@example.com', '5678901234', NOW(), NOW());

-- Insert data into category table
INSERT INTO category (category_id, name, description, image, created_at, updated_at, parent_id, active, level, short_id)
VALUES
    ('1', 'Category A', 'Description A', 'imageA.jpg', NOW(), NOW(), NULL, 1, 1, 'A'),
    ('2', 'Category B', 'Description B', 'imageB.jpg', NOW(), NOW(), NULL, 1, 1, 'B'),
    ('3', 'Category C', 'Description C', 'imageC.jpg', NOW(), NOW(), NULL, 1, 1, 'C'),
    ('4', 'Category D', 'Description D', 'imageD.jpg', NOW(), NOW(), NULL, 1, 1, 'D'),
    ('5', 'Category E', 'Description E', 'imageE.jpg', NOW(), NOW(), NULL, 1, 1, 'E');

-- Insert data into color table
INSERT INTO color (color_id, name, code, created_at, updated_at)
VALUES
    ('1', 'Red', '#FF0000', NOW(), NOW()),
    ('2', 'Green', '#00FF00', NOW(), NOW()),
    ('3', 'Blue', '#0000FF', NOW(), NOW()),
    ('4', 'Yellow', '#FFFF00', NOW(), NOW()),
    ('5', 'Purple', '#800080', NOW(), NOW());

-- Insert data into discount table
INSERT INTO discount (discount_id, name, description, discount, active, start_date, end_date, created_at, updated_at)
VALUES
    ('1', 'Discount A', 'Description A', 10.0, 1, '2023-08-01', '2023-08-31', NOW(), NOW()),
    ('2', 'Discount B', 'Description B', 20.0, 1, '2023-09-01', '2023-09-30', NOW(), NOW()),
    ('3', 'Discount C', 'Description C', 15.0, 1, '2023-10-01', '2023-10-31', NOW(), NOW()),
    ('4', 'Discount D', 'Description D', 25.0, 1, '2023-11-01', '2023-11-30', NOW(), NOW()),
    ('5', 'Discount E', 'Description E', 30.0, 1, '2023-12-01', '2023-12-31', NOW(), NOW());

-- Insert data into imageslider table
INSERT INTO imageslider (categoryId, link, created_at, updated_at)
VALUES
    ('1', 'slider1.jpg', NOW(), NOW()),
    ('2', 'slider2.jpg', NOW(), NOW()),
    ('3', 'slider3.jpg', NOW(), NOW()),
    ('4', 'slider4.jpg', NOW(), NOW()),
    ('5', 'slider5.jpg', NOW(), NOW());

-- Insert data into supplier table
INSERT INTO supplier (supplier_id, name, created_at, updated_at)
VALUES
    ('1', 'Supplier A', NOW(), NOW()),
    ('2', 'Supplier B', NOW(), NOW()),
    ('3', 'Supplier C', NOW(), NOW()),
    ('4', 'Supplier D', NOW(), NOW()),
    ('5', 'Supplier E', NOW(), NOW());

-- Insert data into product table
INSERT INTO product (product_id, name, price, description, wheelSize, inventory, material, warranty, category_id, brand_id, discount_id, supplier_id, status, created_at, updated_at)
VALUES
    ('1', 'Product A', 100.0, 'Description A', '24 inches', 50, 'Aluminum', '1 year', '1', '1', '1', '1', 1, NOW(), NOW()),
    ('2', 'Product B', 150.0, 'Description B', '26 inches', 30, 'Steel', '2 years', '2', '2', '2', '2', 1, NOW(), NOW()),
    ('3', 'Product C', 200.0, 'Description C', '20 inches', 20, 'Carbon Fiber', '3 years', '3', '3', '3', '3', 1, NOW(), NOW()),
    ('4', 'Product D', 120.0, 'Description D', '28 inches', 40, 'Aluminum', '1 year', '4', '4', '4', '4', 1, NOW(), NOW()),
    ('5', 'Product E', 180.0, 'Description E', '29 inches', 25, 'Alloy', '2 years', '5', '5', '5', '5', 1, NOW(), NOW());

-- Insert data into colorproduct table
INSERT INTO colorproduct (product_id, color_id)
VALUES
    ('1', '1'),
    ('2', '2'),
    ('3', '3'),
    ('4', '4'),
    ('5', '5');

-- Insert data into imageproduct table
INSERT INTO imageproduct (image_product_id, link, product_id, created_at, updated_at)
VALUES
    ('1', 'image1.jpg', '1', NOW(), NOW()),
    ('2', 'image2.jpg', '2', NOW(), NOW()),
    ('3', 'image3.jpg', '3', NOW(), NOW()),
    ('4', 'image4.jpg', '4', NOW(), NOW()),
    ('5', 'image5.jpg', '5', NOW(), NOW());

-- Insert data into user table
INSERT INTO user (user_id, email, salt, pass, user_name, created_at, updated_at, role)
VALUES
    ('1', 'user1@example.com', 'salt1', 'hashedpass1', 'User 1', NOW(), NOW(), 1),
    ('2', 'user2@example.com', 'salt2', 'hashedpass2', 'User 2', NOW(), NOW(), 1),
    ('3', 'user3@example.com', 'salt3', 'hashedpass3', 'User 3', NOW(), NOW(), 1),
    ('4', 'admin1@example.com', 'salt4', 'hashedpass4', 'Admin 1', NOW(), NOW(), 2),
    ('5', 'admin2@example.com', 'salt5', 'hashedpass5', 'Admin 2', NOW(), NOW(), 2);

-- Insert data into order table
INSERT INTO `order` (order_id, user_id, address_id, price, discount, shipping_fee, total, send_day, receive_day, status, created_at, updated_at)
VALUES
    ('1', '1', '1', 250.0, 10, 20.0, 270.0, '2023-08-10 12:00:00', '2023-08-15 14:00:00', 1, NOW(), NOW()),
    ('2', '2', '2', 180.0, 5, 15.0, 190.0, '2023-08-11 10:00:00', '2023-08-17 11:30:00', 2, NOW(), NOW()),
    ('3', '3', '3', 350.0, 20, 25.0, 355.0, '2023-08-12 15:00:00', '2023-08-18 16:45:00', 3, NOW(), NOW()),
    ('4', '4', '4', 120.0, 0, 10.0, 130.0, '2023-08-13 09:00:00', '2023-08-19 10:15:00', 4, NOW(), NOW()),
    ('5', '5', '5', 500.0, 30, 30.0, 500.0, '2023-08-14 11:00:00', '2023-08-20 12:30:00', 5, NOW(), NOW());

-- Insert data into order_item table
INSERT INTO order_item (order_id, product_id, quantity)
VALUES
    ('1', '1', 2),
    ('1', '3', 1),
    ('2', '2', 1),
    ('3', '4', 3),
    ('4', '5', 1);
