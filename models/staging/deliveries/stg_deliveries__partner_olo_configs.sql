with 
source as (

    {#-
    #}
     select * from {{ source('deliveries_rds_public', 'partner_olo_configs') }}
    {% if target.name == 'dev' %}
        limit 100
    {% endif %}



)
select * from source
