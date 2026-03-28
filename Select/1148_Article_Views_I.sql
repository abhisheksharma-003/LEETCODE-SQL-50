/*
Problem: Article Views I
Link: https://leetcode.com/problems/article-views-i/

Description:
Find authors who viewed their own articles.

Approach:
- Compare author_id with viewer_id
- Use DISTINCT to avoid duplicates

Key Concept:
- Filtering + DISTINCT keyword
*/

SELECT DISTINCT author_id as id
FROM Views
WHERE viewer_id = author_id
ORDER BY id;
