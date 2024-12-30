 {{ config(materialized ='table') }}

with tb1 as(
      select *
             from {{ref('emp')}}           
),
tb2 as
(
      select *
             from {{ref('dept')}} 
)
select * from tb1 e,tb2 d where e.department=upper(d.dname)