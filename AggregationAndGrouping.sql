use students_record;

create table product_list(
id int primary key auto_increment,
name varchar(50) not null unique,
price float not null,
category varchar(30) default "general"
);

insert into product_list (name, price, category) values ('onion',30.85,'gro'),
('rice',50.85,'gro'),('dal',100.45,'gro'),('mobile',20000.00,'elec'),
('tablet',40000.00,'elec'),('laptop',200000.00,'elec');

select * from product_list;

select count(*) as totalProducts from product_list;

select sum(price) as totalPrice from product_list;

select avg(price) as avgPrice from product_list;

select min(price) as minPrice from product_list;

select category,count(*) as totalProducts, 
sum(price) as totalPrice, avg(price) as avgPrice,  
min(price) as minPrice, max(price) as maxPrice from product_list group by category 
ORDER BY totalProducts asc;

