-- Month over Month Trend 

with MOM as(
select sku_id,category,date_format(sale_date,'%y-%m') as mth,sum(price*units_sold) as revenue
from lamson_sku_sales 
group by sku_id,category,date_format(sale_date,'%y-%m'))
select *, 
lag(revenue,1) over(partition by sku_id order by mth) prev_month, 
revenue - lag(revenue,1) over(partition by sku_id order by mth) MOM_difference,
round(((revenue - lag(revenue,1) over(partition by sku_id order by mth))/lag(revenue,1) over(partition by sku_id order by mth))*100,2) perc_change
from MOM ;