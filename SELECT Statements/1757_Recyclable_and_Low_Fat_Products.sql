/*
Problem: Recyclable and Low Fat Products
Link: https://leetcode.com/problems/recyclable-and-low-fat-products/

Description:
Find product_ids where products are both low fat and recyclable.

Approach:
- Filter rows where low_fats = 'Y'
- AND recyclable = 'Y'

Key Concept:
- Basic filtering using WHERE clause
*/

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';