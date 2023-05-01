-- analyze current talent pool to ensure each project is completed efficiently/effectively.
-- each project needs Project Manager, Team Lead, Designer, DBA, and >= 2 Developers.

-- examine tables
select * from employees limit 10;
select * from projects limit 10;

-- employees w/o project
select first_name, last_name, current_project 
from employees
where current_project is null
limit 10;

-- projects not chosen
select project_name from projects
where project_id not in (
  select current_project from employees
  where current_project is not null
);

-- project chosen by most employees
select projects.project_name, count(employee_id) from projects join employees
on projects.project_id = employees.current_project
where current_project is not null
group by project_name
order by count(employee_id) desc
limit 1;

-- project chosen by multiple employees
select projects.project_name, count(employee_id) from projects join employees
on projects.project_id = employees.current_project
where current_project is not null
group by project_name
having count(current_project) > 1
order by count(current_project) desc;

-- how many projects need developers? are there enough?
select (count(*) * 2) - (select count(*) from employees
where current_project is not null and 
position = 'Developer') as 'Count'
from projects;
--17
select count(*) as 'Num of Dev' from employees
where position = 'Developer';
-- 9
-- not enough

-- most common personality
select personality, count(*) from employees
group by personality
order by count(*) desc
limit 1;

-- projects chosen by employee with most common personality type
select project_name from projects
join employees
on projects.project_id = employees.current_project
where personality = (
  select personality from employees
  group by personality
  order by count(*) desc limit 1
);

