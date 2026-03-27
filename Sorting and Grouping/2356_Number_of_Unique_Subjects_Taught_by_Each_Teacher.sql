/*
Problem: 2356. Number of Unique Subjects Taught by Each Teacher
Link: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/

Description:
Find the number of unique subjects each teacher teaches.

Approach:
- Group by teacher_id
- Count distinct subject_id to avoid duplicates across departments

Key Concepts:
- GROUP BY
- COUNT(DISTINCT)
*/

SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;