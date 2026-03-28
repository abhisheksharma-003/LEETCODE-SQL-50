/*
Problem: Managers with at Least 5 Direct Reports
Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

Description:
- Given the Employee table, each employee may report to a manager.
- The column `managerId` represents the manager of an employee.
- A manager is defined as an employee who has direct reports.
- Find managers who have at least 5 direct reports.
- Return the names of such managers.

Approach:
- Use SELF JOIN on Employee table
- Treat:
    e1 → manager
    e2 → employee
- Match employees to their manager using:
    e1.id = e2.managerId
- Count number of employees under each manager
- Filter managers having at least 5 direct reports

Key Concepts:
- SELF JOIN (hierarchical relationship)
- GROUP BY (aggregate per manager)
- HAVING (filter aggregated results)

*/

SELECT e1.name
FROM Employee e1
JOIN Employee e2
ON e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(*) >= 5;