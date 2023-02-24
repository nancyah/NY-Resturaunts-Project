select * from trips;
select * from riders;
select * from cars;

select * from riders cross join cars;

select * from trips left join riders 
on trips.rider_id = riders.id;

select * from trips join cars
on trips.car_id = cars.id;

select * from riders union select * from riders2;

select round(avg(cost), 2) from trips;

select * from riders where total_trips < 500
union
select * from riders2 where total_trips < 500;

select count(*) from cars where status is 'active';

select * from cars order by trips_completed desc limit 2;

