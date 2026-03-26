/*
Problem: 1174. Immediate Food Delivery II
Link: https://leetcode.com/problems/immediate-food-delivery-ii/

Description:
Find the percentage of customers whose first order was delivered immediately.
An order is immediate if order_date = customer_pref_delivery_date.

Approach:
- Find first order date for each customer using MIN(order_date)
- Join back to Delivery table to get full row
- Check if first order was immediate
- Calculate percentage

Key Concepts:
- Subquery (derived table)
- JOIN with aggregated result
- Conditional aggregation
- Percentage calculation
*/

SELECT 
    ROUND(SUM(CASE WHEN d.order_date = d.customer_pref_delivery_date 
    THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS immediate_percentage
FROM Delivery d
JOIN (
    SELECT customer_id, MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
) first_orders
ON d.customer_id = first_orders.customer_id
AND d.order_date = first_orders.first_order_date;