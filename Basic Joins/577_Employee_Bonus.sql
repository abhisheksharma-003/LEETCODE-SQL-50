/*
Problem: Employee Bonus
Link: https://leetcode.com/problems/employee-bonus/

Description:
- Given Employee and Bonus tables
- Each employee may or may not have a bonus
- Return employees whose bonus is less than 1000 OR who do not have a bonus
- Include employee name and bonus in the result

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