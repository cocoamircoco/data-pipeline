

  create view "dw"."dbt"."stg_deliveres__dbt_tmp" as (
    with 
source as (
     select * from "dw"."operations_rds_public"."task"


)
select * from source
  ) ;
