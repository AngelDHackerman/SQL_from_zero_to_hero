      -- ? AS clause 

-- ! AS is like an alias, but it is given until the end of the query, we cannot use it like in a "where" statement.

SELECT COUNT(*) AS num_transactions
FROM payment


SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id


SELECT customer_id, SUM(amount)  AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100  -- * HAVING SUM(X) this works like "WHERE" but this works with the 'GROUP BY' statement


