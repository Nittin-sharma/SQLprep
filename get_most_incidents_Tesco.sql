
-- table
-- incidents integer
-- username varchar
-- date date

--Get username with most incident by date 

with user_name_rank from(
select
username,
count(*),
DENSE_RANK() OVER (Order BY COUNT(*) DESC) as ranking
where
date='07072024'
group by username)

select 
username
from
user_name_rank
where ranking = 1

