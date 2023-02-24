-- It is my first day as a TechCrunch reporter. My first task is to write an article on the rising trends in the startup world. 
-- My boss emailed me a project.sqlite file that contains a table called startups. It is a portfolio of some of the biggest names in the industry.
-- I wrote queries with aggregate functions to retrieve some interesting insights about these companies.

-- Take a look at the table.
select * from startups;

-- The total number of companies in the table.
select count(distinct(name)) from startups;

-- Total value of all the companies.
select sum(valuation) from startups;

--Highest amount raised by a startup during seed stage.
select max(raised) from startups where stage is 'Seed';

-- The year the oldest company was founded.
select min(founded) from startups;

-- Average valuation in each category rounded to 2 decimal places ordered from highest to lowest average valuation (valuations among different sectors).
select category, round(avg(valuation), 2) from startups group by 1 order by 2 desc;

-- Number of companies greater than 3 that belong to each category (most competitive markets). 
select category, count(*) from startups group by 1 having count(*) > 3;

-- Is there a difference between startup size among different locations?
select location, avg(employees) from startups group by location having avg(employees) > 500;
