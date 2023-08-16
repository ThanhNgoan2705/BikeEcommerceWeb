create table category
(
    id          varchar(5)                            not null
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

create table product
(
    product_id  varchar(11)                           not null
        primary key,
    name        varchar(255)                          not null,
    price       double                                not null,
    description varchar(255)                          null,
    wheelSize   int                                   null,
    quantity    int                                   not null,
    inventory   int                                   not null,
    material    varchar(255)                          not null,
    warranty    varchar(50)                           null,
    category_id varchar(255)                          null,
    brand_id    varchar(255)                          null,
    discount_id varchar(255)                          null,
    supplier_id varchar(255)                          null,
    created_at  timestamp default current_timestamp() not null,
    updated_at  timestamp default current_timestamp() not null
);

create table user
(
    user_id   varchar(64)                           not null
        primary key,
    email     varchar(30)                           not null comment 'email cua nguoi dung ',
    salt      varchar(64)                           not null comment 'bao mat password bang sha2((salt+pass),256)',
    pass      varchar(255)                          not null,
    user_name varchar(100)                          not null comment 'ten tai khoan ',
    create_at timestamp default current_timestamp() not null comment 'ngay tao',
    update_at timestamp default current_timestamp() not null on update current_timestamp() comment 'ngay sua doi',
    role      int       default 1                   not null comment '1-user, 2-admin'
)
    comment 'user_info';

create table `order`
(
    order_id     varchar(12)                           not null
        primary key,
    user_id      varchar(64)                           null,
    price        double                                null,
    discount     int                                   null,
    shipping_fee double                                null,
    total        double                                null,
    send_day     timestamp                             null,
    receive_day  timestamp                             null,
    status       int                                   null comment '1-pending, 2-Confirmed, 3-Processing, 4-Shipped,5-Delivered,6-Cancelled,7-Returned,8-Refunded',
    create_at    timestamp default current_timestamp() null,
    update_at    timestamp default current_timestamp() null on update current_timestamp(),
    constraint order_user_user_id_fk
        foreign key (user_id) references user (user_id),
    constraint chk_discount_range
        check (`discount` between 1 and 100)
);

create table order_detail
(
    order_id   varchar(12) not null,
    product_id varchar(11) not null,
    quantity   int         not null,
    primary key (order_id, product_id),
    constraint order_detail_order_order_id_fk
        foreign key (order_id) references `order` (order_id),
    constraint order_detail_product_product_id_fk
        foreign key (product_id) references product (product_id)
)
    comment 'chi tiet hoa don';

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

