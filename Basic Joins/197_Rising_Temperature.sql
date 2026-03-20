/*
Problem: Rising Temperature
Link: https://leetcode.com/problems/rising-temperature/

Description:
Find days where temperature is higher than the previous day.

Approach:
- SELF JOIN Weather table
- Match today's date with yesterday using DATE_ADD
- Compare temperatures
- Use aliases to avoid ambiguity

Key Concept:
- SELF JOIN
- Date functions
- Column ambiguity handling
*/

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature;