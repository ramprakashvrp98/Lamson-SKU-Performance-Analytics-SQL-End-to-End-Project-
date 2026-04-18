-- ABC Classification

with SKU_REVENUE as (

select sku_id, sum(units_sold*price) revenue from lamson_sku_sales
group by sku_id),
P_RANK as (
select *, round(percent_rank() over(order by revenue desc),2) prt from SKU_REVENUE)

select *, 
case
when prt<=0.2 then "level A"
when prt<=0.5 then "level B"
else "level C"
end class
from P_RANK;
