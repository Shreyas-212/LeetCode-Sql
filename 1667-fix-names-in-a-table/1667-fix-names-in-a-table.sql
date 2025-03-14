# Write your MySQL query statement below
SELECT user_id, concat(upper(left(name,1)), lower(right(name, length(name)-1))) as name FROM Users
ORDER BY user_id;