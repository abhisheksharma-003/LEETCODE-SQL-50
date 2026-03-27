/*
Problem: 550. Game Play Analysis IV
Link: https://leetcode.com/problems/game-play-analysis-iv/

Description:
Find the fraction of players who logged in again on the day
immediately after their first login.
Return the result rounded to 2 decimal places.

Approach:
- Find each player's first login date using MIN(event_date)
- Join this result with the Activity table
- Check if the player logged in exactly 1 day after first login
- Count such players using COUNT(DISTINCT player_id)
- Divide by total distinct players
- Round the result to 2 decimal places

Key Concepts:
- GROUP BY with aggregation (MIN)
- Self JOIN using subquery
- Date comparison using DATEDIFF
- COUNT(DISTINCT)
- ROUND for formatting output
*/

SELECT 
    ROUND(COUNT(DISTINCT a.player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity),
    2) AS fraction
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) b
ON a.player_id = b.player_id
AND DATEDIFF(a.event_date, b.first_login) = 1;