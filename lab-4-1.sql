-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

select 
    sum(s.hits) 
from players p, stats s 
where p.id = s.player_id 
and p.first_name = 'Barry' 
and p.last_name = 'Bonds';
