create view delays as (
select 
tr.*, 
cast(((f.trip_update.stop_time_update.departure.delay)/60) as int) as delay
from
`feed.json` f,
train_trips tr
where
tr.id = f.id
)
