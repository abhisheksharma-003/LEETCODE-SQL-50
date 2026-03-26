/*
Problem: 1251. Average Selling Price
Link: https://leetcode.com/problems/average-selling-price/

Description:
Calculate the average selling price for each product.
The average is weighted by the number of units sold.

Approach:
- Join Prices and UnitsSold using product_id and date range
- Compute weighted average:
    SUM(price * units) / SUM(units)
- Use NULLIF to avoid division by zero
- Use IFNULL to handle NULL results

Key Concepts:
- LEFT JOIN
- BETWEEN for date filtering
- Weighted average
- NULL handling (NULLIF, IFNULL)
*/

SELECT p.product_id,
    ROUND(IFNULL(SUM(price * units) / NULLIF(SUM(units), 0), 0), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;