-- Slow Moving Inventory

SELECT sku_id, MAX(sale_date) AS last_sale, DATEDIFF('2025-12-31', MAX(sale_date)) AS days_inactive 
FROM lamson_sku_sales GROUP BY sku_id HAVING days_inactive > 60 ORDER BY days_inactive DESC;