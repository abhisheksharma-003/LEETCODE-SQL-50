/*
Problem: 596. Classes More Than 5 Students
Link: https://leetcode.com/problems/classes-more-than-5-students/

Description:
Find all classes that have at least 5 students.
Return the class names.

Approach:
- Group records by class
- Count number of students in each class
- Filter groups having count >= 5 using HAVING

Key Concepts:
- GROUP BY
- COUNT()
- HAVING clause (filter after aggregation)
*/

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(class) >= 5;