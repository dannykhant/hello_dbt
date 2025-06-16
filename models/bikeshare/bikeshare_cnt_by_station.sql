WITH
  trips_by_station AS (
  SELECT
    start_station_id,
    start_station_name,
    COUNT(1) cnt
  FROM
    `bigquery-public-data.austin_bikeshare.bikeshare_trips`
  GROUP BY
    1,
    2)
SELECT
  *
FROM
  trips_by_station
ORDER BY
  cnt desc