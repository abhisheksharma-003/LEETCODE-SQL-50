/*
Problem: Customer Who Visited but Did Not Make Any Transactions
Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

Description:
Find customers who visited but did not make any transactions.

Approach:
- Start from Visits table
- LEFT JOIN with Transactions
- Filter rows where transaction is NULL
- Count visits per customer

Key Concept:
- LEFT JOIN + IS NULL
- GROUP BY and COUNT
*/

SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY customer_id