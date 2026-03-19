/*
Problem: Invalid Tweets
Link: https://leetcode.com/problems/invalid-tweets/

Description:
Find tweet IDs where content length is greater than 15 characters.

Approach:
- Use LENGTH() function to filter rows

Key Concept:
- String functions in SQL
*/

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
