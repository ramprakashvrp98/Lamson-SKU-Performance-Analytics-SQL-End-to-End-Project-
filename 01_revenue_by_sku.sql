-- Total Revenue By SKU

SELECT sku_id, SUM(units_sold * price) AS Revenue
FROM lamson_sku_sales
GROUP BY sku_id
ORDER BY revenue DESC;