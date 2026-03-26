/*
Problem: 1075. Project Employees I
Link: https://leetcode.com/problems/project-employees-i/

Description:
Find the average experience of employees working on each project.
Round the result to 2 decimal places.

Approach:
- Join Project and Employee using employee_id
- Group by project_id
- Calculate average using AVG()
- Round result

Key Concepts:
- INNER JOIN
- GROUP BY
- Aggregate functions (AVG)
- ROUND function
*/

SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p
JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;