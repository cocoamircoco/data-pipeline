

  create view "dw"."dbt_stg"."stg_attempts__dbt_tmp" as (
    


with 
source as (
    select * from "dw"."operations_rds_public"."task"

)
select * from source
  ) ;
