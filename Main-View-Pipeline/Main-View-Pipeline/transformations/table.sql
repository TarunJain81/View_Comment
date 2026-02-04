-- Please edit the sample below

CREATE OR REPLACE TABLE nyctaxi_daily_summary_table
AS
SELECT
  DATE(tpep_pickup_datetime) AS trip_date,
  COUNT(*)                   AS trip_count,
  AVG(fare_amount)          AS avg_total_amount
FROM samples.nyctaxi.trips
GROUP BY
  DATE(tpep_pickup_datetime)