-- joining multiple tables
-- Welp app: leave reviews of businesses and see other reviews

-- examine tables
select * from places;
select * from reviews;

-- find places that cost 20 dollars or less where $ = 10 dollars
select * from places
where price_point = "$" or price_point = "$$";

-- place_id in reviews table is foreign key

-- inner join to show reviews for restaurants that have at least one review
select places.name, places.average_rating, reviews.username, reviews.rating, reviews.review_date, reviews.note from places
join reviews
on places.id = reviews.place_id
where type = "Restaurant";

-- left join...
select places.name, places.average_rating, reviews.username, reviews.rating, reviews.review_date, reviews.note from places
left join reviews
on places.id = reviews.place_id
where type = "Restaurant";
-- inner join is more useful b/c no null ratings or notes

select places.id, places.name from places
left join reviews
on places.id = reviews.place_id
where reviews.place_id is null;

