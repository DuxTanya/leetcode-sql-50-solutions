# Write your MySQL query statement below
SELECT x.machine_id , round(avg(y.timestamp - x.timestamp),3)as processing_time 
FROM Activity x
JOIN Activity y
ON x.machine_id = y.machine_id
AND x.process_id = y.process_id
AND x.activity_type = "start" AND y.activity_type = "end"
GROUP BY x.machine_id 
