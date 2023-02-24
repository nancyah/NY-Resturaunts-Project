select * from startups;

select count(distinct(name)) from startups;

select sum(valuation) from startups;

select max(raised) from startups where stage is 'Seed';

select min(founded) from startups;

select category, round(avg(valuation), 2) from startups group by 1 order by 2 desc;

select category, count(*) from startups group by 1 having count(*) > 3;

select location, avg(employees) from startups group by location having avg(employees) > 500;