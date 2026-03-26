/*
Problem: 1193. Monthly Transactions I
Link: https://leetcode.com/problems/monthly-transactions-i/

Description:
For each month and country, calculate:
- total number of transactions
- total amount
- number of approved transactions
- total approved amount

Approach:
- Extract month using DATE_FORMAT
- Group by month and country
- Use conditional aggregation for approved transactions

Key Concepts:
- DATE_FORMAT
- GROUP BY multiple columns
- Conditional aggregation (CASE WHEN)
- Multiple KPIs in one query
*/

SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month,country,
    COUNT(*) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month, country;