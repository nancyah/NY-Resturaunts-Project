-- show all columns of table
select * from nomnom;

-- explore the unique neighborhoods
select distinct neighborhood from nomnom;

-- explore the unique cuisine choices
select distinct cuisine from nomnom;

-- I like Chinese food. Do you?
select name, cuisine from nomnom where cuisine is 'Chinese';

-- Let's go somewhere really yummy!
select name, review from nomnom where review >= 4;

-- 
select name, cuisine, price from nomnom where cuisine = 'Italian' and price is '$$$';

select name from nomnom where name like '%meatball%';

select name, neighborhood from nomnom where neighborhood is 'Midtown' or neighborhood is 'Downtown' or neighborhood is 'Chinatown';

select name, health from nomnom where health is null;

select name, review from nomnom order by review desc limit 10;

select review,
case
when review > 4.5 then 'Extraordinary'
when review > 4 then 'Excellent'
when review > 3 then 'Good'
when review > 2 then 'Fair'
else 'Poor'
end as 'Rank'
from nomnom;

