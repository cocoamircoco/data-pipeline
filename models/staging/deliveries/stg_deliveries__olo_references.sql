with 
source as (

    {#-
    #}
     select * from {{ source('deliveries_rds_public', 'olo_references') }}
    {% if target.name == 'dev' %}
        limit 100
    {% endif %}



)
select * from source
