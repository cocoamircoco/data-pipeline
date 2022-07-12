

  create view "dw"."dbt_dimensions"."pilot_dimension__dbt_tmp" as (
    


with 
source as (
    select * from "dw"."operations_rds_public"."pilot"

)
select * from source
  ) ;
