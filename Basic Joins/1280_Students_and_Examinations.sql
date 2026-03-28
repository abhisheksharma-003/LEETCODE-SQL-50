/*
Problem: Students and Examinations
Link: https://leetcode.com/problems/students-and-examinations/

Description:
- Given Students, Subjects, and Examinations tables
- Each student can attend multiple exams for different subjects
- Some student-subject combinations may not exist in Examinations
- For every student and subject pair:
  - Count how many exams the student attended
- Include pairs even if the count is 0
- Return student_id, student_name, subject_name, attended_exams

Approach:
- Generate all possible student-subject pairs using CROSS JOIN
- Use LEFT JOIN to attach examination records
- Count how many times each student attended each subject exam
- GROUP BY to aggregate counts
- ORDER BY for expected output format

Key Concepts:
- CROSS JOIN (generate combinations)
- LEFT JOIN (handle missing data)
- Aggregation (COUNT)
*/

SELECT s.student_id, s.student_name, sb.subject_name, COUNT(e.subject_name) AS attended_exams
FROM  Students s
CROSS JOIN Subjects sb 
LEFT JOIN  Examinations e 
ON s.student_id = e.student_id  
AND sb.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sb.subject_name
ORDER BY s.student_id, sb.subject_name;
