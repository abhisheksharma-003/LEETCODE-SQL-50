/*
Problem: Triangle Judgement
Link: https://leetcode.com/problems/triangle-judgement/

Description:
- Given a table Triangle with columns x, y, z representing lengths of three line segments
- Determine for each row whether the three lengths can form a valid triangle
- A triangle is valid if the sum of any two sides is greater than the third side
- Return "Yes" if it forms a triangle, otherwise "No"

Approach:
- Use CASE statement to evaluate triangle conditions
- Apply triangle inequality rules:
  x + y > z
  x + z > y
  y + z > x
- If all conditions are true → "Yes"
- Otherwise → "No"

Key Concepts:
- CASE WHEN (conditional logic)
- Boolean conditions with AND
- Row-wise evaluation
*/

SELECT x, y, z,
    CASE 
        WHEN (
            x + y > z AND
            x + z > y AND
            y + z > x) THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;