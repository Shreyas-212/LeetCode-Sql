# Write your MySQL query statement below
Select event_day AS `day`,
emp_id,
sum(out_time-in_time) AS total_time
FROM employees
GROUP BY `day`,emp_id;