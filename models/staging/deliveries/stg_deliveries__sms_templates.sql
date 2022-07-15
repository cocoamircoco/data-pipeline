with 
source as (

    {#-
    #}
     select * from {{ source('deliveries_rds_public', 'sms_templates') }}
    {% if target.name == 'dev' %}
        limit 100
    {% endif %}



)
select * from source
