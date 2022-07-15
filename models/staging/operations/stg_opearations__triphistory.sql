with 
source as (

    {#-
    #}
     select * from {{ source('operations_rds_public', 'triphistory') }}


)
select * from source
