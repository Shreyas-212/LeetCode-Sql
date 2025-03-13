# Write your MySQL query statement below
select  id, count(id) num from 
(select requester_id id from RequestAccepted RA1
union all
select accepter_id id from RequestAccepted RA2) as ft
group by id
order by count(id) desc
limit 1;
