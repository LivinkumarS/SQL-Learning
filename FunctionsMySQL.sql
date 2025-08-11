select ROUND(12.4547657, 4);
select CEIL(12.4547657);
select ABS(-12.4547657);

select substring("the world",2,5);
select trim("   Hi Hello ");

select now() as currentDate;

select curdate() as currentDate;

select curtime() as currentTime;

select DATEDIFF('2025-12-31',CURDATE());

use students_record;

CREATE TABLE price_list(
id int primary key,
productName varchar(50),
price float
);

insert into price_list values(1,'t-shirt',550.678),(2,"men's shirt",1000.50),
(3,"women's t-shirt",1200.50),(4,'cap',100.50),(5,'perfume',2000.60);

SELECT id, productName, ROUND(price) from price_list where id in (1,2,3);

SELECT id, productName, CEIL(price) from price_list;

SELECT id, productName, FLOOR(price) from price_list;

SELECT id, productName, MOD(price, 10) from price_list;

SELECT POW(id,2), productName, POW(price, 2) from price_list;

SELECT concat("The product name is: ",productName) as product, id as proId from price_list;

SELECT LENGTH(productName) as charLen from price_list;

SELECT UPPER(productName) as proUpper from price_list;

SELECT LOWER(productName) as proLower from price_list;

SELECT SUBSTRING(productName,1,3) as proLower from price_list;

SELECT * FROM mark_list;
