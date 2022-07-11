{{ config(
    schema='dimensions',
    materialized='table'

) }}


with 
source as (

    {#-
    
    #}
    select * from {{ source('operations_rds_public', 'robot') }}

)
select * from source