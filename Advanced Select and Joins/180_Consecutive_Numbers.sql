/*
Problem: Consecutive Numbers
Link: https://leetcode.com/problems/consecutive-numbers/

Description:
- Given a Logs table with columns id and num
- Find all numbers that appear at least three times consecutively
- Consecutive means the rows have continuous ids and same num
- Return distinct numbers as ConsecutiveNums

Approach:
- Use LEAD() window function to access next rows
- Compare current num with:
  - next row → LEAD(num, 1)
  - next next row → LEAD(num, 2)
- If all three are equal → valid consecutive sequence
- Use DISTINCT to avoid duplicate results

Key Concepts:
- Window Functions (LEAD)
- Row-wise comparison across multiple rows
- Sequence detection
- DISTINCT (remove duplicates)
*/

SELECT DISTINCT num AS ConsecutiveNums
FROM (SELECT num,
    LEAD(num, 1) OVER (ORDER BY id) AS next_num,
    LEAD(num, 2) OVER (ORDER BY id) AS next_next_num
    FROM Logs)t
WHERE num = next_num AND num = next_next_num;