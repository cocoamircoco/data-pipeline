with 
source as (

    {#-
    
    #}
    select * from {{ source('operations_rds_public', 'trip') }}
    {% if target.name == 'dev' %}
        limit 100
    {% endif %}

)
select * from source