-- Top category in each region

with a1 as(
select category,region,sum(units_sold) as tot_sales, dense_rank() over(partition by region order by sum(units_sold) desc) SKU_rank
from lamson_sku_sales
group by category,region)
select * from a1 where SKU_rank=1;