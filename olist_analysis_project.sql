-- How many unique orders has the Olist e-commerce company received in total?

use olist_project ;

SELECT 
    COUNT(DISTINCT order_id) AS total_order
FROM
    olist_orders_dataset;