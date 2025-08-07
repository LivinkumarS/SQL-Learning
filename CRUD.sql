CREATE DATABASE students_record;

USE students_record;

	CREATE TABLE mark_list(
	id INT primary key,
	name VARCHAR(50),
	mark INT
	);
    
INSERT INTO mark_list
VALUES (1,"Vijay",99),(2,"Surya",80),(3,"Rajinikanth",100),(4,"Ajith",99);

SELECT name as student_name, isPresent as attendance FROM attendance_record;

SELECT * FROM attendance_record WHERE isPresent=0;

SELECT * FROM mark_list;

set sql_safe_updates=0;

UPDATE mark_list SET mark=90;

DELETE FROM mark_list;
