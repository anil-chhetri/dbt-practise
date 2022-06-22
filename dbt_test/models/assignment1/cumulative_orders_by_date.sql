{{ config(materialized='table') }}

select distinct "O_ORDERDATE"
, SUM("O_TOTALPRICE") OVER(PARTITION BY "O_ORDERDATE") as total
,  SUM("O_TOTALPRICE") over( order by "O_ORDERDATE" ) as cummulativetotal
from public.orders
