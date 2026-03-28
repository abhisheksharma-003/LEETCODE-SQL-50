/*
Problem: Biggest Single Number
Link: https://leetcode.com/problems/biggest-single-number/

Approach:
- Group numbers using GROUP BY num
- Count frequency using COUNT(*)
- Filter numbers that appear exactly once using HAVING COUNT(*) = 1
- From remaining numbers, select the maximum using MAX()
- If no such number exists, result will be NULL

Key Concepts:
- GROUP BY (to group identical values)
- HAVING (to filter aggregated results)
- COUNT(*) (frequency calculation)
- MAX() (to get largest value)
- Subquery usage
*/

SELECT MAX(num) AS num
FROM
    (SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1)t;
