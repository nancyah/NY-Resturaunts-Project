-- There is a table of restaurants called nomnom with columns name, neighborhood, cuisine, review, price, and health. 
-- I used the SQL queries I learned to find the best dinner spots in the city.

-- getting a feel for the nomnom table, identifying the column names.
select * from nomnom;

-- exploring the distinct neighborhoods.
select distinct neighborhood from nomnom;

-- explore the distinct cuisine types.
select distinct cuisine from nomnom;

-- I would like some Chinese food...
select name, cuisine from nomnom where cuisine is 'Chinese';

-- Let me tell you about the well rated resturaunts.
select name, review from nomnom where review >= 4;

-- My husband and I want to go on a fancy Italian dinner date.
select name, cuisine, price from nomnom where cuisine = 'Italian' and price is '$$$';

-- What was the name of the resturaunt that contained the word 'meatball'?
select name from nomnom where name like '%meatball%';

-- Let's order delivery (our house is near Midtown, Downtown, and Chinatown).
select name, neighborhood from nomnom where neighborhood is 'Midtown' or neighborhood is 'Downtown' or neighborhood is 'Chinatown';

-- Should we avoid places with pending health grades??
select name, health from nomnom where health is null;

-- Top 10 resturaunts based on reviews.
select name, review from nomnom order by review desc limit 10;

-- Change the rating system to look nicer and easier to understand.
select review,
case
when review > 4.5 then 'Extraordinary'
when review > 4 then 'Excellent'
when review > 3 then 'Good'
when review > 2 then 'Fair'
else 'Poor'
end as 'Rank'
from nomnom;

