create
    database Bike_Ecommerce;
use
    Bike_Ecommerce;
create table Product
(
    colorId          varchar(5)   not null primary key,
    name        varchar(255) not null,
    price       double       not null,
    description varchar(255) null,
    wheelSize   int          null,
    quantity    int          not null,
    inventory   int          not null,
    material    varchar(255) not null,
    warranty    varchar(50),
    category_id varchar(255) null,
    brand_id    varchar(255) null,
    discount_id varchar(255) null,
    supplier_id varchar(255) null,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);
create table ColourOnBike
(
    colorId         varchar(5)   not null primary key,
    name       varchar(255) not null,
    product_id varchar(255) null,
    image_id varchar(5)  null ,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table ImageProduct
(
    colorId         varchar(5)   not null primary key,
    image      varchar(255) null,
    product_id varchar(255) null references Product (colorId),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table ImageSlider
(
    colorId         varchar(5)   not null primary key,
    image      varchar(255) null,
    link       varchar(255) null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table Category
(
    colorId          varchar(5)   not null primary key,
    name        varchar(255) not null,
    description varchar(255) null,
    image       varchar(255) null,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);
create table Brand
(
    colorId          varchar(5)   not null primary key,
    name        varchar(255) not null,
    description varchar(255) null,
    image       varchar(255) null,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);
create table Discount
(
    colorId          varchar(5)   not null primary key,
    name        varchar(255) not null,
    description varchar(255) null,
    discount    double       not null,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);
create table Supplier
(
    colorId          varchar(5)   not null primary key,
    description varchar(255) null,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);

