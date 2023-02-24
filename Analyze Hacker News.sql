select title, score from hacker_news 
order by score desc limit 5;

select sum(score) from hacker_news;

select user, sum(score) from hacker_news 
group by user having sum(score) > 200 
order by sum(score) desc;

select (517.0 + 309.0 + 304.0 + 282.0) / 6366.0;

select user, count(*) from hacker_news 
where url like 'https://www.youtube.com/watch?v=dQw4w9WgXcQ' 
group by user order by count(*) desc;

select case
when url like '%github.com%' then 'GitHub'
when url like '%medium.com%' then 'Medium'
when url like '%nytimes.com%' then 'New York Times'
else 'Other'
end as 'Source',
count(*)
from hacker_news group by 1;

select timestamp from hacker_news limit 10;

select timestamp, strftime('%H', timestamp) from hacker_news group by 1 limit 20;

select strftime('%H', timestamp) as 'Hour', round(avg(score)) as 'Average score', count(*) as 'Number of Stories' 
from hacker_news where timestamp is not null 
group by 1 order by 2 desc;

