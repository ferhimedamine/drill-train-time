create view train_trips as (
select 
t.trip_short_name as id,
t.trip_id as trip_id,
cast(t.route_id as int) as route_id,
cast(t.service_id as int) as service_id,
cast(t.direction_id as int) as direction_id,
cast(t.trip_headsign as varchar) as Destination,
tr.Dest_id,
tr.Departure,
tr.Origin_id,
tr.Origin
from dfs.pcurtis.train tr, dfs.pcurtis.`trips.txt` t
where t.trip_id = tr.trip_id
)
