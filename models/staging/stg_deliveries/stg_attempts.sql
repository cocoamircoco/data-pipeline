{{ config(schema='stg') }}


with 
source as (

    {#-
    
    #}
    select * from {{ source('operations_rds_public', 'task') }}

)
select * from source