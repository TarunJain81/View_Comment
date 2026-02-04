
CREATE OR REPLACE VIEW nyctaxi_daily_summary_branch
(
  trip_date    DATE    COMMENT 'Date of the trip (pickup date)',
  trip_count    BIGINT   COMMENT 'Total trips for that day and passenger count',
  avg_total_amount DOUBLE COMMENT 'Average total fare amount for those trips'
)
COMMENT 'Daily NYC taxi summary by passenger count'
AS
SELECT
  DATE(tpep_pickup_datetime) AS trip_date,
  COUNT(*)                   AS trip_count,
  AVG(fare_amount)          AS avg_total_amount
FROM samples.nyctaxi.trips
GROUP BY
  DATE(tpep_pickup_datetime)