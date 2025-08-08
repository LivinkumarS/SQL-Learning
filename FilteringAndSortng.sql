use students_record;
select * from mark_list where id>5 AND mark>80;
select * from mark_list where id>5 OR mark>80;



select * from mark_list where id>5;


select * from mark_list where mark BETWEEN 30 AND 50;

select * from mark_list where mark IN (100,55,47,34,85,1100);


select * from mark_list where id<9 and mark>=80
and not name like '%a' order by name desc LIMIT 1 OFFSET 3;

select * from mark_list limit 30 offset 5;

update mark_list set name="suresh" where id=10;





insert into mark_list Values (1,'Vijay',100),(2,'Ajith',99),(3,'Pabhas',90),(4,'Vijay Devarkonda',80),(5,'Karthi',85),(6,'Trisha',100),(7,'Samantha',100),(8,'Pooja Hegde',90),(9,'Ramesh',47),(10,'Sures',39);