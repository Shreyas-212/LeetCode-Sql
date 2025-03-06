# Write your MySQL query statement below
Select class From Courses
Group BY class
HAVING COUNT(*) > 4;