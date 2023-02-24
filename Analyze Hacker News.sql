-- Hacker News is a popular website run by Y Combinator, a community site for sharing news, showing off projects, asking questions, among other things.
-- In this project, the table is clalled hacker_news with stories from 2007 with columns title, user, score, timestamp, and url. 

-- Getting a feel for the table. Top 5 stories.
select title, score from hacker_news 
order by score desc limit 5;

-- Total score of all stories.
select sum(score) from hacker_news;

-- Users with combined scores of over 200.
select user, sum(score) from hacker_news 
group by user having sum(score) > 200 
order by sum(score) desc;

-- Add top users scores and divide by total scores. This online forumn is dominated by these few users.
select (517.0 + 309.0 + 304.0 + 282.0) / 6366.0;

-- Some users are rickrolling... banned! (news moderating)
select user, count(*) from hacker_news 
where url like 'https://www.youtube.com/watch?v=dQw4w9WgXcQ' 
group by user order by count(*) desc;

-- How much other sites feed Hacker News.
select case
when url like '%github.com%' then 'GitHub'
when url like '%medium.com%' then 'Medium'
when url like '%nytimes.com%' then 'New York Times'
else 'Other'
end as 'Source',
count(*)
from hacker_news group by 1;

-- Get familiar with timestamp format.
select timestamp from hacker_news limit 10;

-- Return the hours of the timestamp column.
select timestamp, strftime('%H', timestamp) from hacker_news group by 1 limit 20;

-- Best time to post a story. Get hours of timestamp, average and round score of each hour, count of stories of each hour, filter null times, and rename columns.
select strftime('%H', timestamp) as 'Hour', round(avg(score)) as 'Average score', count(*) as 'Number of Stories' 
from hacker_news where timestamp is not null 
group by 1 order by 2 desc;

