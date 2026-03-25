/*
Problem: Employee Bonus
Link: https://leetcode.com/problems/employee-bonus/

Approach:
- Use LEFT JOIN to include all employees
- Attach bonus data from Bonus table
- Filter employees with:
    1. bonus less than 1000
    2. OR no bonus (NULL)

Key Concepts:
- LEFT JOIN (to include missing data)
- NULL handling (bonus IS NULL)
- Filtering with OR condition

*/

SELECT e.name, b.bonus 
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
Where bonus < 1000 OR bonus IS NULL;