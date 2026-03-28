/*
Problem: The Number of Employees Which Report to Each Employee
Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/

Description:
- Given the Employees table, each employee may report to a manager.
- The column `reports_to` stores the manager's employee_id.
- For each employee who is a manager (i.e., has at least one report):
  - Count how many employees report to them
  - Calculate the average age of those employees
- Return employee_id, name, reports_count, and average_age
- Round the average_age to the nearest integer
- Sort the result by employee_id

Approach:
- Use a self join on Employees table
- Match employees with their manager using:
  employee.employee_id = subordinate.reports_to
- Count number of employees reporting to each manager using COUNT()
- Calculate average age of reporting employees using AVG()
- Round the average age using ROUND()
- Group results by manager (employee_id, name)
- Only include employees who have at least one report (INNER JOIN ensures this)

Key Concepts:
- Self Join (table joined with itself)
- GROUP BY (aggregate per manager)
- COUNT() (number of reports)
- AVG() + ROUND() (average age calculation)
*/

SELECT e1.employee_id, e1.name, COUNT(e1.employee_id) AS reports_count, ROUND(AVG(e2.age), 0) AS average_age
FROM Employees e1
JOIN Employees e2
ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id, e1.name
ORDER BY e1.employee_id;