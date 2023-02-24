create table friends (
  id integer, 
  name text, 
  birthday date
);

insert into friends (id, name, birthday)
values (1, 'Ororo Munroe', '1940-05-30');

insert into friends (id, name, birthday)
values (2, 'Jace', '2014-07-04');

insert into friends (id, name, birthday)
values (3, 'Kiko', '2021-08-13');

update friends
set name = 'Storm' where id = 1;

alter table friends
add column email text;

update friends
set email = 'storm@codecademy.com' 
where name = 'Storm';

update friends
set email = 'jace@codecademy.com' 
where name = 'Jace';

update friends
set email = 'kiko@codecademy.com' 
where name = 'Kiko';

delete from friends
where name is 'Storm';

select * from friends;

