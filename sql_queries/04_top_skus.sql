-- Top Performing SKUs

select sku_id,category,sum(price * units_sold) as revenue,
dense_rank() over (order by sum(price * units_sold) desc) SKU_rank from lamson_sku_sales
group by sku_id,category;
