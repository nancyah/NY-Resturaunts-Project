-- get a feel for the table "met"
 select * from met limit 10;

-- number of pieces
 select count(*) from met
 where department = "American Decorative Arts";

-- number of unique pieces with celery (Old Victorian luxury)
 select count(*) from met
 where category like "%celery%";
 select distinct category from met
 where category like "%celery%";

-- title and medium of oldest piece(s) in collection
 select min(date) from met;
 select title, medium from met
 where date like "%1600%";

-- top 10 countries with most pieces in collection
 select country, count(*) from met
 where country is not null
 group by 1 order by 2 desc limit 10;

-- categories with more than 100 pieces
 select category, count(*) from met
 group by category having count(*) > 100
 order by count(*) desc;

-- number of pieces made with gold or silver
 select medium, count(*) from met
 where medium like "%gold%" or medium like "%silver%"
 group by 1 order by 2 desc;
 
