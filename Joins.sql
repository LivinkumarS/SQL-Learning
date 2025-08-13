use students_record;

select * from actor_list;
select * from first_movie;
select * from last_movie;

select actor_list.name as actorName, first_movie.movieName as firstMovie 
from actor_list INNER JOIN first_movie
 on actor_list.id=first_movie.actorId;
 
 
select * from actor_list LEFT JOIN first_movie
 on actor_list.id=first_movie.actorId;

select a.name, f.movieName from actor_list a RIGHT JOIN first_movie f
 on a.id=f.actorId;

create table last_movie(
id int primary key,
movieName varchar(50),
actorId int not null,
foreign key (actorId) references actor_list(id)
);

insert into first_movie (movieName,actorId) values ('Apoorva Raagangal',2),('Choodalanivundhi',3),('Nerukku Ner',5),('En Veedu En Kanavar',6);

SELECT CONCAT('The actor name is ', UPPER(a.name),' His First Movie was ', 
UPPER(f.movieName), ' His latest movie was ', UPPER(l.movieName), '.') 
as ActorDetails FROM actor_list a INNER JOIN first_movie f on a.id = f.actorId
 INNER JOIN last_movie l ON a.id = l.actorId;



