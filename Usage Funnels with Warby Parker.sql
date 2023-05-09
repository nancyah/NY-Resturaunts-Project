 select * from survey limit 10;

 select question, count(response) from survey
 group by question
 order by question;

 select * from quiz limit 5;
 select * from home_try_on limit 5;
 select * from purchase limit 5;

with funnle as (
  select q.user_id,
  h.user_id is not null as 'is_home_try_on',
  h.number_of_pairs,
  p.user_id is not null as 'is_purchase'
from quiz as 'q'
left join home_try_on as 'h'
  on q.user_id = h.user_id
left join purchase as 'p'
  on p.user_id = q.user_id)
select number_of_pairs, count(is_purchase) from funnle
group by number_of_pairs;
-- number of pairs sent does not effect purchase much at all

