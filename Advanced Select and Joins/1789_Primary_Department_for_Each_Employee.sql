/*
Problem: Primary Department for Each Employee
Link: https://leetcode.com/problems/primary-department-for-each-employee/

Description:
- Each employee can belong to one or more departments.
- If an employee belongs to only one department, that department is their primary department.
- If an employee belongs to multiple departments, the primary department is the one where primary_flag = 'Y'.
- Return employee_id and department_id for each employee.

Approach:
- There are two cases:
  1. If an employee has only one department → return that department
  2. If an employee has multiple departments → return the one with primary_flag = 'Y'
- Use a subquery to find employees with only one department using GROUP BY + HAVING
- In the main query:
  - Select rows where primary_flag = 'Y'
  - OR employee belongs to the single-department group

Key Concepts:
- GROUP BY (to count departments per employee)
- HAVING (to filter aggregated results)
- Subquery (to identify single-department employees)
- Conditional filtering using OR
*/

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y' OR employee_id IN
    (SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(*) = 1);