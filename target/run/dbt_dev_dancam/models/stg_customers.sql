
  create or replace  view DEMO_DB.dbt_dcampbell.stg_customers  as (
    select
    id as customer_id,
    first_name,
    last_name

from raw.jaffle_shop.customers
  );
