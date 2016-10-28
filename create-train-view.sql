create view dfs.traintime.train as (
select 
st.trip_id as trip_id,
cast(st.stop_id as int) as Origin_id,
cast(st.stop_name as varchar) as Origin,
cast(st.departure_time as varchar) as Departure,
cast(ls.stop_id as int) as Dest_id
from (select st.trip_id,st.stop_sequence,st.stop_id,st.departure_time,s.stop_name from dfs.traintime.`stop_times.txt` st, dfs.traintime.`stops.txt` s where st.stop_id=s.stop_id) st
join
(SELECT `trip_id`, MAX(`stop_sequence`) AS `stop_id` FROM (select st.trip_id,st.stop_sequence,st.stop_id,s.stop_name from dfs.traintime.`stop_times.txt` st, dfs.traintime.`stops.txt` s where st.stop_id=s.stop_id) GROUP BY `trip_id`) ls
on st.trip_id = ls.trip_id
where st.stop_sequence=1
)
