-- I am practicing what I learned about joins by combining rows from different tables.
-- I am a Data Analyst at Lyft, a ride-sharing platform. For this project, I am given three tables: trips, riders, and cars.

-- Examine the 3 tables.
select * from trips;
select * from riders;
select * from cars;

-- Combine each user with each car model. Not useful.
select * from riders cross join cars;

-- Create trip log with trips and riders (left join).
select * from trips left join riders 
on trips.rider_id = riders.id;

-- Link trips and cars.
select * from trips join cars
on trips.car_id = cars.id;

-- Stack old and new riders.
select * from riders union select * from riders2;

-- Average cost for a trip.
select round(avg(cost), 2) from trips;

-- Email campain for irregular users.
select * from riders where total_trips < 500
union
select * from riders2 where total_trips < 500;

-- Calculate the number of cars that are active.
select count(*) from cars where status is 'active';

-- Find the 2 cars with the most completed trips for safty recall purposes.
select * from cars order by trips_completed desc limit 2;

