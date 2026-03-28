/*
Problem: Big Countries
Link: https://leetcode.com/problems/big-countries/

Description:
Find countries with area >= 3,000,000 or population >= 25,000,000.

Approach:
- Apply filtering using OR condition

Key Concept:
- Conditional filtering using WHERE clause
*/

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;