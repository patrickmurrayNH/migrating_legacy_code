with source as (
    select * from {{ source('jaffle_shop', 'customers') }}
),
transformed as (
    select 
        first_name || ' ' || last_name as name,
        id as customer_id,
        last_name as surname,
        first_name as givenname,
    from source
)
select * from transformed