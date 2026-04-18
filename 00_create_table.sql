Create Database LAMSON;
USE LAMSON;

CREATE TABLE lamson_sku_sales (
    sku_id VARCHAR(20),
    category VARCHAR(50),
    sale_date DATE,
    region VARCHAR(20),
    units_sold INT,
    price DECIMAL(10,2),
    cost DECIMAL(10,2),
    discount_pct DECIMAL(5,2),
    inventory_level INT
);

SET GLOBAL local_infile = 1; 
SHOW VARIABLES LIKE 'local_infile'; 

LOAD DATA LOCAL INFILE 'D:/SQL/LAMSON PROJECT/lamson_sku_sales_dataset.csv'
INTO TABLE lamson_sku_sales
FIELDS TERMINATED BY ','
IGNORE 1 ROWS
(sku_id, category, @sale_date, region, units_sold, price, cost, discount_pct, inventory_level)
SET sale_date = STR_TO_DATE(@sale_date, '%m/%d/%Y');

select * from lamson_sku_sales;