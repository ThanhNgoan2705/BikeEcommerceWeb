USE `bike_ecommerce`;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `home_address`, `district`, `city`, `created_at`, `updated_at`)
VALUES ('1', NULL, '123 Main St', 'District 1', 'City A', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('2', NULL, '456 Elm St', 'District 2', 'City B', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('3', NULL, '789 Oak St', 'District 3', 'City C', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('4', NULL, '101 Pine St', 'District 4', 'City D', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('5', NULL, '202 Maple St', 'District 5', 'City E', '2023-11-22 20:49:49', '2023-11-22 20:49:49');

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `image`, `logo`, `address`, `email`, `phone`, `created_at`,
                     `updated_at`)
VALUES ('1', 'Brand X', 'Description for Brand X', NULL, NULL, NULL, 'contact@brandx.com', '1234567890',
        '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('2', 'Brand Y', 'Description for Brand Y', NULL, NULL, NULL, 'contact@brandy.com', '9876543210',
        '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('3', 'Brand Z', 'Description for Brand Z', NULL, NULL, NULL, 'contact@brandz.com', '5551234567',
        '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('4', 'Brand A', 'Description for Brand A', NULL, NULL, NULL, 'contact@branda.com', '1112223333',
        '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('5', 'Brand B', 'Description for Brand B', NULL, NULL, NULL, 'contact@brandb.com', '4445556666',
        '2023-11-22 20:49:49', '2023-11-22 20:49:49');
--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `salt`, `pass`, `user_name`, `created_at`, `updated_at`, `role`)
VALUES ('94face32-ca88-4729-b3de-b34a0e390e48', 'admin@gmail.com', '8a316e582ae2898b941eb2f82d3ef209',
        'f72633c729b73b342cfb5da6910fa7800599d0a52ab211e11bc575f328fc5cff', 'hai', '2023-11-22 20:52:14',
        '2023-11-22 20:52:32', 1),
       ('user1', 'user1@example.com', 'salt1', 'hashed_pass1', 'User 1', '2023-11-22 20:49:49', '2023-11-22 20:49:49',
        1),
       ('user2', 'user2@example.com', 'salt2', 'hashed_pass2', 'User 2', '2023-11-22 20:49:49', '2023-11-22 20:49:49',
        1),
       ('user3', 'user3@example.com', 'salt3', 'hashed_pass3', 'User 3', '2023-11-22 20:49:49', '2023-11-22 20:49:49',
        1),
       ('user4', 'user4@example.com', 'salt4', 'hashed_pass4', 'User 4', '2023-11-22 20:49:49', '2023-11-22 20:49:49',
        1),
       ('user5', 'user5@example.com', 'salt5', 'hashed_pass5', 'User 5', '2023-11-22 20:49:49', '2023-11-22 20:49:49',
        1);

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `ss_id`, `created_at`, `updated_at`)
VALUES ('1', 'user1', 'session1', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('2', 'user2', 'session2', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('2db4ba63-9561-4a57-82c0-d9faf20e43e0', '94face32-ca88-4729-b3de-b34a0e390e48', NULL, '2023-11-22 20:52:32',
        '2023-11-22 20:52:32'),
       ('3', 'user3', 'session3', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('4', 'user4', 'session4', '2023-11-22 20:49:49', '2023-11-22 20:49:49');


--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`, `image`, `created_at`, `updated_at`, `parent_id`,
                        `active`, `level`, `short_id`)
VALUES ('1', 'Electronics', 'Electronics Category', NULL, '2023-11-22 20:49:49', '2023-11-22 20:49:49', NULL, 1, 1,
        'ELEC'),
       ('2', 'Clothing', 'Clothing Category', NULL, '2023-11-22 20:49:49', '2023-11-22 20:49:49', NULL, 1, 1, 'CLOTH'),
       ('3', 'Home', 'Home Category', NULL, '2023-11-22 20:49:49', '2023-11-22 20:49:49', NULL, 1, 1, 'HOME'),
       ('4', 'Beauty', 'Beauty Category', NULL, '2023-11-22 20:49:49', '2023-11-22 20:49:49', NULL, 1, 1, 'BEAUY'),
       ('5', 'Sports', 'Sports Category', NULL, '2023-11-22 20:49:49', '2023-11-22 20:49:49', NULL, 1, 1, 'SPORS');

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`color_id`, `name`, `code`, `created_at`, `updated_at`)
VALUES ('1', 'Red', '#FF0000', '2023-11-22 20:49:49', '2023-11-23 03:49:49'),
       ('2', 'Green', '#00FF00', '2023-11-22 20:49:49', '2023-11-23 03:49:49'),
       ('3', 'Blue', '#0000FF', '2023-11-22 20:49:49', '2023-11-23 03:49:49'),
       ('4', 'Yellow', '#FFFF00', '2023-11-22 20:49:49', '2023-11-23 03:49:49'),
       ('5', 'Purple', '#800080', '2023-11-22 20:49:49', '2023-11-23 03:49:49');


--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount_id`, `name`, `description`, `discount_percent`, `active`, `start_date`, `end_date`,
                        `created_at`, `updated_at`)
VALUES ('1', 'Summer Sale', 'Discount for Summer Season', 20, 1, '2023-06-01', '2023-08-31', '2023-11-22 20:49:49',
        '2023-11-22 20:49:49'),
       ('2', 'Clearance', 'Clearance Sale', 30, 1, '2023-09-01', '2023-09-30', '2023-11-22 20:49:49',
        '2023-11-22 20:49:49'),
       ('3', 'Holiday Special', 'Discount for Holiday Season', 15, 1, '2023-12-01', '2023-12-25', '2023-11-22 20:49:49',
        '2023-11-22 20:49:49'),
       ('4', 'Back to School', 'Discount for Back to School', 10, 1, '2023-08-15', '2023-09-15', '2023-11-22 20:49:49',
        '2023-11-22 20:49:49'),
       ('5', 'Black Friday', 'Black Friday Sale', 50, 1, '2023-11-24', '2023-11-27', '2023-11-22 20:49:49',
        '2023-11-22 20:49:49');


--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `created_at`, `updated_at`)
VALUES ('1', 'Supplier X', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('2', 'Supplier Y', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('3', 'Supplier Z', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('4', 'Supplier A', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('5', 'Supplier B', '2023-11-22 20:49:49', '2023-11-22 20:49:49');
--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `wheelSize`, `material`, `warranty`, `category_id`,
                       `brand_id`, `discount_id`, `supplier_id`, `status`, `created_at`, `updated_at`)
VALUES ('1', 'Product 1', 'Description for Product 1', '16 inches', 'Metal', '1 year', '1', '1', NULL, '1', 1,
        '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('2', 'Product 2', 'Description for Product 2', '20 inches', 'Plastic', '2 years', '2', '2', NULL, '2', 1,
        '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('3', 'Product 3', 'Description for Product 3', '18 inches', 'Wood', '1 year', '3', '3', NULL, '3', 1,
        '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('4', 'Product 4', 'Description for Product 4', '14 inches', 'Metal', '6 months', '1', '4', NULL, '1', 1,
        '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('5', 'Product 5', 'Description for Product 5', '22 inches', 'Plastic', '2 years', '2', '5', NULL, '2', 1,
        '2023-11-22 20:49:49', '2023-11-22 20:49:49');

--
-- Dumping data for table `sub_product_color`
--

INSERT INTO `sub_product_color` (`product_id`, `color_id`, `inventory`, `price`, `image_product_id`, `created_at`,
                                 `updated_at`)
VALUES ('1', '1', 100, 1, NULL, '2023-11-25 19:28:33', '2023-11-25 21:35:54'),
       ('1', '2', 1000, 11, NULL, '2023-11-25 19:28:33', '2023-11-25 21:35:54'),
       ('2', '3', 1, 111, NULL, '2023-11-25 19:28:33', '2023-11-25 21:59:28'),
       ('3', '4', 2, 2222, NULL, '2023-11-25 19:28:33', '2023-11-25 21:59:28'),
       ('4', '5', 3, 33333, NULL, '2023-11-25 19:28:33', '2023-11-25 21:59:28'),
       ('5', '1', 4, 44444, NULL, '2023-11-25 19:43:56', '2023-11-25 21:59:28');
--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `product_id`, `content`, `created_at`, `updated_at`)
VALUES ('1', 'user1', '1', 'This is a great product!', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('2', 'user2', '1', 'I love this product.', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('3', 'user3', '2', 'Not satisfied with this.', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('4', 'user4', '3', 'Good quality and value.', '2023-11-22 20:49:49', '2023-11-22 20:49:49'),
       ('5', 'user5', '4', 'Could be better.', '2023-11-22 20:49:49', '2023-11-22 20:49:49');

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`user_id`, `product_id`, `created_at`, `updated_at`)
VALUES ('user1', '1', '2023-11-22 20:51:11', '2023-11-22 20:51:11'),
       ('user4', '2', '2023-11-22 20:51:11', '2023-11-22 20:51:11'),
       ('user2', '3', '2023-11-22 20:51:11', '2023-11-22 20:51:11'),
       ('user5', '4', '2023-11-22 20:51:11', '2023-11-22 20:51:11'),
       ('user3', '5', '2023-11-22 20:51:11', '2023-11-22 20:51:11');

--
-- Dumping data for table `image_product`
--

INSERT INTO `image_product` (`image_product_id`, `link`, `product_id`, `created_at`, `updated_at`)
VALUES ('1', 'image1.jpg', '1', '2023-11-22 20:51:11', '2023-11-23 03:51:11'),
       ('2', 'image2.jpg', '1', '2023-11-22 20:51:11', '2023-11-23 03:51:11'),
       ('3', 'image3.jpg', '2', '2023-11-22 20:51:11', '2023-11-23 03:51:11'),
       ('4', 'image4.jpg', '3', '2023-11-22 20:51:11', '2023-11-23 03:51:11'),
       ('5', 'image5.jpg', '4', '2023-11-22 20:51:11', '2023-11-23 03:51:11');


--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `address_id`, `price`, `discount`, `shipping_fee`, `total`, `send_day`,
                     `receive_day`, `status`, `created_at`, `updated_at`)
VALUES ('1', 'user1', '1', 500, 50, 20, 470, '2023-08-19 17:00:00', '2023-08-24 17:00:00', 2, '2023-11-22 20:49:49',
        '2023-11-22 20:49:49'),
       ('2', 'user2', '2', 300, 10, 15, 305, '2023-08-20 17:00:00', '2023-08-25 17:00:00', 2, '2023-11-22 20:49:49',
        '2023-11-22 20:49:49'),
       ('3', 'user3', '3', 200, 0, 10, 210, '2023-08-21 17:00:00', '2023-08-26 17:00:00', 1, '2023-11-22 20:49:49',
        '2023-11-22 20:49:49'),
       ('4', 'user4', '4', 100, 0, 10, 110, '2023-08-22 17:00:00', '2023-08-27 17:00:00', 1, '2023-11-22 20:49:49',
        '2023-11-22 20:49:49'),
       ('5', 'user5', '5', 150, 20, 15, 145, '2023-08-23 17:00:00', '2023-08-28 17:00:00', 2, '2023-11-22 20:49:49',
        '2023-11-22 20:49:49');

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_id`, `product_id`, `quantity`)
VALUES ('1', '1', 2),
       ('2', '2', 1),
       ('3', '3', 3),
       ('4', '4', 2),
       ('5', '5', 1);

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`cart_item_id`, `cart_id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`)
VALUES ('0948f483-cb19-4133-9e7d-4bc832c87ba2', '2db4ba63-9561-4a57-82c0-d9faf20e43e0', '3', '4', 1,
        '2023-11-26 08:35:39', '2023-11-26 08:35:39'),
       ('53371c03-59c3-441a-9d1a-b36f38fe8b53', '2db4ba63-9561-4a57-82c0-d9faf20e43e0', '2', '3', 1,
        '2023-11-26 08:35:38', '2023-11-26 08:35:38'),
       ('be1bb171-19af-4e98-95b5-498f024db2da', '2db4ba63-9561-4a57-82c0-d9faf20e43e0', '2', '3', 1,
        '2023-11-26 08:35:40', '2023-11-26 08:35:40'),
       ('e0db675f-16b1-43f9-8774-e13d318fcb01', '2db4ba63-9561-4a57-82c0-d9faf20e43e0', '4', '5', 1,
        '2023-11-25 23:42:37', '2023-11-26 00:26:11'),
       ('f5a901f6-24d3-4241-b1aa-553d0c649a31', '2db4ba63-9561-4a57-82c0-d9faf20e43e0', '2', '3', 1,
        '2023-11-26 08:35:40', '2023-11-26 08:35:40');


--
-- Dumping data for table `verify_code`
--

INSERT INTO `verify_code` (`code`, `email`, `created_at`, `function`, `valid`)
VALUES ('5aadf6', 'admin@gmail.com', '2023-11-22 20:52:14', 1, 0);
COMMIT;

