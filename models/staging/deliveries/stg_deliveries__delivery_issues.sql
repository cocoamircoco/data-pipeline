with 
source as (

    {#-
    #}
     select * from {{ source('deliveries_rds_public', 'delivery_issues') }}
    {% if target.name == 'dev' %}
        limit 100
    {% endif %}



)
select * from source
