with 
source as (

    {#-
    
    #}
    select * from {{ source('deliveries_rds_public', 'attempt_history') }}
    {% if target.name == 'dev' %}
        limit 100
    {% endif %}


)
select * from source