/*
Problem: 1070. Product Sales Analysis III
Link: https://leetcode.com/problems/product-sales-analysis-iii/

Description:
For each product, find the first year it was sold.
Return product_id, first year, quantity, and price.

Approach:
- Find the earliest year per product using MIN(year)
- Join this result with original table
- Match on product_id and year to get correct row

Key Concepts:
- GROUP BY with MIN()
- Subquery + JOIN
- Row selection based on aggregate value
*/

SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM Sales s
JOIN (
    SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
) t
ON s.product_id = t.product_id
AND s.year = t.first_year;