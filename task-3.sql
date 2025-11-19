-- Total Sales per Customer

        SELECT c.name, SUM(oi.quantity * oi.price) AS total_sales
        FROM customers c
        JOIN orders o ON c.customer_id = o.customer_id
        JOIN order_items oi ON o.order_id = oi.order_id
        GROUP BY c.customer_id;
    

-- Orders from India

        SELECT o.order_id, c.name, c.city
        FROM orders o
        JOIN customers c ON o.customer_id = c.customer_id
        WHERE country = 'India';
    

-- High Value Orders (>10000)

        SELECT o.order_id, SUM(oi.quantity * oi.price) AS order_value
        FROM orders o
        JOIN order_items oi ON o.order_id = oi.order_id
        GROUP BY o.order_id
        HAVING order_value > 10000;
    