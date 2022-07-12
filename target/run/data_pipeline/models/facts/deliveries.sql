

  create view "dw"."dbt_facts"."deliveries__dbt_tmp" as (
    


with 
source as (
    select * from "dw"."operations_rds_public"."task"

)
select * from source
  ) ;
