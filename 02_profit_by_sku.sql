-- Profit by SKU

SELECT sku_id, round(SUM((price-units_sold)* price),2) AS Profit
FROM lamson_sku_sales
GROUP BY sku_id
ORDER BY profit DESC;