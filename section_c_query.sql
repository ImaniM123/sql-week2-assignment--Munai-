
-------SECTION C - Querying the Data (Filtering with WHERE)-----

--finding all students who are in form 4
select * from students
where class = 'Form 4';

--find all subjects in science department
select * from subjects
where department = 'Sciences';

--find all exam results where marks are greater than or equal to 70
select * from exam_results
where marks >= 70;

--find all female students only
select * from students
where gender = 'F';

--All students who are in form 3 and from nairobi
select * from students
where class = 'Form 3' and city = 'Nairobi';

--all students who are in Form 2 or Form 4
select * from students 
where class = 'Form 2' or class = 'Form 4';