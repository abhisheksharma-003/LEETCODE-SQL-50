/*
Problem: Confirmation Rate
Link: https://leetcode.com/problems/confirmation-rate/

Approach:
- Use LEFT JOIN to include all users (even without confirmations)
- Count total confirmation requests
- Count confirmed requests using boolean SUM
- Compute ratio = confirmed / total
- Handle NULL (division by zero) using IFNULL
- Convert to decimal using * 1.0
- Round result to 2 decimal places

Key Concepts:
- LEFT JOIN (to preserve all users)
- Conditional aggregation (SUM(condition))
- Handling NULL values (IFNULL)
- Integer vs Decimal division
*/

SELECT s.user_id, 
    ROUND( IFNULL(SUM(c.action = 'confirmed')*1.0 / COUNT(c.action), 0),2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;
