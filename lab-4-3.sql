-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

select
    t.name, p.first_name, p.last_name, sum(s.home_runs)
from
    players p
,   stats s
,   teams t
where 
    p.id = s.player_id
and t.id = s.team_id
and t.year = 2019
group by
    t.name, p.first_name, p.last_name
order by 4 desc limit 1
;
