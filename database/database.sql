create
database Bike_Ecommerce;
    use
Bike_Ecommerce;
create table Product(
    id int not null primary key ,
    name varchar(255) not null,
    price double not null,
    description varchar(255)  null,
    image varchar(255)  null,
    category_id varchar(255)  null,
    brand_id varchar(255)  null,
    discount_id varchar(255)  null,
    supplier_id varchar(255)  null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table Category(
    id int not null primary key ,
    name varchar(255) not null,
    description varchar(255)  null,
    image varchar(255)  null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table Brand(
    id int not null primary key ,
    name varchar(255) not null,
    description varchar(255)  null,
    image varchar(255)  null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table Discount(
    id int not null primary key ,
    name varchar(255) not null,
    description varchar(255)  null,
    discount double not null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
create table Supplier(
    name varchar(255) not null,
    description varchar(255)  null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);

