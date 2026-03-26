/*
Problem: 1633. Percentage of Users Attended a Contest
Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/

Description:
Find the percentage of users who registered in each contest.
Round to 2 decimal places.
Order by percentage (desc), then contest_id (asc).

Approach:
- Count users per contest using GROUP BY
- Divide by total number of users (subquery)
- Multiply by 100 for percentage
- Round result

Key Concepts:
- GROUP BY
- COUNT
- Subquery
- Percentage calculation
- Sorting with multiple conditions
*/

SELECT r.contest_id, ROUND(COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC;