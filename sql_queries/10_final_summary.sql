-- Final Summary

SELECT region, category,
    SUM(units_sold) AS total_units,
    ROUND(SUM(units_sold * price), 2) AS revenue,
    ROUND(SUM((price - cost) * units_sold), 2) AS profit
FROM lamson_sku_sales
GROUP BY region, category
ORDER BY revenue DESC;
