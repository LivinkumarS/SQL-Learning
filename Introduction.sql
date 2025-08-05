CREATE DATABASE students_record;

USE students_record;

	CREATE TABLE attendance(
	id INT,
	name VARCHAR(50),
	isPresent BOOLEAN
	);
    
INSERT INTO attendance (id,name) VALUES (4,"Prabhas"),(2,"DQ"),(3,"Vijay Devarkonda");