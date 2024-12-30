

with tb1 as(
      select *
             from {{source("datafeed_shared_schema",'emp')}}           
)
select * from tb1



