-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
                           `address_id` varchar(64) NOT NULL,
                           `user_id` varchar(64) DEFAULT NULL,
                           `home_address` varchar(255) DEFAULT NULL,
                           `district` varchar(100) DEFAULT NULL,
                           `city` varchar(100) DEFAULT NULL,
                           `created_at` timestamp NULL DEFAULT current_timestamp(),
                           `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `home_address`, `district`, `city`, `created_at`, `updated_at`) VALUES
                                                                                                                    ('1', 'user2', '123 Main St', 'District 1', 'City A', '2023-11-22 06:49:49', '2023-12-04 08:59:51'),
                                                                                                                    ('2', 'user3', '456 Elm St', 'District 2', 'City B', '2023-11-22 06:49:49', '2023-12-04 08:59:51'),
                                                                                                                    ('3', 'user3', '789 Oak St', 'District 3', 'City C', '2023-11-22 06:49:49', '2023-12-04 08:59:51'),
                                                                                                                    ('4', 'user2', '101 Pine St', 'District 4', 'City D', '2023-11-22 06:49:49', '2023-12-04 08:59:51'),
                                                                                                                    ('5', 'user4', '202 Maple St', 'District 5', 'City E', '2023-11-22 06:49:49', '2023-12-04 08:59:51'),
                                                                                                                    ('5ee3f9eb-9654-4fa7-a355-fb5827f6d55a', NULL, 'binh din', 'cut bo', 'dduy hai', '2023-12-10 20:52:19', '2023-12-10 20:52:19'),
                                                                                                                    ('6', '94face32-ca88-4729-b3de-b34a0e390e48', 'tran phu', 'tay do', 'hung ha', '2023-12-08 00:42:24', '2023-12-08 00:42:24'),
                                                                                                                    ('7', '94face32-ca88-4729-b3de-b34a0e390e48', 'thon song', 'binh luc', 'ha nam', '2023-12-08 00:43:20', '2023-12-08 00:43:20'),
                                                                                                                    ('79a92dca-fc3a-455a-8502-8e92535c6539', '94face32-ca88-4729-b3de-b34a0e390e48', 'chan ', 'cut cho', 'duy hai', '2023-12-10 20:58:38', '2023-12-10 20:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
                         `brand_id` varchar(64) NOT NULL,
                         `name` varchar(255) NOT NULL,
                         `description` varchar(255) DEFAULT NULL,
                         `image` varchar(255) DEFAULT NULL,
                         `logo` varchar(255) DEFAULT NULL,
                         `address` varchar(255) DEFAULT NULL,
                         `email` varchar(255) DEFAULT NULL,
                         `phone` varchar(10) DEFAULT NULL,
                         `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                         `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `image`, `logo`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
                                                                                                                                      ('1', 'Brand X', 'Description for Brand X', NULL, NULL, NULL, 'contact@brandx.com', '1234567890', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                      ('2', 'Brand Y', 'Description for Brand Y', NULL, NULL, NULL, 'contact@brandy.com', '9876543210', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                      ('3', 'Brand Z', 'Description for Brand Z', NULL, NULL, NULL, 'contact@brandz.com', '5551234567', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                      ('4', 'Brand A', 'Description for Brand A', NULL, NULL, NULL, 'contact@branda.com', '1112223333', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                      ('5', 'Brand B', 'Description for Brand B', NULL, NULL, NULL, 'contact@brandb.com', '4445556666', '2023-11-22 06:49:49', '2023-11-22 06:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
                        `cart_id` varchar(64) NOT NULL,
                        `user_id` varchar(64) DEFAULT NULL,
                        `ss_id` varchar(64) DEFAULT NULL,
                        `created_at` timestamp NULL DEFAULT current_timestamp(),
                        `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `ss_id`, `created_at`, `updated_at`) VALUES
                                                                                   ('1', 'user1', 'session1', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                   ('2', 'user2', 'session2', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                   ('2db4ba63-9561-4a57-82c0-d9faf20e43e0', '94face32-ca88-4729-b3de-b34a0e390e48', NULL, '2023-11-22 06:52:32', '2023-11-22 06:52:32'),
                                                                                   ('3', 'user3', 'session3', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                   ('4', 'user4', 'session4', '2023-11-22 06:49:49', '2023-11-22 06:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
                             `cart_item_id` varchar(64) NOT NULL,
                             `cart_id` varchar(64) NOT NULL,
                             `product_id` varchar(64) NOT NULL,
                             `color_id` varchar(64) NOT NULL,
                             `quantity` int(11) NOT NULL COMMENT 'phai  lon  hon 0',
                             `created_at` timestamp NULL DEFAULT current_timestamp(),
                             `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`cart_item_id`, `cart_id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
                                                                                                                          ('31a565c6-3512-4aff-b71c-3320d490e3b9', '2db4ba63-9561-4a57-82c0-d9faf20e43e0', '3', '4', 1, '2023-12-04 21:18:05', '2023-12-04 21:18:05'),
                                                                                                                          ('808d6353-a54f-4dfc-a1a9-cf35acdd46b8', '2db4ba63-9561-4a57-82c0-d9faf20e43e0', '5', '1', 4, '2023-11-30 20:18:29', '2023-11-30 20:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
                            `category_id` varchar(64) NOT NULL,
                            `name` varchar(255) NOT NULL,
                            `description` varchar(255) DEFAULT NULL,
                            `image` varchar(255) DEFAULT NULL,
                            `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                            `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
                            `parent_id` varchar(5) DEFAULT NULL,
                            `active` int(11) NOT NULL DEFAULT 1,
                            `level` int(11) DEFAULT NULL,
                            `short_id` varchar(5) NOT NULL COMMENT 'dung để them vao dau id product'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`, `image`, `created_at`, `updated_at`, `parent_id`, `active`, `level`, `short_id`) VALUES
                                                                                                                                                   ('1', 'Electronics', 'Electronics Category', NULL, '2023-11-22 06:49:49', '2023-11-22 06:49:49', NULL, 1, 1, 'ELEC'),
                                                                                                                                                   ('2', 'Clothing', 'Clothing Category', NULL, '2023-11-22 06:49:49', '2023-11-22 06:49:49', NULL, 1, 1, 'CLOTH'),
                                                                                                                                                   ('3', 'Home', 'Home Category', NULL, '2023-11-22 06:49:49', '2023-11-22 06:49:49', NULL, 1, 1, 'HOME'),
                                                                                                                                                   ('4', 'Beauty', 'Beauty Category', NULL, '2023-11-22 06:49:49', '2023-11-22 06:49:49', NULL, 1, 1, 'BEAUY'),
                                                                                                                                                   ('5', 'Sports', 'Sports Category', NULL, '2023-11-22 06:49:49', '2023-11-22 06:49:49', NULL, 1, 1, 'SPORS');

-- --------------------------------------------------------

--
-- Table structure for table `cert`
--

CREATE TABLE `cert` (
                        `seri` varchar(64) NOT NULL,
                        `public_key` text NOT NULL COMMENT 'base64 ',
                        `cert_value` text NOT NULL COMMENT 'base64',
                        `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cert`
--

INSERT INTO `cert` (`seri`, `public_key`, `cert_value`, `created_at`) VALUES
    ('123', '123', '123', '2023-12-12 07:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
                         `color_id` varchar(64) NOT NULL,
                         `name` varchar(255) DEFAULT NULL,
                         `code` varchar(255) DEFAULT NULL,
                         `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                         `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`color_id`, `name`, `code`, `created_at`, `updated_at`) VALUES
                                                                                 ('1', 'Red', '#FF0000', '2023-11-22 06:49:49', '2023-11-23 03:49:49'),
                                                                                 ('2', 'Green', '#00FF00', '2023-11-22 06:49:49', '2023-11-23 03:49:49'),
                                                                                 ('3', 'Blue', '#0000FF', '2023-11-22 06:49:49', '2023-11-23 03:49:49'),
                                                                                 ('4', 'Yellow', '#FFFF00', '2023-11-22 06:49:49', '2023-11-23 03:49:49'),
                                                                                 ('5', 'Purple', '#800080', '2023-11-22 06:49:49', '2023-11-23 03:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
                           `comment_id` varchar(64) NOT NULL,
                           `user_id` varchar(64) DEFAULT NULL,
                           `product_id` varchar(11) DEFAULT NULL,
                           `content` text DEFAULT NULL,
                           `created_at` timestamp NULL DEFAULT current_timestamp(),
                           `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `product_id`, `content`, `created_at`, `updated_at`) VALUES
                                                                                                         ('1', 'user1', '1', 'This is a great product!', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                         ('2', 'user2', '1', 'I love this product.', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                         ('3', 'user3', '2', 'Not satisfied with this.', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                         ('4', 'user4', '3', 'Good quality and value.', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                         ('5', 'user5', '4', 'Could be better.', '2023-11-22 06:49:49', '2023-11-22 06:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
                            `discount_id` varchar(64) NOT NULL,
                            `name` varchar(255) NOT NULL,
                            `description` varchar(255) DEFAULT NULL,
                            `discount_percent` double NOT NULL,
                            `active` int(11) NOT NULL DEFAULT 1,
                            `start_date` varchar(10) NOT NULL,
                            `end_date` varchar(10) NOT NULL,
                            `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                            `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount_id`, `name`, `description`, `discount_percent`, `active`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
                                                                                                                                                      ('1', 'Summer Sale', 'Discount for Summer Season', 20, 1, '2023-06-01', '2023-08-31', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                      ('2', 'Clearance', 'Clearance Sale', 30, 1, '2023-09-01', '2023-09-30', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                      ('3', 'Holiday Special', 'Discount for Holiday Season', 15, 1, '2023-12-01', '2023-12-25', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                      ('4', 'Back to School', 'Discount for Back to School', 10, 1, '2023-08-15', '2023-09-15', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                      ('5', 'Black Friday', 'Black Friday Sale', 50, 1, '2023-11-24', '2023-11-27', '2023-11-22 06:49:49', '2023-11-22 06:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
                            `user_id` varchar(64) NOT NULL,
                            `product_id` varchar(11) NOT NULL,
                            `created_at` timestamp NULL DEFAULT current_timestamp(),
                            `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`user_id`, `product_id`, `created_at`, `updated_at`) VALUES
                                                                                 ('user1', '1', '2023-11-22 06:51:11', '2023-11-22 06:51:11'),
                                                                                 ('user4', '2', '2023-11-22 06:51:11', '2023-11-22 06:51:11'),
                                                                                 ('user2', '3', '2023-11-22 06:51:11', '2023-11-22 06:51:11'),
                                                                                 ('user5', '4', '2023-11-22 06:51:11', '2023-11-22 06:51:11'),
                                                                                 ('user3', '5', '2023-11-22 06:51:11', '2023-11-22 06:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
                                 `image_product_id` varchar(64) NOT NULL,
                                 `link` varchar(255) DEFAULT NULL,
                                 `product_id` varchar(64) DEFAULT NULL,
                                 `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                                 `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image_product`
--

INSERT INTO `image_product` (`image_product_id`, `link`, `product_id`, `created_at`, `updated_at`) VALUES
                                                                                                       ('1', 'image1.jpg', '1', '2023-11-22 06:51:11', '2023-11-23 03:51:11'),
                                                                                                       ('2', 'image2.jpg', '1', '2023-11-22 06:51:11', '2023-11-23 03:51:11'),
                                                                                                       ('3', 'image3.jpg', '2', '2023-11-22 06:51:11', '2023-11-23 03:51:11'),
                                                                                                       ('4', 'image4.jpg', '3', '2023-11-22 06:51:11', '2023-11-23 03:51:11'),
                                                                                                       ('5', 'image5.jpg', '4', '2023-11-22 06:51:11', '2023-11-23 03:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `image_slider`
--

CREATE TABLE `image_slider` (
                                `id` varchar(64) NOT NULL,
                                `link` varchar(255) DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT current_timestamp(),
                                `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
                         `order_id` varchar(12) NOT NULL COMMENT '6 kí tự đầu là ngay thang nam, 6 ki tu sau random',
                         `user_id` varchar(64) DEFAULT NULL,
                         `full_address` varchar(64) NOT NULL,
                         `price` double DEFAULT NULL,
                         `discount` int(11) DEFAULT NULL,
                         `shipping_fee` double DEFAULT NULL,
                         `total` double DEFAULT NULL,
                         `send_day` timestamp NULL DEFAULT NULL,
                         `receive_day` timestamp NULL DEFAULT NULL,
                         `status` int(11) DEFAULT NULL COMMENT '1-pending, 2-Confirmed, 3-Processing, 4-Shipped,5-Delivered,6-Cancelled,7-Returned,8-Refunded',
                         `created_at` timestamp NULL DEFAULT current_timestamp(),
                         `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `full_address`, `price`, `discount`, `shipping_fee`, `total`, `send_day`, `receive_day`, `status`, `created_at`, `updated_at`) VALUES
                                                                                                                                                                               ('1', 'user1', '1', 500, 50, 20, 470, '2023-08-19 03:00:00', '2023-08-24 03:00:00', 2, '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                                               ('2', 'user2', '2', 300, 10, 15, 305, '2023-08-20 03:00:00', '2023-08-25 03:00:00', 2, '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                                               ('231211208d6f', '94face32-ca88-4729-b3de-b34a0e390e48', 'tran phu, tay do, hung ha', 179998, 0, 100000, 279998, NULL, NULL, 0, '2023-12-10 21:56:32', '2023-12-10 21:56:32'),
                                                                                                                                                                               ('2312116ad5a5', '94face32-ca88-4729-b3de-b34a0e390e48', 'tran phu, tay do, hung ha', 179998, 0, 100000, 279998, NULL, NULL, 0, '2023-12-10 21:33:18', '2023-12-10 21:33:18'),
                                                                                                                                                                               ('231211cb6626', '94face32-ca88-4729-b3de-b34a0e390e48', 'tran phu, tay do, hung ha', 179998, 0, 100000, 279998, NULL, NULL, 0, '2023-12-10 21:57:31', '2023-12-10 21:57:31'),
                                                                                                                                                                               ('3', 'user3', '3', 200, 0, 10, 210, '2023-08-21 03:00:00', '2023-08-26 03:00:00', 1, '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                                               ('4', 'user4', '4', 100, 0, 10, 110, '2023-08-22 03:00:00', '2023-08-27 03:00:00', 1, '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                                               ('5', 'user5', '5', 150, 20, 15, 145, '2023-08-23 03:00:00', '2023-08-28 03:00:00', 2, '2023-11-22 06:49:49', '2023-11-22 06:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
                              `order_item_id` varchar(64) NOT NULL,
                              `order_id` varchar(12) DEFAULT NULL,
                              `product_id` varchar(64) DEFAULT NULL,
                              `quantity` int(11) DEFAULT NULL,
                              `color_id` varchar(64) DEFAULT NULL,
                              `price` double DEFAULT NULL,
                              `created_at` timestamp NULL DEFAULT current_timestamp(),
                              `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `quantity`, `color_id`, `price`, `created_at`, `updated_at`) VALUES
                                                                                                                                      ('3b8831fd-9596-4f27-a88f-423de6b1823d', '231211cb6626', '3', 1, '4', 2222, '2023-12-10 21:57:31', '2023-12-10 21:57:31'),
                                                                                                                                      ('7dc1f493-571b-45d4-9c91-f0de390b1b75', '231211cb6626', '5', 4, '1', 44444, '2023-12-10 21:57:31', '2023-12-10 21:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_sig`
--

CREATE TABLE `order_sig` (
                             `order_id` varchar(12) NOT NULL,
                             `sig` text DEFAULT NULL,
                             `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
                           `product_id` varchar(11) NOT NULL COMMENT '5 kí tự đầu là của shortId category, 6 kí tự sau random',
                           `name` varchar(255) NOT NULL,
                           `description` varchar(255) DEFAULT NULL,
                           `wheelSize` varchar(10) DEFAULT NULL,
                           `material` varchar(255) DEFAULT NULL,
                           `warranty` varchar(50) DEFAULT NULL,
                           `category_id` varchar(64) NOT NULL,
                           `brand_id` varchar(64) DEFAULT NULL,
                           `discount_id` varchar(64) DEFAULT NULL,
                           `supplier_id` varchar(64) DEFAULT NULL,
                           `status` int(11) DEFAULT 1,
                           `created_at` timestamp NULL DEFAULT current_timestamp(),
                           `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `wheelSize`, `material`, `warranty`, `category_id`, `brand_id`, `discount_id`, `supplier_id`, `status`, `created_at`, `updated_at`) VALUES
                                                                                                                                                                                                    ('1', 'Product 1', 'Description for Product 1', '16 inches', 'Metal', '1 year', '1', '1', NULL, '1', 1, '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                                                                    ('2', 'Product 2', 'Description for Product 2', '20 inches', 'Plastic', '2 years', '2', '2', NULL, '2', 1, '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                                                                    ('3', 'Product 3', 'Description for Product 3', '18 inches', 'Wood', '1 year', '3', '3', NULL, '3', 1, '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                                                                    ('4', 'Product 4', 'Description for Product 4', '14 inches', 'Metal', '6 months', '1', '4', NULL, '1', 1, '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                                                                                                                                                    ('5', 'Product 5', 'Description for Product 5', '22 inches', 'Plastic', '2 years', '2', '5', NULL, '2', 1, '2023-11-22 06:49:49', '2023-11-22 06:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `revocation_cert`
--

CREATE TABLE `revocation_cert` (
                                   `seri` varchar(64) NOT NULL,
                                   `revoked_at` bigint(20) DEFAULT NULL,
                                   `created_at` timestamp NULL DEFAULT current_timestamp(),
                                   `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_product_color`
--

CREATE TABLE `sub_product_color` (
                                     `product_id` varchar(64) NOT NULL,
                                     `color_id` varchar(64) NOT NULL,
                                     `inventory` int(11) NOT NULL,
                                     `price` double NOT NULL,
                                     `image_product_id` varchar(255) DEFAULT NULL,
                                     `created_at` timestamp NULL DEFAULT current_timestamp(),
                                     `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_product_color`
--

INSERT INTO `sub_product_color` (`product_id`, `color_id`, `inventory`, `price`, `image_product_id`, `created_at`, `updated_at`) VALUES
                                                                                                                                     ('1', '1', 100, 1, NULL, '2023-11-25 05:28:33', '2023-11-25 07:35:54'),
                                                                                                                                     ('1', '2', 1000, 11, NULL, '2023-11-25 05:28:33', '2023-11-25 07:35:54'),
                                                                                                                                     ('2', '3', 1, 111, NULL, '2023-11-25 05:28:33', '2023-11-25 07:59:28'),
                                                                                                                                     ('3', '4', 2, 2222, NULL, '2023-11-25 05:28:33', '2023-11-25 07:59:28'),
                                                                                                                                     ('4', '5', 3, 33333, NULL, '2023-11-25 05:28:33', '2023-11-25 07:59:28'),
                                                                                                                                     ('5', '1', 4, 44444, NULL, '2023-11-25 05:43:56', '2023-11-25 07:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
                            `supplier_id` varchar(64) NOT NULL,
                            `name` varchar(255) DEFAULT NULL,
                            `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                            `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `created_at`, `updated_at`) VALUES
                                                                               ('1', 'Supplier X', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                               ('2', 'Supplier Y', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                               ('3', 'Supplier Z', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                               ('4', 'Supplier A', '2023-11-22 06:49:49', '2023-11-22 06:49:49'),
                                                                               ('5', 'Supplier B', '2023-11-22 06:49:49', '2023-11-22 06:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
                        `user_id` varchar(64) NOT NULL,
                        `email` varchar(30) NOT NULL COMMENT 'email cua nguoi dung ',
                        `salt` varchar(64) NOT NULL COMMENT 'bao mat password bang sha2((salt+pass),256)',
                        `pass` varchar(255) NOT NULL,
                        `user_name` varchar(100) NOT NULL COMMENT 'ten tai khoan ',
                        `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngay tao',
                        `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngay sua doi',
                        `role` int(11) NOT NULL DEFAULT 0 COMMENT '1-user, 2-admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='user_info';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `salt`, `pass`, `user_name`, `created_at`, `updated_at`, `role`) VALUES
                                                                                                             ('94face32-ca88-4729-b3de-b34a0e390e48', 'admin@gmail.com', '8a316e582ae2898b941eb2f82d3ef209', 'f72633c729b73b342cfb5da6910fa7800599d0a52ab211e11bc575f328fc5cff', 'hai', '2023-11-22 06:52:14', '2023-11-22 06:52:32', 1),
                                                                                                             ('user1', 'user1@example.com', 'salt1', 'hashed_pass1', 'User 1', '2023-11-22 06:49:49', '2023-11-22 06:49:49', 1),
                                                                                                             ('user2', 'user2@example.com', 'salt2', 'hashed_pass2', 'User 2', '2023-11-22 06:49:49', '2023-11-22 06:49:49', 1),
                                                                                                             ('user3', 'user3@example.com', 'salt3', 'hashed_pass3', 'User 3', '2023-11-22 06:49:49', '2023-11-22 06:49:49', 1),
                                                                                                             ('user4', 'user4@example.com', 'salt4', 'hashed_pass4', 'User 4', '2023-11-22 06:49:49', '2023-11-22 06:49:49', 1),
                                                                                                             ('user5', 'user5@example.com', 'salt5', 'hashed_pass5', 'User 5', '2023-11-22 06:49:49', '2023-11-22 06:49:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_seri`
--

CREATE TABLE `user_seri` (
                             `user_id` varchar(64) NOT NULL,
                             `seri` varchar(64) NOT NULL,
                             `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_seri`
--

INSERT INTO `user_seri` (`user_id`, `seri`, `created_at`) VALUES
    ('1', '123', '2023-12-12 08:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `verify_code`
--

CREATE TABLE `verify_code` (
                               `code` varchar(6) NOT NULL,
                               `email` varchar(30) NOT NULL COMMENT 'email cua nguoi dung ',
                               `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                               `function` int(11) NOT NULL COMMENT '1-register, 2-login(otp), 3-resetPassword',
                               `valid` int(11) NOT NULL DEFAULT 1 COMMENT '0-No longer valid, 1- still valid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verify_code`
--

INSERT INTO `verify_code` (`code`, `email`, `created_at`, `function`, `valid`) VALUES
    ('5aadf6', 'admin@gmail.com', '2023-11-22 06:52:14', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
    ADD PRIMARY KEY (`address_id`),
    ADD KEY `address_user_user_id_fk` (`user_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
    ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
    ADD PRIMARY KEY (`cart_id`),
    ADD UNIQUE KEY `cart_pk` (`user_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
    ADD PRIMARY KEY (`cart_item_id`),
    ADD KEY `cart_item_cart_cart_id_fk` (`cart_id`),
    ADD KEY `cart_item_product_product_id_fk` (`product_id`),
    ADD KEY `cart_item_color_color_id_fk` (`color_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
    ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cert`
--
ALTER TABLE `cert`
    ADD PRIMARY KEY (`seri`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
    ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
    ADD PRIMARY KEY (`comment_id`),
    ADD KEY `product_id` (`product_id`),
    ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
    ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
    ADD PRIMARY KEY (`product_id`,`user_id`),
    ADD UNIQUE KEY `favorite_pk` (`user_id`,`product_id`),
    ADD KEY `product_id` (`product_id`),
    ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `image_product`
--
ALTER TABLE `image_product`
    ADD PRIMARY KEY (`image_product_id`),
    ADD KEY `sub_product_color_product_product_id_fk` (`product_id`);

--
-- Indexes for table `image_slider`
--
ALTER TABLE `image_slider`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
    ADD PRIMARY KEY (`order_id`),
    ADD KEY `order_address_address_id_fk` (`full_address`),
    ADD KEY `order_user_user_id_fk` (`user_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
    ADD PRIMARY KEY (`order_item_id`),
    ADD KEY `order_item_order_order_id_fk` (`order_id`),
    ADD KEY `order_item_product_product_id_fk` (`product_id`),
    ADD KEY `order_item_color_color_id_fk` (`color_id`);

--
-- Indexes for table `order_sig`
--
ALTER TABLE `order_sig`
    ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`product_id`),
    ADD KEY `product_brand_brand_id_fk` (`brand_id`),
    ADD KEY `product_category__category_id_fk` (`category_id`),
    ADD KEY `product_discount__discount_id_fk` (`discount_id`),
    ADD KEY `product_supplier_supplier_id_fk` (`supplier_id`);

--
-- Indexes for table `revocation_cert`
--
ALTER TABLE `revocation_cert`
    ADD PRIMARY KEY (`seri`);

--
-- Indexes for table `sub_product_color`
--
ALTER TABLE `sub_product_color`
    ADD PRIMARY KEY (`product_id`,`color_id`),
    ADD KEY `color_product_color_color_id_fk` (`color_id`),
    ADD KEY `sub_product_color_image_product_image_product_id_fk` (`image_product_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
    ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
    ADD PRIMARY KEY (`user_id`),
    ADD KEY `user_email_index` (`email`);

--
-- Indexes for table `user_seri`
--
ALTER TABLE `user_seri`
    ADD PRIMARY KEY (`seri`,`user_id`),
    ADD UNIQUE KEY `user_seri_pk` (`seri`);

--
-- Indexes for table `verify_code`
--
ALTER TABLE `verify_code`
    ADD PRIMARY KEY (`code`,`email`),
    ADD KEY `verify_code_email_index` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
    ADD CONSTRAINT `address_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
    ADD CONSTRAINT `cart_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
    ADD CONSTRAINT `cart_item_cart_cart_id_fk` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
    ADD CONSTRAINT `cart_item_color_color_id_fk` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
    ADD CONSTRAINT `cart_item_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
    ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
    ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
    ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
    ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `image_product`
--
ALTER TABLE `image_product`
    ADD CONSTRAINT `sub_product_color_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
    ADD CONSTRAINT `order_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
    ADD CONSTRAINT `order_item_color_color_id_fk` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
    ADD CONSTRAINT `order_item_order_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
    ADD CONSTRAINT `order_item_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `order_sig`
--
ALTER TABLE `order_sig`
    ADD CONSTRAINT `order_sig_order_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
    ADD CONSTRAINT `product_brand_brand_id_fk` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
    ADD CONSTRAINT `product_category__category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
    ADD CONSTRAINT `product_discount__discount_id_fk` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`),
    ADD CONSTRAINT `product_supplier_supplier_id_fk` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `revocation_cert`
--
ALTER TABLE `revocation_cert`
    ADD CONSTRAINT `revocation_cert_cert_seri_fk` FOREIGN KEY (`seri`) REFERENCES `cert` (`seri`);

--
-- Constraints for table `sub_product_color`
--
ALTER TABLE `sub_product_color`
    ADD CONSTRAINT `color_product_color_color_id_fk` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
    ADD CONSTRAINT `color_product_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
    ADD CONSTRAINT `sub_product_color_image_product_image_product_id_fk` FOREIGN KEY (`image_product_id`) REFERENCES `image_product` (`image_product_id`);

--
-- Constraints for table `user_seri`
--
ALTER TABLE `user_seri`
    ADD CONSTRAINT `user_seri_cert_seri_fk` FOREIGN KEY (`seri`) REFERENCES `cert` (`seri`);
COMMIT;