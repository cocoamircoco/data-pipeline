with 
source as (

    {#-
    
    #}
    select * from {{ source('deliveries_rds_public', 'attempts') }}
    {% if target.name == 'dev' %}
        limit 100
    {% endif %}


)
select * from source