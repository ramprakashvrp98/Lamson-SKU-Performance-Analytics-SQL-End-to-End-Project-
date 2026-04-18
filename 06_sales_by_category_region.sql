-- sales by category by region

select category,region, sum(units_sold) as Tot_sales from lamson_sku_sales
group by category,region
order by Tot_sales desc;