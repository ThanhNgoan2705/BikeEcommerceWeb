
--
-- Cơ sở dữ liệu: `bike_ecommerce`
--

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
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `home_address`, `district`, `city`, `created_at`, `updated_at`) VALUES
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
                                                                                                                                      ('brand1', 'Pega', 'Về chất lượng thì những mẫu xe đến từ ĐÀI LOAN đã được khảng định tại việt nam', 'https://www.thegioixedien.com.vn/datafiles/setone/1703243861_avt-chicv.png', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK8lxWvWdG9nVwlzDtn_yu9WHu7VBoQFDw-OipiVTdqQ&s', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48'),
                                                                                                                                      ('brand10', 'Tekko', 'Với ngân sách trong khoảng 8-10 triệu đồng, quý khách hàng hoàn toàn có thể chọn được cho mình một chiếc xe đạp thể thao chính hãng', 'https://www.thegioixedien.com.vn/datafiles/setone/1700468346_1689244421_xd1.jpeg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrhe1sWIoKVt9WFtfDKJCV0xTG3ErJ8bYdC1DesAs2-w&s', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48'),
                                                                                                                                      ('brand2', 'JVC', 'Đã có mặt và chiếm chọn sự tin tưởng của người dân việt nam trong suốt gần 15 năm qua bằng uy tín và chất lượng', 'https://www.thegioixedien.com.vn/datafiles/setone/1703333583_26.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIxmk1DeAXYLtiKqLwLHx5hH95Alf31uooAKURM9XF0Q&s', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48'),
                                                                                                                                      ('brand3', 'DiBao', 'Xe sử dụng 5 acquy 20a được nhập khẩu chính hãng của hãng tianneng\n sản xuất acquy có độ bền số 1 hiện  nay, cho khả năng sạc lên tới 3000 lần so với 1500 lần của những mẫu acquy  thông thường', 'https://www.thegioixedien.com.vn/datafiles/setone/1702013510_creernile-avt.jpg', 'https://dibao.com.vn/filemanager/photos/1/dailyxedibao.png', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48'),
                                                                                                                                      ('brand4', 'VinFast', 'sở hữu kiểu dáng thanh lịch, khả năng  vận hành mạnh mẽ cho quãng đường di chuyển dài cùng những tính năng thông minh vượt trội', 'https://www.thegioixedien.com.vn/datafiles/setone/1701165848_vic-ebike-avt.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIQfGKRm-LGDUX1-fLfu_R0EUnZ1XnT5c-8YRRR-f24g&s', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48'),
                                                                                                                                      ('brand5', 'Honda', 'Được nhập khẩu nguyên chiếc, cùng  sở hữu nhiều công nghệ đẳng cấp mà không nhiều dòng xe máy điện có được', 'https://www.thegioixedien.com.vn/datafiles/setone/1687412931_q1_result.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Honda_Logo.svg/1276px-Honda_Logo.svg.png', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48'),
                                                                                                                                      ('brand6', 'WuYang', 'Dòng xe máy chạy bằng nguồn năng lượng điện có tác dụng rất lớn trong công cuộc bảo vệ một môi trường xanh sạch đẹp', 'https://www.thegioixedien.com.vn/datafiles/setone/1687413206_t2_result.jpg', 'https://i.pinimg.com/736x/b0/2e/d0/b02ed0a8805a946fbbb8a9524143ea78.jpg', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48'),
                                                                                                                                      ('brand7', 'Victoria', 'Xe sử dụng 5 acquy 20a được nhập khẩu chính hãng của hãng tianneng sản xuất acquy có độ bền số 1 hiện \nnay, cho khả năng sạc lên tới 3000 lần so với 1500 lần của những mẫu acquy  thông thường', 'https://www.thegioixedien.com.vn/datafiles/setone/1701076851_V89.png', 'https://i.pinimg.com/originals/c8/ba/92/c8ba92b41145af5268b717c67be7fb51.jpg', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48'),
                                                                                                                                      ('brand8', 'Asama', 'Đây là mẫu xe đạp điện đang rất hot dành cho học sinh nhất là các bạn cấp 2', 'https://www.thegioixedien.com.vn/datafiles/setone/1689329628_RB-SL2802-B-45.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToiTXEZIevfcaUw2OrIekKCfKr3g4bVPzGxZu5Bolt7A&s', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48'),
                                                                                                                                      ('brand9', 'Momentum', 'Khung xe chất liệu hợp kim nhôm: dù là trời mưa cũng không bỏ qua cảnh đẹp xung quanh, để khi trời mưa hay nắng cũng là tâm điểm.', 'https://www.thegioixedien.com.vn/datafiles/setone/1701853925_2023-ineed-latte-24-26-8-xanh-new-768x513.png', 'https://www.shutterstock.com/image-vector/momentum-logo-vector-260nw-1225907494.jpg', NULL, NULL, NULL, '2024-01-15 09:50:48', '2024-01-15 09:50:48');

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
    ('5116b615-d837-434d-973c-5469ba70fc0b', '634726e3-288c-412a-8d14-9a1b961fbd22', NULL, '2024-01-06 09:36:48', '2024-01-06 09:36:48');

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
                                                                                                                          ('97362e50-428a-43be-9e43-135e0e9db7e5', '5116b615-d837-434d-973c-5469ba70fc0b', 'product1', 'color1', 1, '2024-01-14 07:39:44', '2024-01-14 07:39:44'),
                                                                                                                          ('bbb162ae-ed56-421b-928b-6c898b1e86cb', '5116b615-d837-434d-973c-5469ba70fc0b', 'product2', 'color2', 1, '2024-01-06 10:38:02', '2024-01-06 10:38:02'),
                                                                                                                          ('d8d839bc-648d-4aa2-82f3-d57e04732ec4', '5116b615-d837-434d-973c-5469ba70fc0b', 'product3', 'color3', 1, '2024-01-06 10:07:25', '2024-01-06 10:07:25');

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
                                                                                                                                                   ('cate1', 'Xe điện', NULL, NULL, '2024-01-15 09:49:48', '2024-01-15 09:49:48', NULL, 1, 1, 'XED'),
                                                                                                                                                   ('cate2', 'Xe đạp', NULL, NULL, '2024-01-15 09:49:48', '2024-01-15 09:49:48', NULL, 1, 1, 'XDA'),
                                                                                                                                                   ('cate3', 'Xe máy điện', NULL, NULL, '2024-01-15 09:49:48', '2024-01-15 09:49:48', 'cate1', 1, 2, 'XMD'),
                                                                                                                                                   ('cate4', 'Xe đạp điện', NULL, NULL, '2024-01-15 09:49:48', '2024-01-15 09:49:48', 'cate1', 1, 2, 'XDD'),
                                                                                                                                                   ('cate5', 'Xe đạp Thể Thao', NULL, NULL, '2024-01-15 09:49:48', '2024-01-15 09:49:48', 'cate2', 1, 2, 'DTT'),
                                                                                                                                                   ('cate6', 'Xe đạp thời trang', NULL, NULL, '2024-01-15 09:49:48', '2024-01-15 09:49:48', 'cate2', 1, 2, 'XDTTR'),
                                                                                                                                                   ('cate7', 'Xe đạp trẻ em', NULL, NULL, '2024-01-15 09:49:48', '2024-01-15 09:49:48', 'cate2', 1, 2, 'XDTE');

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
                                                                                 ('color1', 'Red', '#FF0000', '2024-01-15 09:48:43', '2024-01-15 16:48:43'),
                                                                                 ('color2', 'Green', '#00FF00', '2024-01-15 09:48:43', '2024-01-15 16:48:43'),
                                                                                 ('color3', 'Blue', '#0000FF', '2024-01-15 09:48:43', '2024-01-15 16:48:43'),
                                                                                 ('color4', 'Yellow', '#FFFF00', '2024-01-15 09:48:43', '2024-01-15 16:48:43'),
                                                                                 ('color5', 'Purple', '#800080', '2024-01-15 09:48:43', '2024-01-15 16:48:43');

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
                                                                                                       ('imagePro1', 'https://www.thegioixedien.com.vn/datafiles/setone/1703243861_avt-chicv.png', 'product1', '2024-01-15 09:51:38', '2024-01-15 16:51:38'),
                                                                                                       ('imagePro10', 'https://www.thegioixedien.com.vn/datafiles/setone/1703333583_26.jpg', 'product10', '2024-01-23 09:51:38', '2024-01-23 16:51:38'),
                                                                                                       ('imagePro11', 'https://www.thegioixedien.com.vn/datafiles/setone/1701077000_1634146530_gogo-cross-avt.jpg', 'product11', '2024-01-24 09:51:38', '2024-01-24 16:51:38'),
                                                                                                       ('imagePro12', 'https://www.thegioixedien.com.vn/datafiles/setone/1701077392_GOGOS4AVT.png', 'product12', '2024-01-25 09:51:38', '2024-01-25 16:51:38'),
                                                                                                       ('imagePro13', 'https://www.thegioixedien.com.vn/datafiles/setone/1679905040_xman-neo-db.jpg', 'product13', '2024-01-26 09:51:38', '2024-01-26 16:51:38'),
                                                                                                       ('imagePro14', 'https://www.thegioixedien.com.vn/datafiles/setone/1701077817_XMENDIBAO.jpg', 'product14', '2024-01-27 09:51:38', '2024-01-27 16:51:38'),
                                                                                                       ('imagePro15', 'https://www.thegioixedien.com.vn/datafiles/setone/1585664689_dai-dien-jeek-plus-dibao-min.png', 'product15', '2024-01-28 09:51:38', '2024-01-28 16:51:38'),
                                                                                                       ('imagePro16', 'https://www.thegioixedien.com.vn/datafiles/setone/1701078244_R1AVT.png', 'product16', '2024-01-29 09:51:38', '2024-01-29 16:51:38'),
                                                                                                       ('imagePro17', 'https://www.thegioixedien.com.vn/datafiles/setone/1604501520_xmen-new-avt-tg-copy.jpg', 'product17', '2024-01-30 09:51:38', '2024-01-30 16:51:38'),
                                                                                                       ('imagePro18', 'https://www.thegioixedien.com.vn/datafiles/setone/1585664810_xe-dien-jeek-dibao.png', 'product18', '2024-01-31 09:51:38', '2024-01-31 16:51:38'),
                                                                                                       ('imagePro19', 'https://www.thegioixedien.com.vn/datafiles/setone/1701853925_2023-ineed-latte-24-26-8-xanh-new-768x513.png', 'product19', '2024-02-01 09:51:38', '2024-02-01 16:51:38'),
                                                                                                       ('imagePro2', 'https://www.thegioixedien.com.vn/datafiles/setone/1701004443_avt-tesla-chic-tron.jpg', 'product2', '2024-01-15 09:51:38', '2024-01-15 16:51:38'),
                                                                                                       ('imagePro20', 'https://www.thegioixedien.com.vn/datafiles/setone/1689329628_RB-SL2802-B-45.jpg', 'product20', '2024-02-02 09:51:38', '2024-02-02 16:51:38'),
                                                                                                       ('imagePro21', 'https://www.thegioixedien.com.vn/datafiles/setone/1689329352_RB-SL2802T-A-45.jpg', 'product21', '2024-02-03 09:51:38', '2024-02-03 16:51:38'),
                                                                                                       ('imagePro22', 'https://www.thegioixedien.com.vn/datafiles/setone/1700467711_1_result.jpg', 'product22', '2024-02-04 09:51:38', '2024-02-04 16:51:38'),
                                                                                                       ('imagePro23', 'https://www.thegioixedien.com.vn/datafiles/setone/1689323990_MTB-2604-A-45.jpg', 'product23', '2024-02-05 09:51:38', '2024-02-05 16:51:38'),
                                                                                                       ('imagePro24', 'https://www.thegioixedien.com.vn/datafiles/setone/1700468015_2_result.jpg', 'product24', '2024-02-06 09:51:38', '2024-02-06 16:51:38'),
                                                                                                       ('imagePro25', 'https://www.thegioixedien.com.vn/datafiles/setone/1700468034_3_result.jpg', 'product25', '2024-02-07 09:51:38', '2024-02-07 16:51:38'),
                                                                                                       ('imagePro26', 'https://www.thegioixedien.com.vn/datafiles/setone/1689322938_TRK-FL2401-A-45-1.jpg', 'product26', '2024-02-08 09:51:38', '2024-02-08 16:51:38'),
                                                                                                       ('imagePro27', 'https://www.thegioixedien.com.vn/datafiles/setone/1700468063_1689322617_Untitled-2_result.jpg', 'product27', '2024-02-09 09:51:38', '2024-02-09 16:51:38'),
                                                                                                       ('imagePro28', 'https://www.thegioixedien.com.vn/datafiles/setone/1689322169_TRK-2602-A-45-1.jpg', 'product28', '2024-02-10 09:51:38', '2024-02-10 16:51:38'),
                                                                                                       ('imagePro29', 'https://www.thegioixedien.com.vn/datafiles/setone/1689321820_CLD-BR2002-A-45-1.jpg', 'product29', '2024-02-11 09:51:38', '2024-02-11 16:51:38'),
                                                                                                       ('imagePro3', 'https://www.thegioixedien.com.vn/datafiles/setone/1676721721_daidiens4.jpg', 'product3', '2024-01-16 09:51:38', '2024-01-16 16:51:38'),
                                                                                                       ('imagePro30', 'https://www.thegioixedien.com.vn/datafiles/setone/1689321487_CLD-BR2402-B45.jpg', 'product30', '2024-02-12 09:51:38', '2024-02-12 16:51:38'),
                                                                                                       ('imagePro31', 'https://www.thegioixedien.com.vn/datafiles/setone/1700468249_4.jpeg', 'product31', '2024-02-13 09:51:38', '2024-02-13 16:51:38'),
                                                                                                       ('imagePro32', 'https://www.thegioixedien.com.vn/datafiles/setone/1700468346_1689244421_xd1.jpeg', 'product32', '2024-02-14 09:51:38', '2024-02-14 16:51:38'),
                                                                                                       ('imagePro33', 'https://www.thegioixedien.com.vn/datafiles/setone/1689221034_CLD-SW2702-B-45.jpg', 'product33', '2024-02-15 09:51:38', '2024-02-15 16:51:38'),
                                                                                                       ('imagePro34', 'https://www.thegioixedien.com.vn/datafiles/setone/1689219888_CLD-PU20-A45.jpg', 'product34', '2024-02-16 09:51:38', '2024-02-16 16:51:38'),
                                                                                                       ('imagePro35', 'https://www.thegioixedien.com.vn/datafiles/setone/1689219505_CLD-PU24-C45.jpg', 'product35', '2024-02-17 09:51:38', '2024-02-17 16:51:38'),
                                                                                                       ('imagePro36', 'https://www.thegioixedien.com.vn/datafiles/setone/1689216882_CLD-PU27-A45.jpg', 'product36', '2024-02-18 09:51:38', '2024-02-18 16:51:38'),
                                                                                                       ('imagePro37', 'https://www.thegioixedien.com.vn/datafiles/setone/1689322169_TRK-2602-A-45-1.jpg', 'product37', '2024-02-19 09:51:38', '2024-02-19 16:51:38'),
                                                                                                       ('imagePro38', 'https://www.thegioixedien.com.vn/datafiles/setone/1689321820_CLD-BR2002-A-45-1.jpg', 'product38', '2024-02-20 09:51:38', '2024-02-20 16:51:38'),
                                                                                                       ('imagePro39', 'https://www.thegioixedien.com.vn/datafiles/setone/1689221034_CLD-SW2702-B-45.jpg', 'product39', '2024-02-21 09:51:38', '2024-02-21 16:51:38'),
                                                                                                       ('imagePro4', 'https://www.thegioixedien.com.vn/datafiles/setone/1676642668_daidien-s3.jpg', 'product4', '2024-01-17 09:51:38', '2024-01-17 16:51:38'),
                                                                                                       ('imagePro40', 'https://www.thegioixedien.com.vn/datafiles/setone/1689219888_CLD-PU20-A45.jpg', 'product40', '2024-02-22 09:51:38', '2024-02-22 16:51:38'),
                                                                                                       ('imagePro41', 'https://www.thegioixedien.com.vn/datafiles/setone/1689219505_CLD-PU24-C45.jpg', 'product41', '2024-02-23 09:51:38', '2024-02-23 16:51:38'),
                                                                                                       ('imagePro42', 'https://www.thegioixedien.com.vn/datafiles/setone/1689216882_CLD-PU27-A45.jpg', 'product42', '2024-02-24 09:51:38', '2024-02-24 16:51:38'),
                                                                                                       ('imagePro43', 'https://www.thegioixedien.com.vn/datafiles/setone/1689216882_CLD-PU27-A45.jpg', 'product43', '2024-02-25 09:51:38', '2024-02-25 16:51:38'),
                                                                                                       ('imagePro44', 'https://www.thegioixedien.com.vn/datafiles/setone/1689219505_CLD-PU24-C45.jpg', 'product44', '2024-02-26 09:51:38', '2024-02-26 16:51:38'),
                                                                                                       ('imagePro45', 'https://www.thegioixedien.com.vn/datafiles/setone/1689219888_CLD-PU20-A45.jpg', 'product45', '2024-02-27 09:51:38', '2024-02-27 16:51:38'),
                                                                                                       ('imagePro46', 'https://www.thegioixedien.com.vn/datafiles/setone/1689221034_CLD-SW2702-B-45.jpg', 'product46', '2024-02-28 09:51:38', '2024-02-28 16:51:38'),
                                                                                                       ('imagePro47', 'https://www.thegioixedien.com.vn/datafiles/setone/1700468346_1689244421_xd1.jpeg', 'product47', '2024-02-29 09:51:38', '2024-02-29 16:51:38'),
                                                                                                       ('imagePro48', 'https://www.thegioixedien.com.vn/datafiles/setone/1700468249_4.jpeg', 'product48', '2024-03-01 09:51:38', '2024-03-01 16:51:38'),
                                                                                                       ('imagePro49', 'https://www.thegioixedien.com.vn/datafiles/setone/1701004391_avt-tesla-chic-vuong2.jpg', 'product49', '2024-03-02 09:51:38', '2024-03-02 16:51:38'),
                                                                                                       ('imagePro5', 'https://www.thegioixedien.com.vn/datafiles/setone/1701004682_Tesla-SD-015.png', 'product5', '2024-01-18 09:51:38', '2024-01-18 16:51:38'),
                                                                                                       ('imagePro50', 'https://www.thegioixedien.com.vn/datafiles/setone/1701004443_avt-tesla-chic-tron.jpg', 'product50', '2024-03-03 09:51:38', '2024-03-03 16:51:38'),
                                                                                                       ('imagePro51', 'https://www.thegioixedien.com.vn/datafiles/setone/1676721721_daidiens4.jpg', 'product51', '2024-03-04 09:51:38', '2024-03-04 16:51:38'),
                                                                                                       ('imagePro52', 'https://www.thegioixedien.com.vn/datafiles/setone/1676642668_daidien-s3.jpg', 'product52', '2024-03-05 09:51:38', '2024-03-05 16:51:38'),
                                                                                                       ('imagePro53', 'https://www.thegioixedien.com.vn/datafiles/setone/1701004682_Tesla-SD-015.png', 'product53', '2024-03-06 09:51:38', '2024-03-06 16:51:38'),
                                                                                                       ('imagePro54', 'https://www.thegioixedien.com.vn/datafiles/setone/1612792287_xe-may-dien-pansy-sq-tg.jpg', 'product54', '2024-03-07 09:51:38', '2024-03-07 16:51:38'),
                                                                                                       ('imagePro55', 'https://www.thegioixedien.com.vn/datafiles/setone/1702013510_creernile-avt.jpg', 'product55', '2024-03-08 09:51:38', '2024-03-08 16:51:38'),
                                                                                                       ('imagePro56', 'https://www.thegioixedien.com.vn/datafiles/setone/1702013510_creernile-avt.jpg', 'product56', '2024-03-09 09:51:38', '2024-03-09 16:51:38'),
                                                                                                       ('imagePro57', 'https://www.thegioixedien.com.vn/datafiles/setone/1702013510_creernile-avt.jpg', 'product57', '2024-03-10 09:51:38', '2024-03-10 16:51:38'),
                                                                                                       ('imagePro58', 'https://www.thegioixedien.com.vn/datafiles/setone/1612792287_xe-may-dien-pansy-sq-tg.jpg', 'product58', '2024-03-11 09:51:38', '2024-03-11 16:51:38'),
                                                                                                       ('imagePro59', 'https://www.thegioixedien.com.vn/datafiles/setone/1702013510_creernile-avt.jpg', 'product59', '2024-03-12 09:51:38', '2024-03-12 16:51:38'),
                                                                                                       ('imagePro6', 'https://www.thegioixedien.com.vn/datafiles/setone/1653650515_xe-dien-vespas-dibao-pansy-avt.png', 'product6', '2024-01-19 09:51:38', '2024-01-19 16:51:38'),
                                                                                                       ('imagePro60', 'https://www.thegioixedien.com.vn/datafiles/setone/1701004919_creereavt.jpg', 'product60', '2024-03-13 09:51:38', '2024-03-13 16:51:38'),
                                                                                                       ('imagePro61', 'https://www.thegioixedien.com.vn/datafiles/setone/1701005143_S5-AVT.jpg', 'product61', '2024-03-14 09:51:38', '2024-03-14 16:51:38'),
                                                                                                       ('imagePro62', 'https://www.thegioixedien.com.vn/datafiles/setone/1701077000_1634146530_gogo-cross-avt.jpg', 'product62', '2024-03-15 09:51:38', '2024-03-15 16:51:38'),
                                                                                                       ('imagePro63', 'https://www.thegioixedien.com.vn/datafiles/setone/1701077392_GOGOS4AVT.png', 'product63', '2024-03-16 09:51:38', '2024-03-16 16:51:38'),
                                                                                                       ('imagePro64', 'https://www.thegioixedien.com.vn/datafiles/setone/1701005143_S5-AVT.jpg', 'product64', '2024-03-17 09:51:38', '2024-03-17 16:51:38'),
                                                                                                       ('imagePro65', 'https://www.thegioixedien.com.vn/datafiles/setone/1701077000_1634146530_gogo-cross-avt.jpg', 'product65', '2024-03-18 09:51:38', '2024-03-18 16:51:38'),
                                                                                                       ('imagePro66', 'https://www.thegioixedien.com.vn/datafiles/setone/1701077392_GOGOS4AVT.png', 'product66', '2024-03-19 09:51:38', '2024-03-19 16:51:38'),
                                                                                                       ('imagePro67', 'https://www.thegioixedien.com.vn/datafiles/setone/1701077817_XMENDIBAO.jpg', 'product67', '2024-03-20 09:51:38', '2024-03-20 16:51:38'),
                                                                                                       ('imagePro68', 'https://www.thegioixedien.com.vn/datafiles/setone/1585664689_dai-dien-jeek-plus-dibao-min.png', 'product68', '2024-03-21 09:51:38', '2024-03-21 16:51:38'),
                                                                                                       ('imagePro69', 'https://www.thegioixedien.com.vn/datafiles/setone/1701078244_R1AVT.png', 'product69', '2024-03-22 09:51:38', '2024-03-22 16:51:38'),
                                                                                                       ('imagePro7', 'https://www.thegioixedien.com.vn/datafiles/setone/1612792287_xe-may-dien-pansy-sq-tg.jpg', 'product7', '2024-01-20 09:51:38', '2024-01-20 16:51:38'),
                                                                                                       ('imagePro70', 'https://www.thegioixedien.com.vn/datafiles/setone/1604501520_xmen-new-avt-tg-copy.jpg', 'product70', '2024-03-23 09:51:38', '2024-03-23 16:51:38'),
                                                                                                       ('imagePro8', 'https://www.thegioixedien.com.vn/datafiles/setone/1702013510_creernile-avt.jpg', 'product8', '2024-01-21 09:51:38', '2024-01-21 16:51:38'),
                                                                                                       ('imagePro9', 'https://www.thegioixedien.com.vn/datafiles/setone/1703333028_26.jpg', 'product9', '2024-01-22 09:51:38', '2024-01-22 16:51:38');

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_sig`
--

CREATE TABLE `order_sig` (
                             `order_id` varchar(12) NOT NULL,
                             `sig` text DEFAULT NULL,
                             `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
                                                                                                                                                                                                    ('product1', 'Xe Máy Điện Dibao Pansy SQ2 Bản Đặc Biệt Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Hiện nay các mẫu xe của hãng Dibao đang nhận được nhiều sự quan tâm hơn cả từ các bạn trẻ bởi kiểu dáng thời trang và mức giá cực yêu. Mới đây hãng cũng tung ra thị trường một mẫu xe mới chiều lòng', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-15 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product10', 'Xe Máy Điện Dibao Creer E Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Bạn dành cả thời gian dài để tìm chiếc xe ưng ý nhưng vẫn chưa được bởi giá thành của những chiếc Crea cao cấp có giá tiền khá lớn so với thu nhập của bạn. Bạn thấy dòng xe này hợp với mình và mong', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-24 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product11', 'Xe Máy Điện Dibao Gogo S5 Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Xe máy điện Dibao GOGO S5 là phiên bản động cơ có công suất lên tới 1500W - nguyên bản của mẫu xe đã và đang làm mưa làm gió trên thị trường xe điện. Xe điện Dibao GOGO S5 được trang bị mẫu đèn Ful', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-25 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product12', 'Xe Máy Điện Dibao Gogo Cross Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Xe máy điện Dibao Gogo Cross là sản phẩm đời mới có thiết kế đỉnh cao thuộc phân khúc xe điện Gogo. Tính tới thời điểm hiện tại thì đây chiếc xe điện Dibao Gogo Cross đang sở hữu nhiều công nghệ ti', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-26 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product13', 'Xe Máy Điện Dibao Gogo S4 Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Xe điện Gogo Dibao đã được nâng cấp khá là nhiều kể từ năm 2015 cho đến hiện nay năm 2023. Và phiên bản xe điện Dibao Gogo S4 2023 chính là phiên bản mới nhất, tối tân nhất cùng với đó là tích hợp ', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-27 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product14', 'Xe Máy Điện Dibao Xman Neo Phanh Đĩa Trước', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Hầu hết các dòng xe máy điện cá tính, gai góc mà Dibao “cho ra lò” đều rất được lòng các bạn trẻ năng động. Và, thời điểm hiện tại thì có một dòng xe máy điện “hầm hố” cũng được yêu thích không kém', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-28 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product15', 'Xe Máy Điện Xmen Neo Dibao Phanh Đĩa Trước', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Trong năm 2023 hãng Dibao lại tiếp tục tung ra một siêu phẩm dành cho học sinh đó là chiếc xe máy điện Xmen Neo Dibao. Đây có thể nói là dòng xe máy điện Xmen nổi bật chất nhất từ trước đến giờ mà ', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-29 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product16', 'Xe Máy Điện Dibao Jeek One - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Vì sao mà chiếc xe điện Dibao Jeek One này được xem là mẫu xe máy điện cao cấp nhất, hiện đại nhất cùng với nhiều option khủng nhất so với bất kỳ mẫu xe điện nào khác.Thì hãy cùng Thế Giới Xe Điện ', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-30 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product17', 'Xe Máy Điện Dibao R1 - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Xe điện Dibao luôn có sức hút lớn trên thị trường và luôn có doanh số bán nằm trong TOP đầu ở Việt Nam. Và tròng năm 2022 hãng Dibao có tung ra một siêu phẩm phải nói là dòng xe điện Flagship của n', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-31 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product18', 'Xe Máy Điện Xmen New Dibao', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Xmen New Dibao phiên bản cải tiến và có nhiều nâng cấp trong năm 2021. Hứa hẹn sẽ trở thành dòng xe điện thể tháo, phong cách cá tính bán chạy trong năm này. Hãy cùng tìm hiểu một số nét nổi bật củ', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-02-01 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product19', 'Xe Máy Điện Jeek Man Dibao - Phanh Đĩa Trước', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-02-02 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product2', 'Xe Máy Điện Dibao Tesla Chic 2024 Đèn Vuông', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm DIBAO TESLA TRIC 2024 PHIÊN BẢN MỚI CÓ CHẤT LƯỢNG VÀ ĐỘ HOÀN MỸ SỐ 1 HIỆN NAY. KHÔNG SỬ DỤNG 1 VẬT LIỆU NÀO CÓ THỂ GÂY CHẢY NỔ, BẢO HIỂM 10 TỶ ĐỒNG NẾU XE GẶP SỰ CỐ VỀ VẤN ĐỀ CHÁY NỔ. VÀ LÀ HÃNG DU', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-16 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product20', 'Xe Đạp Momentum 2024 Ineed Latte 24', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup1', 1, '2024-02-03 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product21', 'Xe Đạp Asama Solano Expert', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup1', 1, '2024-02-04 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product22', 'Xe Đạp Asama Solano Expert T', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup1', 1, '2024-02-05 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product23', 'Xe Đạp Asama Solano 2.0', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup1', 1, '2024-02-06 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product24', 'Xe Đạp Asama Mountaineer', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup1', 1, '2024-02-07 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product25', 'Xe Đạp Asama MTB 2605 Ranger 1.0', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-08 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product26', 'Xe Đạp Asama SUS Battle 2701', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-09 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product27', 'Xe Đạp Asama Flow 6 24\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-10 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product28', 'Xe Đạp Asama Flow 6 26\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-11 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product29', 'Xe Đạp Asama Flow 21 26\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-12 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product3', 'Xe Máy Điện Dibao Tesla Chic 2024 Đèn Tròn', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm DIBAO TESLA TRIC 2024 PHIÊN BẢN MỚI CÓ CHẤT LƯỢNG VÀ ĐỘ HOÀN MỸ SỐ 1 HIỆN NAY. KHÔNG SỬ DỤNG 1 VẬT LIỆU NÀO CÓ THỂ GÂY CHẢY NỔ, BẢO HIỂM 10 TỶ ĐỒNG NẾU XE GẶP SỰ CỐ VỀ VẤN ĐỀ CHÁY NỔ. VÀ LÀ HÃNG DU', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-17 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product30', 'Xe Đạp Asama Breeze 20\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-13 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product31', 'Xe Đạp Asama Breeze 24\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-14 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product32', 'Xe đạp thể thao ASAMA MTB TH2702 26 inch', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-15 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product33', 'Xe đạp TEKKO C250 24 inch', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-16 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product34', 'Xe Đạp Asama Swift', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-17 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product35', 'Xe Đạp Asama Adventure 2.0', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-18 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product36', 'Xe Đạp Essence 24\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-19 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product37', 'Xe Đạp Essence 27\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate5', 'brand8', NULL, 'sup2', 1, '2024-02-20 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product38', 'Xe  Điện Dibao Tesla Chic 2024 Đèn Vuông', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand2', NULL, 'sup2', 1, '2024-02-21 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product39', 'Xe  Điện Dibao Tesla Chic 2024 Đèn Vuông', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand2', NULL, 'sup2', 1, '2024-02-22 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product4', 'Xe Máy Điện Dibao Pansy Neo S4 Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Pansy S3 và Pansy S4 là hai chiếc xe máy điện mới nhất 2023 vừa được Dibao công bố trong năm nay. Trong đó, điểm sáng phải nhắc đến phiên bản xe Pansy S4 với nhiều sự thay đổi đáng kể, tiêu biểu là', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-18 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product40', 'Xe  Điện Dibao Tesla Chic 2024 Đèn ', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup2', 1, '2024-02-23 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product41', 'Xe  Điện Dibao Pansy Neo S4 Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-02-24 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product42', 'Xe Điện Dibao Pansy Neo S3 Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-02-25 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product43', 'Xe  Điện Dibao Tesla SD Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-02-26 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product44', 'Xe  Điện Vespa Pansy S2 Dibao Càng Nhôm Đúc - Phanh Đĩa Trước', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-02-27 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product45', 'Xe  Điện Dibao Pansy SQ2 Bản Đặc Biệt Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-02-28 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product46', 'Xe  Điện Dibao Creer Nile Càng Nhôm Đúc 2024', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-02-29 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product47', 'Xe  Điện Dibao Creer E Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-01 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product48', 'Xe  Điện Dibao Gogo S5 Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-02 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product49', 'Xe  Điện Dibao Gogo Cross Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-03 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product5', 'Xe Máy Điện Dibao Pansy Neo S3 Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Xe điện Vespa Pansy là niềm tự hào của Dibao, dòng xe này liên tục khuynh đảo thị trường xe điện khi không ngừng đạt các thành tích khủng về doanh thu. Nối tiếp sự thành công của Pansy S2, Dibao ti', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-19 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product50', 'Xe  Điện Dibao Gogo S4 Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-04 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product51', 'Xe  Điện Dibao Xman Neo Phanh Đĩa Trước', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-05 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product52', 'Xe Điện Xmen Neo Dibao Phanh Đĩa Trước', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-06 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product53', 'Xe Điện Dibao Jeek One - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-07 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product54', 'Xe Điện Dibao R1 - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-08 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product55', 'Xe Điện Xmen New Dibao', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-09 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product56', 'Xe Điện Jeek Man Dibao - Phanh Đĩa Trước', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate1', 'brand1', NULL, 'sup3', 1, '2024-03-10 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product57', 'Xe Đạp Asama Breeze 24\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate6', 'brand9', NULL, 'sup3', 1, '2024-03-11 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product58', 'Xe đạp thể thao ASAMA MTB TH2702 26 inch', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate6', 'brand9', NULL, 'sup3', 1, '2024-03-12 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product59', 'Xe đạp TEKKO C250 24 inch', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate6', 'brand9', NULL, 'sup3', 1, '2024-03-13 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product6', 'Xe Máy Điện Dibao Tesla SD Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Xe máy điện Dibao Tesla SD với kiểu dáng sành điệu và sang chảnh đang được nhiều bạn trẻ yêu thích. Thuộc phân khúc xe máy điện cao cấp của Dibao, mẫu xe này sở hữu nhiều ưu điểm về thiết kế, độ an', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-20 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product60', 'Xe Đạp Asama Swift', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate6', 'brand9', NULL, 'sup3', 1, '2024-03-14 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product61', 'Xe Đạp Asama Adventure 2.0', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate6', 'brand9', NULL, 'sup3', 1, '2024-03-15 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product62', 'Xe Đạp Essence 24\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate6', 'brand9', NULL, 'sup3', 1, '2024-03-16 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product63', 'Xe Đạp Essence 27\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '26 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate6', 'brand9', NULL, 'sup3', 1, '2024-03-17 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product64', 'Xe Đạp Momentum 2024 Ineed Latte 24', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '27 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand8', NULL, 'sup3', 1, '2024-03-18 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product65', 'Xe Đạp Asama Solano Expert', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '28 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand8', NULL, 'sup3', 1, '2024-03-19 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product66', 'Xe Đạp Asama Solano Expert T', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '29 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand8', NULL, 'sup3', 1, '2024-03-20 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product67', 'Xe Đạp Asama SUS Battle 2701', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '30 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand8', NULL, 'sup3', 1, '2024-03-21 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product68', 'Xe Đạp Asama Flow 6 24\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '31 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand8', NULL, 'sup3', 1, '2024-03-22 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product69', 'Xe Đạp Asama Breeze 20\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '32 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand8', NULL, 'sup3', 1, '2024-03-23 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product7', 'Xe Máy Điện Vespa Pansy S2 Dibao Càng Nhôm Đúc - Phanh Đĩa Trước', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Nếu bạn là tín đồ của những chiếc Vespa siêu xịn đang làm mưa làm gió trên thị trường thì Dibao Pansy S2 hẳn là lựa chọn ngon, rẻ không nên bỏ qua. Đây là dòng xe nổi bật trong phân khúc xe điện vì', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-21 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product70', 'Xe Đạp Asama Breeze 24\'\'', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Là mẫu xe máy điện chính hãng đến từ thương hiệu Dibao được trang bị những tính năng hiện đại và hoàn hảo nhất hiện nay. Với thiết kế hầm hố đậm chất thể thao, cá tính mạnh mẽ, xe máy điện Jeek Man', '33 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand8', NULL, 'sup3', 1, '2024-03-24 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product8', 'Xe Máy Điện Dibao Pansy SQ2 Bản Đặc Biệt Càng Nhôm Đúc - 2 Phanh Đĩa', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Hiện nay các mẫu xe của hãng Dibao đang nhận được nhiều sự quan tâm hơn cả từ các bạn trẻ bởi kiểu dáng thời trang và mức giá cực yêu. Mới đây hãng cũng tung ra thị trường một mẫu xe mới chiều lòng', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-22 09:51:38', '2024-01-15 09:51:38'),
                                                                                                                                                                                                    ('product9', 'Xe Máy Điện Dibao Creer Nile Càng Nhôm Đúc 2024', 'Ưu đãi cực khủng giảm ngay 1.500.000 VNĐ xả hàng cuối năm Người anh em cùng họ với xe máy điện DIBAO CREER E ngoài những đường nét tinh tế giống người anh em Creer E, xe máy điện Dibao Creer Nile được nâng cấp hệ thống đèn chiếu sáng Full Led cho khả năng', '18 inch', 'Hợp Chất Kim Loại', 'Bảo Hành 12 tháng', 'cate3', 'brand3', NULL, 'sup1', 1, '2024-01-23 09:51:38', '2024-01-15 09:51:38');

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
                                                                                                                                     ('product1', 'color1', 20, 18500000, 'imagePro1', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product10', 'color5', 20, 18500000, 'imagePro10', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product11', 'color1', 34, 18500000, 'imagePro11', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product12', 'color2', 23, 18500000, 'imagePro12', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product13', 'color3', 13, 18500000, 'imagePro13', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product14', 'color4', 4, 18500000, 'imagePro14', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product15', 'color5', 55, 18500000, 'imagePro15', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product16', 'color1', 35, 18500000, 'imagePro16', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product17', 'color2', 24, 18500000, 'imagePro17', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product18', 'color3', 24, 18500000, 'imagePro18', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product19', 'color3', 20, 18500000, 'imagePro19', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product2', 'color2', 34, 18500000, 'imagePro2', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product20', 'color4', 34, 18500000, 'imagePro20', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product21', 'color5', 23, 18500000, 'imagePro21', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product22', 'color1', 13, 18500000, 'imagePro22', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product23', 'color2', 4, 18500000, 'imagePro23', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product24', 'color3', 55, 18500000, 'imagePro24', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product25', 'color3', 35, 18500000, 'imagePro25', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product26', 'color4', 24, 18500000, 'imagePro26', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product27', 'color5', 24, 18500000, 'imagePro27', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product28', 'color1', 20, 18500000, 'imagePro28', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product29', 'color2', 34, 18500000, 'imagePro29', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product3', 'color3', 23, 18500000, 'imagePro3', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product30', 'color3', 23, 18500000, 'imagePro30', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product31', 'color3', 13, 18500000, 'imagePro31', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product32', 'color4', 4, 18500000, 'imagePro32', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product33', 'color5', 55, 18500000, 'imagePro33', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product34', 'color1', 35, 18500000, 'imagePro34', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product35', 'color2', 24, 18500000, 'imagePro35', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product36', 'color3', 24, 18500000, 'imagePro36', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product37', 'color3', 20, 18500000, 'imagePro37', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product38', 'color4', 34, 18500000, 'imagePro38', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product39', 'color5', 23, 18500000, 'imagePro39', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product4', 'color4', 13, 18500000, 'imagePro4', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product40', 'color1', 13, 18500000, 'imagePro40', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product41', 'color2', 4, 18500000, 'imagePro41', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product42', 'color3', 55, 18500000, 'imagePro42', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product43', 'color3', 35, 18500000, 'imagePro43', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product44', 'color4', 24, 18500000, 'imagePro44', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product45', 'color5', 24, 18500000, 'imagePro45', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product46', 'color1', 20, 18500000, 'imagePro46', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product47', 'color2', 34, 18500000, 'imagePro47', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product48', 'color3', 23, 18500000, 'imagePro48', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product49', 'color3', 13, 18500000, 'imagePro49', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product5', 'color5', 4, 18500000, 'imagePro5', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product50', 'color4', 4, 18500000, 'imagePro50', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product51', 'color5', 55, 18500000, 'imagePro51', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product52', 'color1', 35, 18500000, 'imagePro52', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product53', 'color2', 24, 18500000, 'imagePro53', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product54', 'color3', 24, 18500000, 'imagePro54', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product55', 'color3', 20, 18500000, 'imagePro55', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product56', 'color4', 34, 18500000, 'imagePro56', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product57', 'color5', 23, 18500000, 'imagePro57', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product58', 'color1', 13, 18500000, 'imagePro58', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product59', 'color2', 4, 18500000, 'imagePro59', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product6', 'color1', 55, 18500000, 'imagePro6', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product60', 'color3', 55, 18500000, 'imagePro60', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product61', 'color3', 35, 18500000, 'imagePro61', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product62', 'color4', 20, 18500000, 'imagePro62', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product63', 'color5', 34, 18500000, 'imagePro63', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product64', 'color1', 23, 18500000, 'imagePro64', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product65', 'color2', 13, 18500000, 'imagePro65', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product66', 'color3', 4, 18500000, 'imagePro66', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product67', 'color3', 55, 18500000, 'imagePro67', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product68', 'color4', 35, 18500000, 'imagePro68', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product69', 'color5', 24, 18500000, 'imagePro69', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product7', 'color2', 35, 18500000, 'imagePro7', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product70', 'color1', 24, 18500000, 'imagePro70', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product8', 'color3', 24, 18500000, 'imagePro8', '2024-01-15 10:36:18', '2024-01-15 10:36:18'),
                                                                                                                                     ('product9', 'color4', 24, 18500000, 'imagePro9', '2024-01-15 10:36:18', '2024-01-15 10:36:18');

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
                                                                               ('sup1', 'Việt Nam', '2024-01-15 09:51:38', '2024-01-15 09:51:38'),
                                                                               ('sup2', 'Nhật Bản', '2024-01-15 09:51:38', '2024-01-15 09:51:38'),
                                                                               ('sup3', 'Đài Loan', '2024-01-15 09:51:38', '2024-01-15 09:51:38'),
                                                                               ('sup4', 'Trung Quốc', '2024-01-15 09:51:38', '2024-01-15 09:51:38'),
                                                                               ('sup5', 'Hàn Quốc', '2024-01-15 09:51:38', '2024-01-15 09:51:38');

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
                                                                                                             ('94face32-ca88-4729-b3de-b34a0e390e48', 'admin@gmail.com', '8a316e582ae2898b941eb2f82d3ef209', 'f72633c729b73b342cfb5da6910fa7800599d0a52ab211e11bc575f328fc5cff', 'hai', '2023-11-21 23:52:14', '2024-01-04 05:20:36', 2);

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


