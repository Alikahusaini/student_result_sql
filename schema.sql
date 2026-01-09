create table students
(
student_id int primary key,
name varchar(100),
department varchar(100),
year int
);

create table subjects 
(
  subject_id int primary key,
  subject_name varchar(100)
);

create table marks
(
student_id int,
subject_id int,
marks int,
primary key (student_id, subject_id)
);