{{ config(schema='dimensions') }}


with 
source as (

    {#-
    
    #}
    select * from {{ source('operations_rds_public', 'pilot') }}

)
select * from source