use students_record;

select * from employee_list;

create table salary_details(
id int primary key auto_increment,
salary float not null,
employeeKey int not null,
foreign key (employeeKey) references employee_list(id)
);

insert into product_list values (1,"tomato",25.55),
(2,'mango',100.56),(3,'green apple',150.56),(4,'onion',20.56),
(5,'cherry',75.56);

select avg(price) as AveragePrice from product_list;

select * from product_list 
where price>(select avg(price) from product_list);



drop table product_list;

select * from actor_list;
select * from last_movie;

select id from actor_list where noOfMovies>50;

select * from last_movie where actorId in
 (select id from actor_list where noOfMovies>50);


