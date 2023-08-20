create table address
(
    address_id   varchar(64)                           not null
        primary key,
    home_address varchar(255)                          null,
    district     varchar(100)                          null,
    city         varchar(100)                          null,
    created_at   timestamp default current_timestamp() null,
    updated_at   timestamp default current_timestamp() null on update current_timestamp()
);

create table brand
(
    brand_id    varchar(64)                           not null
        primary key,
    name        varchar(255)                          not null,
    description varchar(255)                          null,
    image       varchar(255)                          null,
    logo        varchar(255)                          null,
    address     varchar(255)                          null,
    email       varchar(255)                          null,
    phone       varchar(10)                           null,
    created_at  timestamp default current_timestamp() not null,
    updated_at  timestamp default current_timestamp() not null on update current_timestamp()
);

create table category
(
    category_id varchar(64)                           not null
        primary key,
    name        varchar(255)                          not null,
    description varchar(255)                          null,
    image       varchar(255)                          null,
    created_at  timestamp default current_timestamp() not null,
    updated_at  timestamp default current_timestamp() not null,
    parent_id   varchar(5)                            null,
    active      int                                   not null,
    level       int                                   null,
    short_id    varchar(5)                            null
);

create table color
(
    color_id   varchar(64)                           not null
        primary key,
    name       varchar(255)                          null,
    code       varchar(255)                          null,
    created_at timestamp default current_timestamp() not null,
    updated_at datetime  default current_timestamp() null on update current_timestamp()
);

create table discount
(
    discount_id varchar(64)                           not null
        primary key,
    name        varchar(255)                          not null,
    description varchar(255)                          null,
    discount_percent    double                                not null,
    active      int                                   not null,
    start_date  date                                  not null,
    end_date    date                                  not null,
    created_at  timestamp default current_timestamp() not null,
    updated_at  timestamp default current_timestamp() not null on update current_timestamp()
);

create table image_slider
(
    id         varchar(64)                           not null
        primary key,
    link       varchar(255)                          null,
    created_at timestamp default current_timestamp() null,
    updated_at datetime  default current_timestamp() null on update current_timestamp()
);

create table supplier
(
    supplier_id varchar(64)                           not null
        primary key,
    name        varchar(255)                          null,
    created_at  timestamp default current_timestamp() not null,
    updated_at  timestamp default current_timestamp() not null on update current_timestamp()
);

create table product
(
    product_id  varchar(11)                           not null
        primary key,
    name        varchar(255)                          not null,
    price       double                                not null,
    description varchar(255)                          null,
    wheelSize   varchar(10)                           null,
    inventory   int                                   not null,
    material    varchar(255)                          null,
    warranty    varchar(50)                           null,
    category_id varchar(64)                           null,
    brand_id    varchar(64)                           null,
    discount_id varchar(64)                           null,
    supplier_id varchar(64)                           null,
    status      int       default 1                   null,
    created_at  timestamp default current_timestamp() null,
    updated_at  timestamp default current_timestamp() null on update current_timestamp(),
    constraint product_brand_brand_id_fk
        foreign key (brand_id) references brand (brand_id),
    constraint product_category__category_id_fk
        foreign key (category_id) references category (category_id),
    constraint product_discount__discount_id_fk
        foreign key (discount_id) references discount (discount_id),
    constraint product_supplier_supplier_id_fk
        foreign key (supplier_id) references supplier (supplier_id)
);

create table color_product
(
    product_id varchar(64) not null,
    color_id   varchar(64) not null,
    primary key (product_id, color_id),
    constraint color_product_color_color_id_fk
        foreign key (color_id) references color (color_id),
    constraint color_product_product_product_id_fk
        foreign key (product_id) references product (product_id)
);

create table image_product
(
    image_product_id varchar(64)                           not null
        primary key,
    link             varchar(255)                          null,
    product_id       varchar(64)                           null,
    created_at       timestamp default current_timestamp() not null,
    updated_at       datetime  default current_timestamp() null on update current_timestamp(),
    constraint image_product_product_product_id_fk
        foreign key (product_id) references product (product_id)
);

