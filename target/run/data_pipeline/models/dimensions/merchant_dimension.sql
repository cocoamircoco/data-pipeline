

  create view "dw"."dbt_dimensions"."merchant_dimension__dbt_tmp" as (
    


with 
source as (
    select * from "dw"."operations_rds_public"."pilot"

)
select * from source
  ) ;
