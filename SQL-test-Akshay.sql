-- AKSHAY MATALE 
-- BATCTH -- 5;30 TO 6:30 PM


-- 1] Last name starts with MY or contains SE
-- ANSWER
 SELECT * FROM employees
 WHERE last_name LIKE 'my%' or '%se%'

-- 2] Last name contains b followed by R or U
-- ANSWER
SELECT * FROM employees
WHERE last_name LIKE 'b%' AND '%r%' or '%u%' 

-- Get the orders that are not shipped
-- ANSWER
SELECT * FROM sql_store.orders o
JOIN order_statuses s
ON o.status = s.order_status_id
WHERE NOT order_status_id = 2

-- Start order times by order_id = 2 descending orders as per their total price


-- Get the top 3 loyal customers
-- ANSWERS
SELECT * FROM sql_store.customers
ORDER BY points DESC LIMIT 3

-- Join order_items table with products
-- Answers
SELECT * FROM sql_store.order_items
CROSS JOIN products

-- In sql_invoicing join 3 tables payment, client, payment_methods and show name of the client and payment method
-- ANSWERS
SELECT c.name, p.name FROM sql_invoicing.clients c
JOIN invoices i
ON c.client_id = i.client_id
JOIN payment_methods p
on i.client_id = p.payment_method_id

