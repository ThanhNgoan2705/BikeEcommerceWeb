--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`
(
    `address_id`   varchar(64) NOT NULL,
    `user_id`      varchar(64)      DEFAULT NULL,
    `home_address` varchar(255)     DEFAULT NULL,
    `district`     varchar(100)     DEFAULT NULL,
    `city`         varchar(100)     DEFAULT NULL,
    `created_at`   timestamp   NULL DEFAULT current_timestamp(),
    `updated_at`   timestamp   NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`
(
    `brand_id`    varchar(64)  NOT NULL,
    `name`        varchar(255) NOT NULL,
    `description` varchar(255)          DEFAULT NULL,
    `image`       varchar(255)          DEFAULT NULL,
    `logo`        varchar(255)          DEFAULT NULL,
    `address`     varchar(255)          DEFAULT NULL,
    `email`       varchar(255)          DEFAULT NULL,
    `phone`       varchar(10)           DEFAULT NULL,
    `created_at`  timestamp    NOT NULL DEFAULT current_timestamp(),
    `updated_at`  timestamp    NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`
(
    `cart_id`    varchar(64) NOT NULL,
    `user_id`    varchar(64)      DEFAULT NULL,
    `ss_id`      varchar(64)      DEFAULT NULL,
    `created_at` timestamp   NULL DEFAULT current_timestamp(),
    `updated_at` timestamp   NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE `cart_item`
(
    `cart_item_id` varchar(64) NOT NULL,
    `cart_id`      varchar(64) NOT NULL,
    `product_id`   varchar(64) NOT NULL,
    `color_id`     varchar(64) NOT NULL,
    `quantity`     int(11)     NOT NULL COMMENT 'phai  lon  hon 0',
    `created_at`   timestamp   NULL DEFAULT current_timestamp(),
    `updated_at`   timestamp   NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`
(
    `category_id` varchar(64)  NOT NULL,
    `name`        varchar(255) NOT NULL,
    `description` varchar(255)          DEFAULT NULL,
    `image`       varchar(255)          DEFAULT NULL,
    `created_at`  timestamp    NOT NULL DEFAULT current_timestamp(),
    `updated_at`  timestamp    NOT NULL DEFAULT current_timestamp(),
    `parent_id`   varchar(5)            DEFAULT NULL,
    `active`      int(11)      NOT NULL DEFAULT 1,
    `level`       int(11)               DEFAULT NULL,
    `short_id`    varchar(5)   NOT NULL COMMENT 'dung để them vao dau id product'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`
(
    `color_id`   varchar(64) NOT NULL,
    `name`       varchar(255)         DEFAULT NULL,
    `code`       varchar(255)         DEFAULT NULL,
    `created_at` timestamp   NOT NULL DEFAULT current_timestamp(),
    `updated_at` datetime             DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`
(
    `comment_id` varchar(64) NOT NULL,
    `user_id`    varchar(64)      DEFAULT NULL,
    `product_id` varchar(11)      DEFAULT NULL,
    `content`    text             DEFAULT NULL,
    `created_at` timestamp   NULL DEFAULT current_timestamp(),
    `updated_at` timestamp   NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount`
(
    `discount_id`      varchar(64)  NOT NULL,
    `name`             varchar(255) NOT NULL,
    `description`      varchar(255)          DEFAULT NULL,
    `discount_percent` double       NOT NULL,
    `active`           int(11)      NOT NULL DEFAULT 1,
    `start_date`       varchar(10)  NOT NULL,
    `end_date`         varchar(10)  NOT NULL,
    `created_at`       timestamp    NOT NULL DEFAULT current_timestamp(),
    `updated_at`       timestamp    NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite`
(
    `user_id`    varchar(64) NOT NULL,
    `product_id` varchar(11) NOT NULL,
    `created_at` timestamp   NULL DEFAULT current_timestamp(),
    `updated_at` timestamp   NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

DROP TABLE IF EXISTS `image_product`;
CREATE TABLE `image_product`
(
    `image_product_id` varchar(64) NOT NULL,
    `link`             varchar(255)         DEFAULT NULL,
    `product_id`       varchar(64)          DEFAULT NULL,
    `created_at`       timestamp   NOT NULL DEFAULT current_timestamp(),
    `updated_at`       datetime             DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_slider`
--

DROP TABLE IF EXISTS `image_slider`;
CREATE TABLE `image_slider`
(
    `id`         varchar(64) NOT NULL,
    `link`       varchar(255)     DEFAULT NULL,
    `created_at` timestamp   NULL DEFAULT current_timestamp(),
    `updated_at` datetime         DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`
(
    `order_id`     varchar(12) NOT NULL COMMENT '6 kí tự đầu là ngay thang nam, 6 ki tu sau random',
    `user_id`      varchar(64)      DEFAULT NULL,
    `address_id`   varchar(64) NOT NULL,
    `price`        double           DEFAULT NULL,
    `discount`     int(11)          DEFAULT NULL,
    `shipping_fee` double           DEFAULT NULL,
    `total`        double           DEFAULT NULL,
    `send_day`     timestamp   NULL DEFAULT NULL,
    `receive_day`  timestamp   NULL DEFAULT NULL,
    `status`       int(11)          DEFAULT NULL COMMENT '1-pending, 2-Confirmed, 3-Processing, 4-Shipped,5-Delivered,6-Cancelled,7-Returned,8-Refunded',
    `created_at`   timestamp   NULL DEFAULT current_timestamp(),
    `updated_at`   timestamp   NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`
(
    `order_id`   varchar(12) NOT NULL,
    `product_id` varchar(11) NOT NULL,
    `quantity`   int(11)     NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`
(
    `product_id`  varchar(11)  NOT NULL COMMENT '5 kí tự đầu là của shortId category, 6 kí tự sau random',
    `name`        varchar(255) NOT NULL,
    `description` varchar(255)      DEFAULT NULL,
    `wheelSize`   varchar(10)       DEFAULT NULL,
    `material`    varchar(255)      DEFAULT NULL,
    `warranty`    varchar(50)       DEFAULT NULL,
    `category_id` varchar(64)  NOT NULL,
    `brand_id`    varchar(64)       DEFAULT NULL,
    `discount_id` varchar(64)       DEFAULT NULL,
    `supplier_id` varchar(64)       DEFAULT NULL,
    `status`      int(11)           DEFAULT 1,
    `created_at`  timestamp    NULL DEFAULT current_timestamp(),
    `updated_at`  timestamp    NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_product_color`
--

DROP TABLE IF EXISTS `sub_product_color`;
CREATE TABLE `sub_product_color`
(
    `product_id`       varchar(64) NOT NULL,
    `color_id`         varchar(64) NOT NULL,
    `inventory`        int(11)     NOT NULL,
    `price`            double      NOT NULL,
    `image_product_id` varchar(255)     DEFAULT NULL,
    `created_at`       timestamp   NULL DEFAULT current_timestamp(),
    `updated_at`       timestamp   NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`
(
    `supplier_id` varchar(64) NOT NULL,
    `name`        varchar(255)         DEFAULT NULL,
    `created_at`  timestamp   NOT NULL DEFAULT current_timestamp(),
    `updated_at`  timestamp   NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `user_id`    varchar(64)  NOT NULL,
    `email`      varchar(30)  NOT NULL COMMENT 'email cua nguoi dung ',
    `salt`       varchar(64)  NOT NULL COMMENT 'bao mat password bang sha2((salt+pass),256)',
    `pass`       varchar(255) NOT NULL,
    `user_name`  varchar(100) NOT NULL COMMENT 'ten tai khoan ',
    `created_at` timestamp    NOT NULL DEFAULT current_timestamp() COMMENT 'ngay tao',
    `updated_at` timestamp    NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngay sua doi',
    `role`       int(11)      NOT NULL DEFAULT 0 COMMENT '1-user, 2-admin'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='user_info';

-- --------------------------------------------------------

--
-- Table structure for table `verify_code`
--

DROP TABLE IF EXISTS `verify_code`;
CREATE TABLE `verify_code`
(
    `code`       varchar(6)  NOT NULL,
    `email`      varchar(30) NOT NULL COMMENT 'email cua nguoi dung ',
    `created_at` timestamp   NOT NULL DEFAULT current_timestamp(),
    `function`   int(11)     NOT NULL COMMENT '1-register, 2-login(otp), 3-resetPassword',
    `valid`      int(11)     NOT NULL DEFAULT 1 COMMENT '0-No longer valid, 1- still valid'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;

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
    ADD PRIMARY KEY (`product_id`, `user_id`),
    ADD UNIQUE KEY `favorite_pk` (`user_id`, `product_id`),
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
    ADD KEY `order_address_address_id_fk` (`address_id`),
    ADD KEY `order_user_user_id_fk` (`user_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
    ADD PRIMARY KEY (`order_id`, `product_id`),
    ADD KEY `order_item_product_product_id_fk` (`product_id`);

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
-- Indexes for table `sub_product_color`
--
ALTER TABLE `sub_product_color`
    ADD PRIMARY KEY (`product_id`, `color_id`),
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
-- Indexes for table `verify_code`
--
ALTER TABLE `verify_code`
    ADD PRIMARY KEY (`code`, `email`),
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
    ADD CONSTRAINT `order_address_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
    ADD CONSTRAINT `order_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
    ADD CONSTRAINT `order_item_order_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
    ADD CONSTRAINT `order_item_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
    ADD CONSTRAINT `product_brand_brand_id_fk` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
    ADD CONSTRAINT `product_category__category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
    ADD CONSTRAINT `product_discount__discount_id_fk` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`),
    ADD CONSTRAINT `product_supplier_supplier_id_fk` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `sub_product_color`
--
ALTER TABLE `sub_product_color`
    ADD CONSTRAINT `color_product_color_color_id_fk` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
    ADD CONSTRAINT `color_product_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
    ADD CONSTRAINT `sub_product_color_image_product_image_product_id_fk` FOREIGN KEY (`image_product_id`) REFERENCES `image_product` (`image_product_id`);
COMMIT;


