/*
Problem: 1211. Queries Quality and Percentage
Link: https://leetcode.com/problems/queries-quality-and-percentage/

Description:
For each query_name, calculate:
- quality = average of (rating / position)
- poor_query_percentage = percentage of queries with rating < 3

Approach:
- Group by query_name
- Compute quality using SUM(rating/position) / COUNT(*)
- Count poor queries using CASE WHEN
- Convert to percentage

Key Concepts:
- Aggregation
- Conditional counting
- Avoid integer division
- Multiple metrics in one query
*/

SELECT query_name, 
    ROUND(SUM(rating*1.0 / position) / COUNT(*),2) AS quality, 
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END)* 100.0 / COUNT(*),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;