-- Profit margin %

SELECT sku_id,SUM(units_sold * price) AS revenue,SUM((price - cost) * units_sold) AS profit,ROUND(SUM((price - cost) * units_sold) / SUM(units_sold * price) * 100, 2) AS profit_margin
FROM lamson_sku_sales
GROUP BY sku_id;
