with tb1 as(
      select *
             from {{source("datafeed_shared_schema",'dept')}}           
)
select * from tb1