-------SECTION A Building the Database (DDL)---------
create schema greenwood_academy;
set search_path to greenwood_academy;

--creating the table students
create table students(
student_id serial PRIMARY key,
first_name VARCHAR(50) NOT null,
last_name VARCHAR(50) NOT null,
gender VARCHAR(1),
date_of_birth date,
class VARCHAR(10),	
city VARCHAR(50)
);

--creating table subjects
create table subjects(
subject_id serial primary key,
subject_name VARCHAR(100) not null unique,
department	VARCHAR(50),
teacher_name VARCHAR(100),
credits	INT
);

--creating table exam results
create table exam_results (
result_id serial PRIMARY key,
student_id	INT	NOT null,
subject_id	INT	NOT null,
marks	INT	NOT null,
exam_date	DATE,
grade	VARCHAR(2)
);

--adding a column to students table
alter table students
add column phone_number varchar (20);

--renaming subjects table(the column credit to credit hours)
alter table subjects
rename column credits to credit_hours;

--removing the column phone_number
alter table students
drop column phone_number;
