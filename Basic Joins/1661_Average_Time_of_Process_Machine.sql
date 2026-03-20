/*
Problem: Average Time of Process per Machine
Link: https://leetcode.com/problems/average-time-of-process-per-machine/

Description:
Calculate average processing time per machine.

Approach:
- Use SELF JOIN to match start and end rows
- Compute time difference (end - start)
- Take average per machine

Key Concept:
- SELF JOIN for event pairing
- Aggregation (AVG)
*/

SELECT s.machine_id, ROUND(AVG(e.timestamp - s.timestamp), 3) AS processing_time
FROM Activity s
JOIN Activity e
ON s.machine_id = e.machine_id
AND s.process_id = e.process_id
WHERE s.activity_type = 'start'
AND e.activity_type = 'end'
GROUP BY s.machine_id;