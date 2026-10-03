use tickets_and_teams;

-- S2a

select te.department,avg(resolution_hours) as avg_resoultion_hours
from tickets ti
join teams te on te.team_id=ti.team_id
group by department
order by  avg(resolution_hours) desc;

-- S2b

select team_id,avg(resolution_hours) as avg_resolution_hours from tickets 
group by team_id having avg(resolution_hours) >24;

-- S2c

select channel,count(channel) as tickets from tickets 
group by channel having avg(resolution_hours) >24
order by channel
limit 2;