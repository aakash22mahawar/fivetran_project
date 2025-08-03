WITH cte AS (
  SELECT * , SPLIT_PART("Location", ',', 1) as city FROM {{ ref('src_data') }}
)

SELECT
  city,count(*) as company_count
FROM cte group by 1 order by 2 desc
