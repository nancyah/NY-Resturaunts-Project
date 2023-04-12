-- What are the column names?
select * from users limit 20;
 
-- Find the email addresses and birthdays of users whose 
-- birthday is between 1980-01-01 and 1989-12-31.
select email, birthday from users
where birthday between '1980-01-01' and '1989-12-31';
   
-- Find the emails and creation date of users 
-- whose created_at date matches this condition.
select email, created_at from users
where created_at < '2017-05-01';

-- Find the emails of the users who received the ‘bears’ test.
select email, test from users
where test = 'bears';

-- Find all the emails of all users who 
-- received a campaign on website BBB.
select email, campaign from users
where campaign like 'BBB%';

-- Find all the emails of all users who received ad copy 2 in 
-- their campaign.
select email, campaign from users
where campaign like '%2';

-- Find the emails for all users who received both a campaign and a test. 
-- These users will have non-empty entries in the campaign and test columns.
select email from users
where campaign is not null and test is not null;
