

  create  table
    "dw"."dbt_dimensions"."robot_dimension__dbt_tmp"
    
    
    
  as (
    


with 
source as (
    select * from "dw"."operations_rds_public"."robot"

)
select * from source
  );