with 
source as (

    {#-
    
    #}
    select * from {{ source('operations_rds_public', 'tri') }}
    {% if target.name == 'dev' %}
        limit 100
    {% endif %}

)
select * from source