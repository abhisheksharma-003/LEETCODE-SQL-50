/*
Problem: 1141. User Activity for the Past 30 Days I
Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/

Description:
Find the number of active users per day for the last 30 days
ending on 2019-07-27.

Approach:
- Filter records within last 30 days using WHERE
- Group by activity_date
- Count distinct users per day

Key Concepts:
- Date filtering using BETWEEN
- COUNT(DISTINCT)
- GROUP BY
*/

SELECT activity_date AS day, COUNT(DISTINCT user_id) as active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;

