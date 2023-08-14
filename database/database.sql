create
    database Bike_Ecommerce;
use
    Bike_Ecommerce;
create table Product
(
    id          varchar(5)   not null primary key,
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
    id         varchar(5)   not null primary key,
    name       varchar(255) not null,
    product_id varchar(255) null,
    image_id varchar(5)  null ,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table ImageProduct
(
    id         varchar(5)   not null primary key,
    image      varchar(255) null,
    product_id varchar(255) null references Product (id),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table ImageSlider
(
    id         varchar(5)   not null primary key,
    image      varchar(255) null,
    link       varchar(255) null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table Category
(
    id          varchar(5)   not null primary key,
    name        varchar(255) not null,
    description varchar(255) null,
    image       varchar(255) null,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);
create table Brand
(
    id          varchar(5)   not null primary key,
    name        varchar(255) not null,
    description varchar(255) null,
    image       varchar(255) null,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);
create table Discount
(
    id          varchar(5)   not null primary key,
    name        varchar(255) not null,
    description varchar(255) null,
    discount    double       not null,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);
create table Supplier
(
    id          varchar(5)   not null primary key,
    description varchar(255) null,
    created_at  timestamp default current_timestamp,
    updated_at  timestamp default current_timestamp
);

