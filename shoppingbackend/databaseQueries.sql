CREATE TABLE category(
	
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,

	CONSTRAINT pk_category_id PRIMARY KEY (id)

);

create table user_detail(
id IDENTITY,
first_name varchar(50),
last_name varchar(50),
role varchar(50),
enabled boolean,
password varchar(50),
email varchar(100),
contact_number varchar(15),
constraint pk_user_id primary key(id)
);

insert into user_detail
(first_name, last_name, role, enabled, password, email,contact_number) values
('Virat', 'Kohli', 'SUPPLIER', TRUE, 'admin', 'vk@gmail.com', '8888888888' );

insert into user_detail
(first_name, last_name, role, enabled, password, email,contact_number) values
('Sreenu', 'Thalari', 'ADMIN', TRUE, '12345', 'thalari.srinu@gmail.com', '9666394720' );

insert into user_detail
(first_name, last_name, role, enabled, password, email,contact_number) values
('Shravanthi', 'Thalari', 'SUPPLIER', TRUE, '12345', 'thalari.shravanthi@gmail.com', '7997917138' );

CREATE TABLE PRODUCT(
id IDENTITY,
code varchar(20),
name varchar(50),
brand varchar(50),
description varchar(255),
unit_price DECIMAL(10,2);
quantity INT,
is_active boolean,
category_id int,
supplier_id int,
purchases int default 0,
views int default 0,
constraint pk_product_id primary key (id),
constraint fk_product_category_id foreign key (category_id) references category (id),
constraint fk_supplier_id foreign key (supplier_id) references user_detail(id)
);


create table category(
id IDENTITY,
name varchar(50),
description varchar(255)
image_url varchar(55),
is_active boolean,
constraint pk_category_id primary key (id)
);




