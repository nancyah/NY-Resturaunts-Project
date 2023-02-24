-- I created my own table named friends and added/deleted data from it. 

-- I created the table named friends with the columns id, name, and birthday.
create table friends (
  id integer, 
  name text, 
  birthday date
);

-- I added 3 friends and their info to the table.
insert into friends (id, name, birthday)
values (1, 'Ororo Munroe', '1940-05-30');

insert into friends (id, name, birthday)
values (2, 'Jace', '2014-07-04');

insert into friends (id, name, birthday)
values (3, 'Kiko', '2021-08-13');

-- Ororo Munroe changed her name to Storm, because she can control the weather.
update friends
set name = 'Storm' where id = 1;

-- I updated everyone's email. First I added an email column, then input the info.
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

-- Actually, Storm is fictional...
delete from friends
where name is 'Storm';

select * from friends;

