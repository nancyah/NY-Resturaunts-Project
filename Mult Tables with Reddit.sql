-- examining fictional data from Reddit

-- examine 3 tables
select * from users
limit 10;

select * from posts
limit 10;

select * from subreddits
limit 10;

-- how many different subreddits there are
select count(*) as 'subreddit count' from subreddits;

-- more queries
-- user with highest score
select username, max(score) as 'highest score'
from users;
-- post with highest score
select title, max(score) as 'highest score'
from posts;
-- top 5 subreddits with highest subscriber count
select name from subreddits
order by subscriber_count desc
limit 5;

-- left join users and posts finding number of posts per user in descending order
select users.username, count(posts.id) as 'posts made'
from users left join posts
on users.id = posts.user_id
group by users.id
order by 2 desc;

-- see existing posts hwere users are still active
select * from posts
inner join users
on posts.user_id = users.id;

-- stack new posts uder existing posts
select * from posts
union
select * from posts2;

-- which subreddits have most popular posts (>= 5000)
with popular_posts as(
  select * from posts
  where score >= 5000
)
select subreddits.name, popular_posts.title, popular_posts.score from subreddits
inner join popular_posts
on subreddits.id = popular_posts.subreddit_id
order by popular_posts.score desc;

-- highest scoring post for each subreddit
select posts.title, subreddits.name as 'subreddit name', max(score) as 'highest score' from posts
inner join subreddits
on posts.subreddit_id = subreddits.id
group by subreddits.id;

-- average score of all posts per subreddit
select subreddits.name, avg(posts.score) as 'average score' from subreddits inner join posts
on subreddits.id = posts.subreddit_id
group by subreddits.name
order by 2 desc;
