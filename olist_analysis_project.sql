-- Query 1

-- How many unique orders has the Olist e-commerce company received in total?

use olist_project ;

SELECT 
    COUNT(DISTINCT order_id) AS total_order
FROM
    olist_orders_dataset;
    
-- Query 2
    
-- “I want to understand the current order situation. 
-- Tell me how many orders we have for each order status, 
-- and show the status with the highest number of orders first.”

SELECT 
    order_status, COUNT(order_id) AS number_of_orders
FROM
    olist_orders_dataset
GROUP BY order_status
ORDER BY order_status DESC;

-- Query 3

-- “I want to know how much total revenue the company 
-- generated from product sales.
-- Calculate the total product sales revenue.”

SELECT 
    SUM(price) AS total_revenue
FROM
    olist_order_items_dataset;
    
    -- Query 3
    
    -- “Which 10 product categories generated the highest total sales revenue?
-- Show the category name and its total revenue, 
-- with the highest revenue first.”

SELECT 
    product_category_name, SUM(price) AS total_revenue
FROM
    olist_order_items_dataset
        JOIN
    olist_products_dataset ON olist_order_items_dataset.product_id = olist_products_dataset.product_id
GROUP BY product_category_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Query 4

-- “I want to identify our 10 most valuable customers. Find the Top 10 customers who have spent the most money.”

use olist_project;

SELECT 
    olist_orders_dataset.customer_id,
    COUNT(DISTINCT olist_order_items_dataset.order_id) AS num_of_order,
    SUM(olist_order_items_dataset.price) AS total_money_spend
FROM
    olist_orders_dataset
        JOIN
    olist_order_items_dataset ON olist_orders_dataset.order_id = olist_order_items_dataset.order_id
GROUP BY olist_orders_dataset.customer_id
ORDER BY total_money_spend DESC
LIMIT 10;

-- Query 5

-- “Show me the total revenue generated in each month. I want to understand how sales changed over time. 
-- Display the month and total revenue, with the latest month first.”

SELECT 
    DATE_FORMAT(olist_orders_dataset.order_purchase_timestamp,
            '%Y-%m') AS months,
    SUM(olist_order_items_dataset.price) AS total_revenue
FROM
    olist_orders_dataset
        JOIN
    olist_order_items_dataset ON olist_orders_dataset.order_id = olist_order_items_dataset.order_id
GROUP BY months
ORDER BY months DESC;

-- Query 5

-- Find the average order value for each payment type.

select 
    AVG(payment_value) AS payment_value, payment_type
FROM
    olist_order_payments_dataset
GROUP BY payment_type
ORDER BY payment_value DESC;

-- Query 6

-- “Which order status has the highest average customer review score? 
-- Show the order status and its average review score, with the highest average score first.”

use olist_project;

SELECT 
    olist_orders_dataset.order_status,
    AVG(olist_order_reviews_dataset.review_score) AS avg_review_score
FROM
    olist_orders_dataset
        JOIN
    olist_order_reviews_dataset ON olist_orders_dataset.order_id = olist_order_reviews_dataset.order_id
GROUP BY order_status
ORDER BY avg_review_score DESC;

-- Query 7

-- Which product categories have sold the highest number of items? 
-- Show the top 10 product categories and the number of items sold, with the highest-selling category first.

use olist_project ;

SELECT 
    olist_products_dataset.product_category_name,
    COUNT(olist_order_items_dataset.product_id) AS num_of_items
FROM
    olist_products_dataset
        JOIN
    olist_order_items_dataset ON olist_products_dataset.product_id = olist_order_items_dataset.product_id
GROUP BY product_category_name
ORDER BY num_of_items DESC
LIMIT 10;

-- Query 8

-- Find the top 5 sellers based on their total sales revenue. 
-- Show the seller_id and total revenue, highest revenue first.

use olist_project;

SELECT 
    olist_sellers_dataset.seller_id,
    SUM(olist_order_items_dataset.price) AS revenue
FROM
    olist_order_items_dataset
        JOIN
    olist_sellers_dataset ON olist_order_items_dataset.seller_id = olist_sellers_dataset.seller_id
GROUP BY seller_id
ORDER BY revenue DESC
LIMIT 5;

-- Query 9

-- “Which customers have placed more than 3 orders? 
-- Show the customer ID and the number of orders, with the customers having the most orders first.”

use olist_project;

SELECT 
    olist_customers_dataset.customer_unique_id,
    COUNT(olist_orders_dataset.order_id) AS num_of_order
FROM
    olist_customers_dataset
        JOIN
    olist_orders_dataset ON olist_customers_dataset.customer_id = olist_orders_dataset.customer_id
GROUP BY olist_customers_dataset.customer_unique_id
HAVING num_of_order > 3
ORDER BY num_of_order DESC;

-- Query 10

-- Which payment type was used most frequently by customers?
-- Show the payment type and the number of payments, with the most frequently used payment type first.

SELECT 
    payment_type, COUNT(payment_type) AS num_of_payment_type
FROM
    olist_order_payments_dataset
GROUP BY payment_type
ORDER BY num_of_payment_type DESC;


