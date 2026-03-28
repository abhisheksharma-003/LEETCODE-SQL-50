/*
Problem: Find Followers Count
Link: https://leetcode.com/problems/find-followers-count/

Approach:
- Group records by user_id
- Count number of followers using COUNT(*)
- Each group represents one user and their total followers
- Sort the result by user_id in ascending order

Key Concepts:
- GROUP BY (to aggregate followers per user)
- COUNT(*) (to count number of followers)
- ORDER BY (to sort output)
*/

SELECT user_id, COUNT(*) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;
