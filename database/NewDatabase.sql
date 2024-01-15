-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
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
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `home_address`, `district`, `city`, `created_at`, `updated_at`) VALUES
                                                                                                                    ('1', 'user2', '123 Main St', 'District 1', 'City A', '2023-11-21 23:49:49', '2023-12-04 01:59:51'),
                                                                                                                    ('17860ebe-d6ff-4c74-831e-df57068af3d5', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt', 'quận 9', 'Thành phố Hồ chí Minh', '2024-01-12 04:53:06', '2024-01-12 04:53:06'),
                                                                                                                    ('2', 'user3', '456 Elm St', 'District 2', 'City B', '2023-11-21 23:49:49', '2023-12-04 01:59:51'),
                                                                                                                    ('3', 'user3', '789 Oak St', 'District 3', 'City C', '2023-11-21 23:49:49', '2023-12-04 01:59:51'),
                                                                                                                    ('4', 'user2', '101 Pine St', 'District 4', 'City D', '2023-11-21 23:49:49', '2023-12-04 01:59:51'),
                                                                                                                    ('5', 'user4', '202 Maple St', 'District 5', 'City E', '2023-11-21 23:49:49', '2023-12-04 01:59:51'),
                                                                                                                    ('5ee3f9eb-9654-4fa7-a355-fb5827f6d55a', NULL, 'binh din', 'cut bo', 'dduy hai', '2023-12-10 13:52:19', '2023-12-10 13:52:19'),
                                                                                                                    ('6', '94face32-ca88-4729-b3de-b34a0e390e48', 'tran phu', 'tay do', 'hung ha', '2023-12-07 17:42:24', '2023-12-07 17:42:24'),
                                                                                                                    ('7', '94face32-ca88-4729-b3de-b34a0e390e48', 'thon song', 'binh luc', 'ha nam', '2023-12-07 17:43:20', '2023-12-07 17:43:20'),
                                                                                                                    ('79a92dca-fc3a-455a-8502-8e92535c6539', '94face32-ca88-4729-b3de-b34a0e390e48', 'chan ', 'cut cho', 'duy hai', '2023-12-10 13:58:38', '2023-12-10 13:58:38'),
                                                                                                                    ('f9a971ee-11e4-479b-a1ec-95c2b4b11a69', '634726e3-288c-412a-8d14-9a1b961fbd22', '123 le van viet', 'b', 'a', '2024-01-15 03:36:05', '2024-01-15 03:36:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
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
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `image`, `logo`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
                                                                                                                                      ('1', 'Brand X', 'Description for Brand X', NULL, NULL, NULL, 'contact@brandx.com', '1234567890', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                      ('2', 'Brand Y', 'Description for Brand Y', NULL, NULL, NULL, 'contact@brandy.com', '9876543210', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                      ('3', 'Brand Z', 'Description for Brand Z', NULL, NULL, NULL, 'contact@brandz.com', '5551234567', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                      ('4', 'Brand A', 'Description for Brand A', NULL, NULL, NULL, 'contact@branda.com', '1112223333', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                      ('5', 'Brand B', 'Description for Brand B', NULL, NULL, NULL, 'contact@brandb.com', '4445556666', '2023-11-21 23:49:49', '2023-11-21 23:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
                        `cart_id` varchar(64) NOT NULL,
                        `user_id` varchar(64) DEFAULT NULL,
                        `ss_id` varchar(64) DEFAULT NULL,
                        `created_at` timestamp NULL DEFAULT current_timestamp(),
                        `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `ss_id`, `created_at`, `updated_at`) VALUES
                                                                                   ('1', 'user1', 'session1', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                   ('2', 'user2', 'session2', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                   ('2db4ba63-9561-4a57-82c0-d9faf20e43e0', '94face32-ca88-4729-b3de-b34a0e390e48', NULL, '2023-11-21 23:52:32', '2023-11-21 23:52:32'),
                                                                                   ('3', 'user3', 'session3', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                   ('4', 'user4', 'session4', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                   ('5116b615-d837-434d-973c-5469ba70fc0b', '634726e3-288c-412a-8d14-9a1b961fbd22', NULL, '2024-01-06 16:36:48', '2024-01-06 16:36:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
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
-- Đang đổ dữ liệu cho bảng `cart_item`
--

INSERT INTO `cart_item` (`cart_item_id`, `cart_id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
                                                                                                                          ('31a565c6-3512-4aff-b71c-3320d490e3b9', '2db4ba63-9561-4a57-82c0-d9faf20e43e0', '3', '4', 1, '2023-12-04 14:18:05', '2023-12-04 14:18:05'),
                                                                                                                          ('808d6353-a54f-4dfc-a1a9-cf35acdd46b8', '2db4ba63-9561-4a57-82c0-d9faf20e43e0', '5', '1', 4, '2023-11-30 13:18:29', '2023-11-30 13:18:49'),
                                                                                                                          ('97362e50-428a-43be-9e43-135e0e9db7e5', '5116b615-d837-434d-973c-5469ba70fc0b', '3', '4', 1, '2024-01-14 14:39:44', '2024-01-14 14:39:44'),
                                                                                                                          ('bbb162ae-ed56-421b-928b-6c898b1e86cb', '5116b615-d837-434d-973c-5469ba70fc0b', '2', '3', 1, '2024-01-06 17:38:02', '2024-01-06 17:38:02'),
                                                                                                                          ('d8d839bc-648d-4aa2-82f3-d57e04732ec4', '5116b615-d837-434d-973c-5469ba70fc0b', '1', '1', 1, '2024-01-06 17:07:25', '2024-01-06 17:07:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
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
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`, `image`, `created_at`, `updated_at`, `parent_id`, `active`, `level`, `short_id`) VALUES
                                                                                                                                                   ('1', 'Electronics eqwew', 'Electronics Category', '', '2023-11-21 23:49:49', '2023-11-21 23:49:49', '', 0, 1, 'ELEC'),
                                                                                                                                                   ('10', 'Sports', 'Sports Category', NULL, '2023-11-21 23:49:49', '2023-11-21 23:49:49', '5', 1, 2, 'SPORS'),
                                                                                                                                                   ('2', 'Clothing', 'Clothing Category', NULL, '2023-11-21 23:49:49', '2023-11-21 23:49:49', NULL, 1, 1, 'CLOTH'),
                                                                                                                                                   ('3', 'Home', 'Home Category', NULL, '2023-11-21 23:49:49', '2023-11-21 23:49:49', NULL, 1, 1, 'HOME'),
                                                                                                                                                   ('4', 'Beauty', 'Beauty Category', NULL, '2023-11-21 23:49:49', '2023-11-21 23:49:49', NULL, 1, 1, 'BEAUY'),
                                                                                                                                                   ('5', 'Sports', 'Sports Category', NULL, '2023-11-21 23:49:49', '2023-11-21 23:49:49', NULL, 1, 1, 'SPORS'),
                                                                                                                                                   ('6', 'Electronics', 'Electronics Category', NULL, '2023-11-21 23:49:49', '2023-11-21 23:49:49', '1', 1, 2, 'ELEC'),
                                                                                                                                                   ('7', 'Clothing', 'Clothing Category', NULL, '2023-11-21 23:49:49', '2023-11-21 23:49:49', '2', 1, 2, 'CLOTH'),
                                                                                                                                                   ('8', 'Home', 'Home Category', NULL, '2023-11-21 23:49:49', '2023-11-21 23:49:49', '3', 1, 2, 'HOME'),
                                                                                                                                                   ('9', 'Beauty', 'Beauty Category', NULL, '2023-11-21 23:49:49', '2023-11-21 23:49:49', '4', 1, 2, 'BEAUY');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cert`
--

CREATE TABLE `cert` (
                        `seri` varchar(64) NOT NULL,
                        `public_key` text NOT NULL COMMENT 'base64 ',
                        `cert_value` text NOT NULL COMMENT 'base64',
                        `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cert`
--

INSERT INTO `cert` (`seri`, `public_key`, `cert_value`, `created_at`) VALUES
                                                                          ('123', '123', '123', '2023-12-12 00:31:04'),
                                                                          ('a8342817b2408224b6be84f522c2561f15a0f529180e58f8187c05d8075aa614', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsS0zbpQvGf+iTZ2fxstGXoF2k+BoYRAI5ZkBzskq1I9HgyW51sgH+PdIir0xDWdEdlcoSfqz05uXdU0hSTNgBpHANlSycIBO/azGrd/mMYSfg3vQPO30c6zpetKYUTcgblUtL2mO8WTzKwahEbvN1+/i1uzBMRev0oZqomQZ9zRcjvlhXYzA3QOrHOQraCYZJ0daIWSuASt0M/CDQclU3gg482J/dK49M43dBWUXGGgfwKWz+163nxtjDgnhMvwZ4NBc9ZdHmdIPoL/bDu6mIoC8rvx+2swDqoQAwXwjCDnmtLt00XarPm/S7grIpQ+Jm+tODcd9XswJunFZ7HpK4wIDAQAB', 'MIIDHDCCAgSgAwIBAgIhAKg0KBeyQIIktr6E9SLCVh8VoPUpGA5Y+Bh8BdgHWqYUMA0GCSqGSIb3DQEBCwUAMHQxETAPBgNVBAMMCDIwMTMwMTZAMRcwFQYDVQQKDA5HcmVlblRlYSBHcm91cDERMA8GA1UECwwIU3R1ZGVudHMxEDAOBgNVBAcMB1RodSBEdWMxDDAKBgNVBAgMA0hDTTETMBEGA1UEBhMKdmlldG5hbWVzZTAeFw0yNDAxMTQxNzE0MTBaFw0yNTAxMTQxNzE0MTBaMA8xDTALBgNVBAMMBG51bGwwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCxLTNulC8Z/6JNnZ/Gy0ZegXaT4GhhEAjlmQHOySrUj0eDJbnWyAf490iKvTENZ0R2VyhJ+rPTm5d1TSFJM2AGkcA2VLJwgE79rMat3+YxhJ+De9A87fRzrOl60phRNyBuVS0vaY7xZPMrBqERu83X7+LW7MExF6/ShmqiZBn3NFyO+WFdjMDdA6sc5CtoJhknR1ohZK4BK3Qz8INByVTeCDjzYn90rj0zjd0FZRcYaB/ApbP7XrefG2MOCeEy/Bng0Fz1l0eZ0g+gv9sO7qYigLyu/H7azAOqhADBfCMIOea0u3TRdqs+b9LuCsilD4mb604Nx31ezAm6cVnsekrjAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAALSWLF0pCK2U+OSLRWzT8uhbmWhFWFgStEMAmEfejku/DO47ddXeYDaCcyAvHNQDcw6XqSO/pM/8RikBXiaehNPsLkCV7caCzHguxrxTEnEzkOsgmQa96gRDBVOALgSpFI29i9u6rq2V80Js+P7xr0tCGhlLVilzTUkO4ZfcY4AavRJcYYkQwn8PrFagELwlPJYQQ8IDYg9K5xfuWJdbEBddFb1LZrfuM+2IeDWdrOzFlde8Uma9Jv1Px/2tLLMcF0cmhdly5a8nzeIqFgQBpEKFJKKGvnfQJIeL+9K1wiTGQC2Jej+2VHIRlydsq0jUjmYWuqXZai3PRRrELFwKkY=', '2024-01-14 17:14:10'),
                                                                          ('b22a34ea1c0d8bd395b6f9b44569463716adfa31e5d6600eea1b47ce467d56db', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAndYfCZZy1DD8gv83A5rXleI1kPh59BZ7F7kMe/OOZn+m88qhcZNyGM4YFqcEWLgvZ2KYloewz3jpux1sv+NVfeJY6K/e1nOy8REk7IY2cP2QnYugDY6UrS0NcRcG6aN5kbUyIDcZmBLztjU+I5AU/fSwA1U4X2auWn+iiJxiGqBGX8PoxOYKokqAQ/MoFSKJ1i9/GzYjJNjIPpx+k2Z2UsJmHnqdcVGIrLEMQslHRNqdCC0+B9/YcA9ApCutApPZ7U9JKinf0qy9sGFxu61b5F1WqFwr9l2lYzOfrcMSHB7O+PP2/YC2IwdQ94S0y7IbO7aJs2Lx6loN80XKm/Dr2wIDAQAB', 'MIIDHDCCAgSgAwIBAgIhALIqNOocDYvTlbb5tEVpRjcWrfox5dZgDuobR85GfVbbMA0GCSqGSIb3DQEBCwUAMHQxETAPBgNVBAMMCDIwMTMwMTZAMRcwFQYDVQQKDA5HcmVlblRlYSBHcm91cDERMA8GA1UECwwIU3R1ZGVudHMxEDAOBgNVBAcMB1RodSBEdWMxDDAKBgNVBAgMA0hDTTETMBEGA1UEBhMKdmlldG5hbWVzZTAeFw0yNDAxMTUwMzQwNDFaFw0yNTAxMTUwMzQwNDFaMA8xDTALBgNVBAMMBG51bGwwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCd1h8JlnLUMPyC/zcDmteV4jWQ+Hn0FnsXuQx7845mf6bzyqFxk3IYzhgWpwRYuC9nYpiWh7DPeOm7HWy/41V94ljor97Wc7LxESTshjZw/ZCdi6ANjpStLQ1xFwbpo3mRtTIgNxmYEvO2NT4jkBT99LADVThfZq5af6KInGIaoEZfw+jE5gqiSoBD8ygVIonWL38bNiMk2Mg+nH6TZnZSwmYeep1xUYissQxCyUdE2p0ILT4H39hwD0CkK60Ck9ntT0kqKd/SrL2wYXG7rVvkXVaoXCv2XaVjM5+twxIcHs748/b9gLYjB1D3hLTLshs7tomzYvHqWg3zRcqb8OvbAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAD2O1tP5uwlEwuxetJoR1qaQ2IOTSdz12J9dLhjq0tkH4oeQwwH44WOvu1hl54dish9Q5ucnx4+fBA0cA63+izHqz52Lnz3cdAWhsKrevzwGiZFeRn6oFgMw7+K+DVhV4CtiOsJ9YtBgPgmAcUk9BY2i/hV8I68SSbezIMqwpM/C5QIvctc1pxFjMGDqCBvUzJRevINfCYyloSmEJrsKZ1EA/l3Cvxky31wePt7VB61Sg9VYiSw3gFEGbfHM7/UxU2BD34NDijp0Zul4bj0ystAdwif2mF8cRj48Y9TAh7xjoNwtwhUf+d8rooQUQ0/n8X7kllKF3+Watf/ocJSAPBc=', '2024-01-15 03:40:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
                         `color_id` varchar(64) NOT NULL,
                         `name` varchar(255) DEFAULT NULL,
                         `code` varchar(255) DEFAULT NULL,
                         `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                         `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`color_id`, `name`, `code`, `created_at`, `updated_at`) VALUES
                                                                                 ('1', 'Red', '#FF0000', '2023-11-21 23:49:49', '2023-11-23 03:49:49'),
                                                                                 ('2', 'Green', '#00FF00', '2023-11-21 23:49:49', '2023-11-23 03:49:49'),
                                                                                 ('3', 'Blue', '#0000FF', '2023-11-21 23:49:49', '2023-11-23 03:49:49'),
                                                                                 ('4', 'Yellow', '#FFFF00', '2023-11-21 23:49:49', '2023-11-23 03:49:49'),
                                                                                 ('5', 'Purple', '#800080', '2023-11-21 23:49:49', '2023-11-23 03:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
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
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `user_id`, `product_id`, `content`, `created_at`, `updated_at`) VALUES
                                                                                                         ('1', 'user1', '1', 'This is a great product!', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                         ('2', 'user2', '1', 'I love this product.', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                         ('3', 'user3', '2', 'Not satisfied with this.', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                         ('4', 'user4', '3', 'Good quality and value.', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                         ('5', 'user5', '4', 'Could be better.', '2023-11-21 23:49:49', '2023-11-21 23:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount`
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
-- Đang đổ dữ liệu cho bảng `discount`
--

INSERT INTO `discount` (`discount_id`, `name`, `description`, `discount_percent`, `active`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
                                                                                                                                                      ('1', 'Summer Sale', 'Discount for Summer Season', 20, 1, '2023-06-01', '2023-08-31', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                      ('2', 'Clearance', 'Clearance Sale', 30, 1, '2023-09-01', '2023-09-30', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                      ('3', 'Holiday Special', 'Discount for Holiday Season', 15, 1, '2023-12-01', '2023-12-25', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                      ('4', 'Back to School', 'Discount for Back to School', 10, 1, '2023-08-15', '2023-09-15', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                      ('5', 'Black Friday', 'Black Friday Sale', 50, 1, '2023-11-24', '2023-11-27', '2023-11-21 23:49:49', '2023-11-21 23:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorite`
--

CREATE TABLE `favorite` (
                            `user_id` varchar(64) NOT NULL,
                            `product_id` varchar(11) NOT NULL,
                            `created_at` timestamp NULL DEFAULT current_timestamp(),
                            `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `favorite`
--

INSERT INTO `favorite` (`user_id`, `product_id`, `created_at`, `updated_at`) VALUES
                                                                                 ('user1', '1', '2023-11-21 23:51:11', '2023-11-21 23:51:11'),
                                                                                 ('user4', '2', '2023-11-21 23:51:11', '2023-11-21 23:51:11'),
                                                                                 ('user2', '3', '2023-11-21 23:51:11', '2023-11-21 23:51:11'),
                                                                                 ('user5', '4', '2023-11-21 23:51:11', '2023-11-21 23:51:11'),
                                                                                 ('user3', '5', '2023-11-21 23:51:11', '2023-11-21 23:51:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_product`
--

CREATE TABLE `image_product` (
                                 `image_product_id` varchar(64) NOT NULL,
                                 `link` varchar(255) DEFAULT NULL,
                                 `product_id` varchar(64) DEFAULT NULL,
                                 `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                                 `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `image_product`
--

INSERT INTO `image_product` (`image_product_id`, `link`, `product_id`, `created_at`, `updated_at`) VALUES
                                                                                                       ('1', 'image1.jpg', '1', '2023-11-21 23:51:11', '2023-11-23 03:51:11'),
                                                                                                       ('2', 'image2.jpg', '1', '2023-11-21 23:51:11', '2023-11-23 03:51:11'),
                                                                                                       ('3', 'image3.jpg', '2', '2023-11-21 23:51:11', '2023-11-23 03:51:11'),
                                                                                                       ('4', 'image4.jpg', '3', '2023-11-21 23:51:11', '2023-11-23 03:51:11'),
                                                                                                       ('5', 'image5.jpg', '4', '2023-11-21 23:51:11', '2023-11-23 03:51:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_slider`
--

CREATE TABLE `image_slider` (
                                `id` varchar(64) NOT NULL,
                                `link` varchar(255) DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT current_timestamp(),
                                `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
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
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `full_address`, `price`, `discount`, `shipping_fee`, `total`, `send_day`, `receive_day`, `status`, `created_at`, `updated_at`) VALUES
                                                                                                                                                                               ('1', 'user1', '1', 500, 50, 20, 470, '2023-08-18 20:00:00', '2023-08-23 20:00:00', 2, '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                                               ('2', 'user2', '2', 300, 10, 15, 305, '2023-08-19 20:00:00', '2023-08-24 20:00:00', 2, '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                                               ('231211208d6f', '634726e3-288c-412a-8d14-9a1b961fbd22', 'tran phu, tay do, hung ha', 179998, 0, 100000, 279998, '2023-08-19 20:00:00', '2023-08-19 20:00:00', 1, '2023-12-10 14:56:32', '2024-01-08 03:41:39'),
                                                                                                                                                                               ('2312116ad5a5', '634726e3-288c-412a-8d14-9a1b961fbd22', 'tran phu, tay do, hung ha', 179998, 0, 100000, 279998, '2023-08-19 20:00:00', '2023-08-19 20:00:00', 2, '2023-12-10 14:33:18', '2024-01-08 03:41:39'),
                                                                                                                                                                               ('231211cb6626', '634726e3-288c-412a-8d14-9a1b961fbd22', 'tran phu, tay do, hung ha', 179998, 0, 100000, 279998, '2023-08-19 20:00:00', '2023-08-19 20:00:00', 3, '2023-12-10 14:57:31', '2024-01-08 03:41:39'),
                                                                                                                                                                               ('240112771893', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt, quận 9, Thành phố Hồ chí Minh', 112, 0, 100000, 100112, NULL, NULL, 0, '2024-01-12 07:45:42', '2024-01-12 07:45:42'),
                                                                                                                                                                               ('240112842cb4', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt, quận 9, Thành phố Hồ chí Minh', 112, 0, 100000, 100112, NULL, NULL, 0, '2024-01-12 06:42:45', '2024-01-12 06:42:45'),
                                                                                                                                                                               ('2401140106d0', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt, quận 9, Thành phố Hồ chí Minh', 2334, 0, 100000, 102334, NULL, NULL, 0, '2024-01-14 15:47:58', '2024-01-14 15:47:58'),
                                                                                                                                                                               ('2401142ff1c2', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt, quận 9, Thành phố Hồ chí Minh', 112, 0, 100000, 100112, NULL, NULL, 0, '2024-01-14 14:30:46', '2024-01-14 14:30:46'),
                                                                                                                                                                               ('2401147315da', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt, quận 9, Thành phố Hồ chí Minh', 112, 0, 100000, 100112, NULL, NULL, 0, '2024-01-14 14:38:49', '2024-01-14 14:38:49'),
                                                                                                                                                                               ('240114b67e2b', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt, quận 9, Thành phố Hồ chí Minh', 112, 0, 100000, 100112, NULL, NULL, 0, '2024-01-14 14:25:56', '2024-01-14 14:25:56'),
                                                                                                                                                                               ('240114d0ff98', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt, quận 9, Thành phố Hồ chí Minh', 2334, 0, 100000, 102334, NULL, NULL, 0, '2024-01-14 15:26:58', '2024-01-14 15:26:58'),
                                                                                                                                                                               ('240114fcf1e5', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt, quận 9, Thành phố Hồ chí Minh', 2334, 0, 100000, 102334, NULL, NULL, 0, '2024-01-14 14:39:53', '2024-01-14 14:39:53'),
                                                                                                                                                                               ('2401154a5bf8', '634726e3-288c-412a-8d14-9a1b961fbd22', '123 le van viet, b, a', 2334, 0, 100000, 102334, NULL, NULL, 0, '2024-01-15 05:11:23', '2024-01-15 05:11:23'),
                                                                                                                                                                               ('2401159e9088', '634726e3-288c-412a-8d14-9a1b961fbd22', '127 Lê văn việt, quận 9, Thành phố Hồ chí Minh', 2334, 0, 100000, 102334, NULL, NULL, 0, '2024-01-14 17:18:42', '2024-01-14 17:18:42'),
                                                                                                                                                                               ('240115b668d4', '634726e3-288c-412a-8d14-9a1b961fbd22', '123 le van viet, b, a', 11, 0, 100000, 102334, NULL, NULL, 1, '2024-01-15 03:36:20', '2024-01-15 04:31:04'),
                                                                                                                                                                               ('3', 'user3', '3', 200, 0, 10, 210, '2023-08-20 20:00:00', '2023-08-25 20:00:00', 1, '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                                               ('4', 'user4', '4', 100, 0, 10, 110, '2023-08-21 20:00:00', '2023-08-26 20:00:00', 1, '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                                               ('5', 'user5', '5', 150, 20, 15, 145, '2023-08-22 20:00:00', '2023-08-27 20:00:00', 2, '2023-11-21 23:49:49', '2023-11-21 23:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_item`
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
-- Đang đổ dữ liệu cho bảng `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `quantity`, `color_id`, `price`, `created_at`, `updated_at`) VALUES
                                                                                                                                      ('022e6d0a-e5c6-4bc4-8971-04aec321892e', '2401142ff1c2', '2', 1, '3', 111, '2024-01-14 14:30:46', '2024-01-14 14:30:46'),
                                                                                                                                      ('0ec2cf7e-ceef-4cb3-8520-96a1daee4001', '240114b67e2b', '2', 1, '3', 111, '2024-01-14 14:25:56', '2024-01-14 14:25:56'),
                                                                                                                                      ('0f6d44be-ad35-46ff-bb3e-c974b30b880a', '2401154a5bf8', '3', 1, '4', 2222, '2024-01-15 05:11:23', '2024-01-15 05:11:23'),
                                                                                                                                      ('143fa2ef-8752-444c-bcc4-c1c6524c815b', '2401159e9088', '2', 1, '3', 111, '2024-01-14 17:18:42', '2024-01-14 17:18:42'),
                                                                                                                                      ('1462938a-49be-4751-94b1-d18e0f6eb940', '2401140106d0', '1', 1, '1', 1, '2024-01-14 15:47:58', '2024-01-14 15:47:58'),
                                                                                                                                      ('1e4fc006-3230-47ad-84f6-2940d4304a9b', '240115b668d4', '2', 1, '3', 111, '2024-01-15 03:36:20', '2024-01-15 03:36:20'),
                                                                                                                                      ('23c0ac8f-3458-42ec-b491-a2c0c39401f3', '2401154a5bf8', '2', 1, '3', 111, '2024-01-15 05:11:23', '2024-01-15 05:11:23'),
                                                                                                                                      ('28194a6a-24c8-42bb-9ac5-8feae8dd9864', '240114fcf1e5', '2', 1, '3', 111, '2024-01-14 14:39:53', '2024-01-14 14:39:53'),
                                                                                                                                      ('35efe334-eb56-4762-a77e-db2f3a1f3553', '2401159e9088', '3', 1, '4', 2222, '2024-01-14 17:18:42', '2024-01-14 17:18:42'),
                                                                                                                                      ('3b8831fd-9596-4f27-a88f-423de6b1823d', '231211cb6626', '3', 1, '4', 2222, '2023-12-10 14:57:31', '2023-12-10 14:57:31'),
                                                                                                                                      ('53036349-3f6f-4106-aab5-fd744813cb45', '2401147315da', '1', 1, '1', 1, '2024-01-14 14:38:49', '2024-01-14 14:38:49'),
                                                                                                                                      ('54bfc161-064f-4eab-855c-50fc67614b9f', '2401147315da', '2', 1, '3', 111, '2024-01-14 14:38:49', '2024-01-14 14:38:49'),
                                                                                                                                      ('5cb2b3cb-2378-4f6e-8690-7222b8e98735', '240114d0ff98', '3', 1, '4', 2222, '2024-01-14 15:26:58', '2024-01-14 15:26:58'),
                                                                                                                                      ('6695682f-68c4-4215-888a-a469507554ba', '240114fcf1e5', '3', 1, '4', 2222, '2024-01-14 14:39:53', '2024-01-14 14:39:53'),
                                                                                                                                      ('68bf8bdc-1c1b-489c-a0d3-c108aeff6f93', '240115b668d4', '3', 1, '4', 2222, '2024-01-15 03:36:20', '2024-01-15 03:36:20'),
                                                                                                                                      ('6eb1bba6-d28f-45d3-8d83-95ec0febe3f3', '240114d0ff98', '2', 1, '3', 111, '2024-01-14 15:26:58', '2024-01-14 15:26:58'),
                                                                                                                                      ('7137d5b8-f6ec-4971-a715-92520bbd3535', '2401159e9088', '1', 1, '1', 1, '2024-01-14 17:18:42', '2024-01-14 17:18:42'),
                                                                                                                                      ('7a8146e6-a616-4e7f-a4fe-a57d674e657e', '2401142ff1c2', '1', 1, '1', 1, '2024-01-14 14:30:46', '2024-01-14 14:30:46'),
                                                                                                                                      ('7ada8694-0c97-4395-ba24-96d8c3f36435', '2401140106d0', '3', 1, '4', 2222, '2024-01-14 15:47:58', '2024-01-14 15:47:58'),
                                                                                                                                      ('7dc1f493-571b-45d4-9c91-f0de390b1b75', '231211cb6626', '5', 4, '1', 44444, '2023-12-10 14:57:31', '2023-12-10 14:57:31'),
                                                                                                                                      ('83e4bb4b-2803-4ea8-810c-e3cdc52450c6', '240112842cb4', '1', 1, '1', 1, '2024-01-12 06:42:45', '2024-01-12 06:42:45'),
                                                                                                                                      ('9664ce38-5d40-48ec-88e4-99330fd5e981', '240114fcf1e5', '1', 1, '1', 1, '2024-01-14 14:39:53', '2024-01-14 14:39:53'),
                                                                                                                                      ('a254efb8-55e4-40ee-af56-6d5c115f6b63', '240114b67e2b', '1', 1, '1', 1, '2024-01-14 14:25:56', '2024-01-14 14:25:56'),
                                                                                                                                      ('a49e519d-ec6f-4121-8f30-d91a162b5b5e', '2401140106d0', '2', 1, '3', 111, '2024-01-14 15:47:58', '2024-01-14 15:47:58'),
                                                                                                                                      ('be33a04f-b697-4468-be36-0b34d2380696', '240112771893', '2', 1, '3', 111, '2024-01-12 07:45:42', '2024-01-12 07:45:42'),
                                                                                                                                      ('bedf2aeb-5b91-4200-ae5f-560339551b8f', '240112771893', '1', 1, '1', 1, '2024-01-12 07:45:42', '2024-01-12 07:45:42'),
                                                                                                                                      ('cef33d96-ddd9-47cb-8f80-d7ef83014230', '2401154a5bf8', '1', 1, '1', 1, '2024-01-15 05:11:23', '2024-01-15 05:11:23'),
                                                                                                                                      ('cff4f748-611b-45f1-80ad-52a3d1fcfae8', '240114d0ff98', '1', 1, '1', 1, '2024-01-14 15:26:58', '2024-01-14 15:26:58'),
                                                                                                                                      ('ea04aa0d-5694-4e10-a526-4814d4b6bd13', '240115b668d4', '1', 1, '1', 1, '2024-01-15 03:36:20', '2024-01-15 03:36:20'),
                                                                                                                                      ('f9cb95e6-8cb6-41bd-843f-0ef07f10b3b8', '240112842cb4', '2', 1, '3', 111, '2024-01-12 06:42:45', '2024-01-12 06:42:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_sig`
--

CREATE TABLE `order_sig` (
                             `order_id` varchar(12) NOT NULL,
                             `sig` text DEFAULT NULL,
                             `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_sig`
--

INSERT INTO `order_sig` (`order_id`, `sig`, `created_at`) VALUES
    ('240115b668d4', 'MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAaCABEA5YTRiMjM4MTk1ZjRmOThlNGY5NGJmMmMxYWJhZGUyNDg0NzZlZmQzZTI4YTc0YWNkOGY1YTFhZmYzZGNmYTcxAAAAAKCAMIIDHDCCAgSgAwIBAgIhALIqNOocDYvTlbb5tEVpRjcWrfox5dZgDuobR85GfVbbMA0GCSqGSIb3DQEBCwUAMHQxETAPBgNVBAMMCDIwMTMwMTZAMRcwFQYDVQQKDA5HcmVlblRlYSBHcm91cDERMA8GA1UECwwIU3R1ZGVudHMxEDAOBgNVBAcMB1RodSBEdWMxDDAKBgNVBAgMA0hDTTETMBEGA1UEBhMKdmlldG5hbWVzZTAeFw0yNDAxMTUwMzQwNDFaFw0yNTAxMTUwMzQwNDFaMA8xDTALBgNVBAMMBG51bGwwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCd1h8JlnLUMPyC/zcDmteV4jWQ+Hn0FnsXuQx7845mf6bzyqFxk3IYzhgWpwRYuC9nYpiWh7DPeOm7HWy/41V94ljor97Wc7LxESTshjZw/ZCdi6ANjpStLQ1xFwbpo3mRtTIgNxmYEvO2NT4jkBT99LADVThfZq5af6KInGIaoEZfw+jE5gqiSoBD8ygVIonWL38bNiMk2Mg+nH6TZnZSwmYeep1xUYissQxCyUdE2p0ILT4H39hwD0CkK60Ck9ntT0kqKd/SrL2wYXG7rVvkXVaoXCv2XaVjM5+twxIcHs748/b9gLYjB1D3hLTLshs7tomzYvHqWg3zRcqb8OvbAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAD2O1tP5uwlEwuxetJoR1qaQ2IOTSdz12J9dLhjq0tkH4oeQwwH44WOvu1hl54dish9Q5ucnx4+fBA0cA63+izHqz52Lnz3cdAWhsKrevzwGiZFeRn6oFgMw7+K+DVhV4CtiOsJ9YtBgPgmAcUk9BY2i/hV8I68SSbezIMqwpM/C5QIvctc1pxFjMGDqCBvUzJRevINfCYyloSmEJrsKZ1EA/l3Cvxky31wePt7VB61Sg9VYiSw3gFEGbfHM7/UxU2BD34NDijp0Zul4bj0ystAdwif2mF8cRj48Y9TAh7xjoNwtwhUf+d8rooQUQ0/n8X7kllKF3+Watf/ocJSAPBcAADGCAkwwggJIAgEBMIGZMHQxETAPBgNVBAMMCDIwMTMwMTZAMRcwFQYDVQQKDA5HcmVlblRlYSBHcm91cDERMA8GA1UECwwIU3R1ZGVudHMxEDAOBgNVBAcMB1RodSBEdWMxDDAKBgNVBAgMA0hDTTETMBEGA1UEBhMKdmlldG5hbWVzZQIhALIqNOocDYvTlbb5tEVpRjcWrfox5dZgDuobR85GfVbbMAkGBSsOAwIaBQCggYgwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjQwMTE1MDM0MjI1WjAjBgkqhkiG9w0BCQQxFgQUqSxcJbWopA+cBL0tPFsV3+q4akswKQYJKoZIhvcNAQk0MRwwGjAJBgUrDgMCGgUAoQ0GCSqGSIb3DQEBAQUAMA0GCSqGSIb3DQEBAQUABIIBAALO+14tLcKEaP8HU1yl2n3s5Pg6zNzntUqLVvwBd+B6tr2r1Vr62bOAKTOzllAbIBU7B9D32tvZsE/M7OmOGhaL1anTrP5ztc7sfm/6Dqe+/idlChchmox60u/oQST2LtRkUtMJALYWO9cmVZNLrIZuJpgfY6LtdlMyHw0M3n5e5sGa6JGiYVXGVZ14qGs4zZy0+7jEJnYm9E7b851Ao4//qYI4cmOqeMg4f1aRX1Nk0jYYBDNArakeu15DOqzxw3FRCffXZO/u2nXzGGlFitLjg0UFmzAVNn0/KElHCbT3Nul7xD8FjiU7OuTkI9EuXTDkXLHWanJt8ceyuQxpykwAAAAAAAA=', '2024-01-15 03:58:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
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
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `wheelSize`, `material`, `warranty`, `category_id`, `brand_id`, `discount_id`, `supplier_id`, `status`, `created_at`, `updated_at`) VALUES
                                                                                                                                                                                                    ('1', 'Product 1', 'Description for Product 1', '16 inches', 'Metal', '1 year', '1', '1', NULL, '1', 1, '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                                                                    ('2', 'Product 2', 'Description for Product 2', '20 inches', 'Plastic', '2 years', '2', '2', NULL, '2', 1, '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                                                                    ('3', 'Product 3', 'Description for Product 3', '18 inches', 'Wood', '1 year', '3', '3', NULL, '3', 1, '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                                                                    ('4', 'Product 4', 'Description for Product 4', '14 inches', 'Metal', '6 months', '1', '4', NULL, '1', 1, '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                                                                                                                                                    ('5', 'Product 5', 'Description for Product 5', '22 inches', 'Plastic', '2 years', '2', '5', NULL, '2', 1, '2023-11-21 23:49:49', '2023-11-21 23:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `revocation_cert`
--

CREATE TABLE `revocation_cert` (
                                   `seri` varchar(64) NOT NULL,
                                   `revoked_at` bigint(20) DEFAULT NULL,
                                   `created_at` timestamp NULL DEFAULT current_timestamp(),
                                   `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_product_color`
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
-- Đang đổ dữ liệu cho bảng `sub_product_color`
--

INSERT INTO `sub_product_color` (`product_id`, `color_id`, `inventory`, `price`, `image_product_id`, `created_at`, `updated_at`) VALUES
                                                                                                                                     ('1', '1', 100, 1, NULL, '2023-11-24 22:28:33', '2023-11-25 00:35:54'),
                                                                                                                                     ('1', '2', 1000, 11, NULL, '2023-11-24 22:28:33', '2023-11-25 00:35:54'),
                                                                                                                                     ('2', '3', 1, 111, NULL, '2023-11-24 22:28:33', '2023-11-25 00:59:28'),
                                                                                                                                     ('3', '4', 2, 2222, NULL, '2023-11-24 22:28:33', '2023-11-25 00:59:28'),
                                                                                                                                     ('4', '5', 3, 33333, NULL, '2023-11-24 22:28:33', '2023-11-25 00:59:28'),
                                                                                                                                     ('5', '1', 4, 44444, NULL, '2023-11-24 22:43:56', '2023-11-25 00:59:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
                            `supplier_id` varchar(64) NOT NULL,
                            `name` varchar(255) DEFAULT NULL,
                            `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                            `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `created_at`, `updated_at`) VALUES
                                                                               ('1', 'Supplier X', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                               ('2', 'Supplier Y', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                               ('3', 'Supplier Z', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                               ('4', 'Supplier A', '2023-11-21 23:49:49', '2023-11-21 23:49:49'),
                                                                               ('5', 'Supplier B', '2023-11-21 23:49:49', '2023-11-21 23:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
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
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `email`, `salt`, `pass`, `user_name`, `created_at`, `updated_at`, `role`) VALUES
                                                                                                             ('634726e3-288c-412a-8d14-9a1b961fbd22', 'chanchan@gmail.com', '8759a7bde65e5886299ae8e6a7ee00f1', 'f0a18fb56fa1613ba583816aa5464df9d62e780012fd700b00dd6803e305c2f1', 'chan', '2024-01-06 16:36:33', '2024-01-06 16:36:48', 1),
                                                                                                             ('94face32-ca88-4729-b3de-b34a0e390e48', 'admin@gmail.com', '8a316e582ae2898b941eb2f82d3ef209', 'f72633c729b73b342cfb5da6910fa7800599d0a52ab211e11bc575f328fc5cff', 'hai', '2023-11-21 23:52:14', '2024-01-04 05:20:36', 2),
                                                                                                             ('user1', 'user1@example.com', 'salt1', 'hashed_pass1', 'User 1', '2023-11-21 23:49:49', '2023-11-21 23:49:49', 1),
                                                                                                             ('user2', 'user2@example.com', 'salt2', 'hashed_pass2', 'User 2', '2023-11-21 23:49:49', '2023-11-21 23:49:49', 1),
                                                                                                             ('user3', 'user3@example.com', 'salt3', 'hashed_pass3', 'User 3', '2023-11-21 23:49:49', '2023-11-21 23:49:49', 1),
                                                                                                             ('user4', 'user4@example.com', 'salt4', 'hashed_pass4', 'User 4', '2023-11-21 23:49:49', '2023-11-21 23:49:49', 1),
                                                                                                             ('user5', 'user5@example.com', 'salt5', 'hashed_pass5', 'User 5', '2023-11-21 23:49:49', '2023-11-21 23:49:49', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_seri`
--

CREATE TABLE `user_seri` (
                             `user_id` varchar(64) NOT NULL,
                             `seri` varchar(64) NOT NULL,
                             `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_seri`
--

INSERT INTO `user_seri` (`user_id`, `seri`, `created_at`) VALUES
                                                              ('1', '123', '2023-12-12 01:02:38'),
                                                              ('634726e3-288c-412a-8d14-9a1b961fbd22', 'a8342817b2408224b6be84f522c2561f15a0f529180e58f8187c05d8075aa614', '2024-01-14 17:14:10'),
                                                              ('634726e3-288c-412a-8d14-9a1b961fbd22', 'b22a34ea1c0d8bd395b6f9b44569463716adfa31e5d6600eea1b47ce467d56db', '2024-01-15 03:40:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `verify_code`
--

CREATE TABLE `verify_code` (
                               `code` varchar(6) NOT NULL,
                               `email` varchar(30) NOT NULL COMMENT 'email cua nguoi dung ',
                               `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
                               `function` int(11) NOT NULL COMMENT '1-register, 2-login(otp), 3-resetPassword',
                               `valid` int(11) NOT NULL DEFAULT 1 COMMENT '0-No longer valid, 1- still valid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `verify_code`
--

INSERT INTO `verify_code` (`code`, `email`, `created_at`, `function`, `valid`) VALUES
                                                                                   ('360150', 'chanchan@gmail.com', '2024-01-06 16:36:33', 1, 0),
                                                                                   ('5aadf6', 'admin@gmail.com', '2023-11-21 23:52:14', 1, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
    ADD PRIMARY KEY (`address_id`),
    ADD KEY `address_user_user_id_fk` (`user_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
    ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
    ADD PRIMARY KEY (`cart_id`),
    ADD UNIQUE KEY `cart_pk` (`user_id`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
    ADD PRIMARY KEY (`cart_item_id`),
    ADD KEY `cart_item_cart_cart_id_fk` (`cart_id`),
    ADD KEY `cart_item_product_product_id_fk` (`product_id`),
    ADD KEY `cart_item_color_color_id_fk` (`color_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
    ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `cert`
--
ALTER TABLE `cert`
    ADD PRIMARY KEY (`seri`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
    ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
    ADD PRIMARY KEY (`comment_id`),
    ADD KEY `product_id` (`product_id`),
    ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `discount`
--
ALTER TABLE `discount`
    ADD PRIMARY KEY (`discount_id`);

--
-- Chỉ mục cho bảng `favorite`
--
ALTER TABLE `favorite`
    ADD PRIMARY KEY (`product_id`,`user_id`),
    ADD UNIQUE KEY `favorite_pk` (`user_id`,`product_id`),
    ADD KEY `product_id` (`product_id`),
    ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `image_product`
--
ALTER TABLE `image_product`
    ADD PRIMARY KEY (`image_product_id`),
    ADD KEY `sub_product_color_product_product_id_fk` (`product_id`);

--
-- Chỉ mục cho bảng `image_slider`
--
ALTER TABLE `image_slider`
    ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
    ADD PRIMARY KEY (`order_id`),
    ADD KEY `order_address_address_id_fk` (`full_address`),
    ADD KEY `order_user_user_id_fk` (`user_id`);

--
-- Chỉ mục cho bảng `order_item`
--
ALTER TABLE `order_item`
    ADD PRIMARY KEY (`order_item_id`),
    ADD KEY `order_item_order_order_id_fk` (`order_id`),
    ADD KEY `order_item_product_product_id_fk` (`product_id`),
    ADD KEY `order_item_color_color_id_fk` (`color_id`);

--
-- Chỉ mục cho bảng `order_sig`
--
ALTER TABLE `order_sig`
    ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`product_id`),
    ADD KEY `product_brand_brand_id_fk` (`brand_id`),
    ADD KEY `product_category__category_id_fk` (`category_id`),
    ADD KEY `product_discount__discount_id_fk` (`discount_id`),
    ADD KEY `product_supplier_supplier_id_fk` (`supplier_id`);

--
-- Chỉ mục cho bảng `revocation_cert`
--
ALTER TABLE `revocation_cert`
    ADD PRIMARY KEY (`seri`);

--
-- Chỉ mục cho bảng `sub_product_color`
--
ALTER TABLE `sub_product_color`
    ADD PRIMARY KEY (`product_id`,`color_id`),
    ADD KEY `color_product_color_color_id_fk` (`color_id`),
    ADD KEY `sub_product_color_image_product_image_product_id_fk` (`image_product_id`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
    ADD PRIMARY KEY (`supplier_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
    ADD PRIMARY KEY (`user_id`),
    ADD KEY `user_email_index` (`email`);

--
-- Chỉ mục cho bảng `user_seri`
--
ALTER TABLE `user_seri`
    ADD PRIMARY KEY (`seri`,`user_id`),
    ADD UNIQUE KEY `user_seri_pk` (`seri`);

--
-- Chỉ mục cho bảng `verify_code`
--
ALTER TABLE `verify_code`
    ADD PRIMARY KEY (`code`,`email`),
    ADD KEY `verify_code_email_index` (`email`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `address`
--
ALTER TABLE `address`
    ADD CONSTRAINT `address_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
    ADD CONSTRAINT `cart_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
    ADD CONSTRAINT `cart_item_cart_cart_id_fk` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
    ADD CONSTRAINT `cart_item_color_color_id_fk` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
    ADD CONSTRAINT `cart_item_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
    ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
    ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `favorite`
--
ALTER TABLE `favorite`
    ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
    ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `image_product`
--
ALTER TABLE `image_product`
    ADD CONSTRAINT `sub_product_color_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
    ADD CONSTRAINT `order_user_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `order_item`
--
ALTER TABLE `order_item`
    ADD CONSTRAINT `order_item_color_color_id_fk` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
    ADD CONSTRAINT `order_item_order_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
    ADD CONSTRAINT `order_item_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `order_sig`
--
ALTER TABLE `order_sig`
    ADD CONSTRAINT `order_sig_order_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
    ADD CONSTRAINT `product_brand_brand_id_fk` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
    ADD CONSTRAINT `product_category__category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
    ADD CONSTRAINT `product_discount__discount_id_fk` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`),
    ADD CONSTRAINT `product_supplier_supplier_id_fk` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Các ràng buộc cho bảng `revocation_cert`
--
ALTER TABLE `revocation_cert`
    ADD CONSTRAINT `revocation_cert_cert_seri_fk` FOREIGN KEY (`seri`) REFERENCES `cert` (`seri`);

--
-- Các ràng buộc cho bảng `sub_product_color`
--
ALTER TABLE `sub_product_color`
    ADD CONSTRAINT `color_product_color_color_id_fk` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
    ADD CONSTRAINT `color_product_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
    ADD CONSTRAINT `sub_product_color_image_product_image_product_id_fk` FOREIGN KEY (`image_product_id`) REFERENCES `image_product` (`image_product_id`);

--
-- Các ràng buộc cho bảng `user_seri`
--
ALTER TABLE `user_seri`
    ADD CONSTRAINT `user_seri_cert_seri_fk` FOREIGN KEY (`seri`) REFERENCES `cert` (`seri`);
COMMIT;