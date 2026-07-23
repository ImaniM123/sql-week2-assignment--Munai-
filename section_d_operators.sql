--------SECTION D - Range, Membership & Search Operators----

--find all exam results where marks are between 50 and 80 
select * from exam_results
where marks between 50 and 80;

--to find all exams that took place between 15th March 2024 and 18th March 2024.
select * from exam_results
where exam_date between '2024-03-15' and '2024-03-18';

--find all students who live in Nairobi, Mombasa, or Kisumu 
select * from students
where city in ('Nairobi', 'Mombasa', 'Kisumu');

--find all students who are NOT in Form 2 or Form 3 - use NOT IN.
select * from students
where class not in ('Form 2', 'Form 3');

--find all students whose first name starts with the letter 'A' or 'E' - use LIKE.
select * from students
where first_name like 'A%' or first_name like 'E%';

--find all subjects whose subject name contains the word 'Studies'.
select * from subjects
where subject_name like '%Studies%';
