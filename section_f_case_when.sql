
-----SECTION F - CASE WHEN---------

/*. Write a query using CASE WHEN to label each exam result with a grade description:
•	'Distinction' if marks >= 80
•	'Merit' if marks >= 60
•	'Pass' if marks >= 40
•	'Fail' if marks below 40
*/
select marks,
case
when marks >= 80 then 'Distinction'
when marks >= 60 then 'Merit'
when marks >= 40 then 'Pass'
when marks < 40 then 'Fail'
end
as performance 
from exam_results;

/* Write a query using CASE WHEN to label each student as:
•	'Senior' if they are in Form 3 or Form 4
•	'Junior' if they are in Form 2 or Form 1
Show the student's first name, last name, class, and student_level in your result.
*/
select first_name, last_name, class,
case 
	when class = 'Form 3' or class = 'Form 4' then 'Senior'
	when class = 'Form 2' or class = 'Form 1' then 'Junior'
end
as student_level
from students;