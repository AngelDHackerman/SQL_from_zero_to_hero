

SELECT title, rental_rate
FROM film
WHERE rental_rate >  -- ? this is just an compration perator
(SELECT ROUND(AVG(rental_rate), 2) FROM film)  -- ! this operation is done first, and this is the subQuery


SELECT inventory.inventory_id, rental.inventory_id, rental.return_date, inventory.film_id
FROM rental
LEFT JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30'


-- Return the title of the movies returned between 2005-05-29 and 2005-05-30
SELECT film_id, title
FROM film
WHERE film_id IN  -- * here you can see the subQuery
(SELECT inventory.film_id 
FROM rental 
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')


SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11)


SELECT first_name, last_name
FROM customer AS c
WHERE NOT EXISTS
(SELECT * FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11)