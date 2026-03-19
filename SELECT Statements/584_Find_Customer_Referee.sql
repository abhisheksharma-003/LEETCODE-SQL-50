/*
Problem: Find Customer Referee
Link: https://leetcode.com/problems/find-customer-referee/

Description:
Find customers whose referee_id is not equal to 2 or is NULL.

Approach:
- Filter customers where referee_id != 2
- Include NULL values using OR condition

Key Concept:
- Handling NULL values in SQL
*/

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS null;