create table user
(
    user_id    varchar(64)                           not null
        primary key,
    email      varchar(30)                           not null comment 'email cua nguoi dung ',
    salt       varchar(64)                           not null comment 'bao mat password bang sha2((salt+pass),256)',
    pass       varchar(255)                          not null,
    user_name  varchar(100)                          not null comment 'ten tai khoan ',
    created_at timestamp default current_timestamp() not null comment 'ngay tao',
    updated_at timestamp default current_timestamp() not null on update current_timestamp() comment 'ngay sua doi',
    role       int       default 1                   not null comment '1-user, 2-admin'
)
    comment 'user_info';

create table cart
(
    cart_id    varchar(64)                           not null
        primary key,
    user_id    varchar(64)                           null,
    ss_id      varchar(64)                           null,
    created_at timestamp default current_timestamp() null,
    updated_at timestamp default current_timestamp() null on update current_timestamp(),
    constraint cart_pk
        unique (user_id),
    constraint cart_user_user_id_fk
        foreign key (user_id) references user (user_id)
);

create table cart_item
(
    cart_item_id int auto_increment
        primary key,
    cart_id      varchar(64)                           null,
    product_id   varchar(64)                           null,
    quantity     int                                   null comment 'phai  lon  hon 0',
    created_at   timestamp default current_timestamp() null,
    updated_at   timestamp default current_timestamp() null on update current_timestamp(),
    constraint cartitems_cart_cart_id_fk
        foreign key (cart_id) references cart (cart_id),
    constraint cartitems_product_product_id_fk
        foreign key (product_id) references product (product_id),
    constraint check_quantity
        check (`quantity` > 0)
);

create table comment
(
    comment_id varchar(64)                           not null
        primary key,
    user_id    varchar(64)                           null,
    product_id varchar(11)                           null,
    content    text                                  null,
    created_at timestamp default current_timestamp() null,
    updated_at timestamp default current_timestamp() null on update current_timestamp(),
    constraint comment_ibfk_1
        foreign key (user_id) references user (user_id),
    constraint comment_ibfk_2
        foreign key (product_id) references product (product_id)
);

create index product_id
    on comment (product_id);

create index user_id
    on comment (user_id);

create table favorite
(
    favorite_id varchar(64)                           not null
        primary key,
    user_id     varchar(64)                           null,
    product_id  varchar(11)                           null,
    created_at  timestamp default current_timestamp() null,
    updated_at  timestamp default current_timestamp() null on update current_timestamp(),
    constraint favorite_ibfk_1
        foreign key (user_id) references user (user_id),
    constraint favorite_ibfk_2
        foreign key (product_id) references product (product_id)
);

create index product_id
    on favorite (product_id);

create index user_id
    on favorite (user_id);

create table `order`
(
    order_id     varchar(12)                           not null
        primary key,
    user_id      varchar(64)                           null,
    address_id   varchar(64)                           not null,
    price        double                                null,
    discount     int                                   null,
    shipping_fee double                                null,
    total        double                                null,
    send_day     timestamp                             null,
    receive_day  timestamp                             null,
    status       int                                   null comment '1-pending, 2-Confirmed, 3-Processing, 4-Shipped,5-Delivered,6-Cancelled,7-Returned,8-Refunded',
    created_at   timestamp default current_timestamp() null,
    updated_at   timestamp default current_timestamp() null on update current_timestamp(),
    constraint order_address_address_id_fk
        foreign key (address_id) references address (address_id),
    constraint order_user_user_id_fk
        foreign key (user_id) references user (user_id),
    constraint chk_discount_range
        check (`discount` between 0 and 100)
);

create table order_item
(
    order_id   varchar(12) not null,
    product_id varchar(11) not null,
    quantity   int         not null,
    primary key (order_id, product_id),
    constraint order_item_order_order_id_fk
        foreign key (order_id) references `order` (order_id),
    constraint order_item_product_product_id_fk
        foreign key (product_id) references product (product_id)
);

create index user_email_index
    on user (email);



create table verify_code
(
    code      varchar(6)                            not null,
    email     varchar(30)                           not null comment 'email cua nguoi dung ',
    create_at timestamp default current_timestamp() not null,
    function  int                                   not null comment '1-register, 2-login(otp), 3-resetPassword',
    valid     int       default 1                   not null comment '0-No longer valid, 1- still valid',
    primary key (code, email)
);

create index verify_code_email_index
    on verify_code (email);

