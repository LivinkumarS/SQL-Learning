create table actor_list (
id int primary key auto_increment,
name varchar(50) unique not null
);

insert into actor_list (name) value ('Ajith');
select * from actor_list;

set sql_safe_updates=0;
delete from actor_list;


drop table mark_list;

create table first_movie (
id int primary key auto_increment,
movieName varchar(50) not null,
actorId int not null unique,
foreign key (actorId) references actor_list(id)
);


insert into actor_list (name,noOfMovies) Values ('Dhanush',54);

insert into first_movie (movieName,actorId) values ('Thulluvatho ilamai',7);

select * from actor_list;

select * from first_movie;
 
 
update actor_list set noOfMovies=31 where id=3;


select * from mark_list;

update mark_list set isActive=1;
alter table mark_list add isActive boolean;


create table passlist(
id int primary key auto_increment,
actorId int not null
);

ALTER TABLE passlist ADD CONSTRAINT foreign key (actorId) references mark_list(id);

insert into passlist (actorId) value (11);

