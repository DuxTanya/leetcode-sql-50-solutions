# Write your MySQL query statement below
SELECT x.id 
FROM weather x, weather y
WHERE DATEDIFF(x.recordDate,y.recordDate) = 1 
AND x.temperature > y.temperature;
