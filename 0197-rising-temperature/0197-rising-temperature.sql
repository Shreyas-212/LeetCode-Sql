# Write your MySQL query statement below
SELECT w.id FROM Weather w
JOIN Weather wp ON DATE_SUB(w.recordDate, INTERVAL 1 DAY) = wp.recordDate
WHERE w.temperature > wp.temperature;