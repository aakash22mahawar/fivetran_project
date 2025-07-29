WITH raw AS (
    SELECT  *
    FROM {{ source('raw_source', 'gsheet') }}
)

SELECT
    *
FROM raw