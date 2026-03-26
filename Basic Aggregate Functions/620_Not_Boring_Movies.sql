/*
Problem: 620. Not Boring Movies
Link: https://leetcode.com/problems/not-boring-movies/

Description:
Find movies with odd-numbered IDs and a description that is not "boring".
Return results ordered by rating in descending order.

Approach:
- Filter rows where id is odd using MOD(id, 2) = 1
- Exclude movies with description = 'boring'
- Sort by rating in descending order

Key Concepts:
- Filtering using WHERE
- MOD operator
- Sorting using ORDER BY
*/

SELECT id, movie, description, rating
FROM Cinema 
WHERE id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC;
