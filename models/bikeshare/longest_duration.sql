select st.station_id, max(tf.duration_minutes) as max_trip_duration
from {{ ref("trip_fact") }} tf
join {{ ref("station_stg") }} st on tf.start_station_id = st.station_id
group by st.station_id
