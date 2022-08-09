
    -- ? Some math operations

SELECT ROUND((rental_rate / replacement_cost), 2) * 100 
FROM film


SELECT 0.1 * replacement_cost AS deposit
FROM film


    -- ? String operations

SELECT first_name ||' '|| last_name AS full_name
FROM customer


SELECT upper(first_name) ||' '|| upper(last_name) AS full_name
FROM customer


-- * this is how we capitalize a string in SQL
SELECT initcap(first_name) ||' '|| initcap(last_name) AS full_name
FROM customer


SELECT lower(LEFT(first_name, 1) || last_name || '@gmail.com') AS email_company
FROM customer