
{{ config(schema='facts') }}


with 
source as (

    {#- 
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ source('operations_rds_public', 'task') }}

)
select * from source