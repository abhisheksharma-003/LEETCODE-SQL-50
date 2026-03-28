/*
Problem: Customers Who Bought All Products
Link: https://leetcode.com/problems/customers-who-bought-all-products/

Approach (Optimal - GROUP BY):
- Group records by customer_id
- Count distinct products purchased by each customer
- Compute total distinct products from Product table
- Compare both counts using HAVING
- Only customers whose count matches total products are returned

Key Concepts:
- GROUP BY (one row per customer)
- COUNT(DISTINCT ...) (avoid duplicate purchases)
- HAVING (filter based on aggregate comparison)
- Subquery (to get total product count)
- SQL Division Pattern ("ALL" condition)
*/

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(DISTINCT product_key) FROM Product);

/*
Alternative Approach (Correlated Subquery):

Approach:
- Iterate each customer row
- Count distinct products for that customer using subquery
- Compare with total product count
- Use DISTINCT to avoid duplicate customer_ids

Key Concepts:
- Correlated Subquery (row-wise evaluation)
- DISTINCT (remove duplicates)
- Nested SELECT
- Performance trade-off (slower than GROUP BY)
*/

SELECT DISTINCT customer_id
FROM Customer c
WHERE (
    SELECT COUNT(DISTINCT product_key)
    FROM Customer
    WHERE customer_id = c.customer_id) = (SELECT COUNT(DISTINCT product_key) FROM Product);