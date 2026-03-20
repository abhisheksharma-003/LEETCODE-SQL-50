/*
Problem: Replace Employee ID With The Unique Identifier
Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

Description:
Replace employee id with unique_id if available.

Approach:
- Use Employees as base table
- LEFT JOIN with EmployeeUNI
- Keep all employees, even if unique_id is NULL

Key Concept:
- LEFT JOIN
- Handling missing values (NULL)
*/

SELECT unique_id, name
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON eu.id = e.id;