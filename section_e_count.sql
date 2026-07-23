----SECTION E - COUNT-------

--How many students are currently in Form 3?
SELECT COUNT(*) AS total_students
FROM students
WHERE class = 'Form 3';

--How many exam results have a mark of 70 or above? 
SELECT COUNT(*) AS total_results
FROM exam_results
WHERE marks >= 70;