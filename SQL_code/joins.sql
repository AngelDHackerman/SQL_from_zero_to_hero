
      -- ? JOINS, work like the Venn diagram. They look for the common objects in both tables passed 

  -- ! INNER JOINS

SELECT * FROM payment 
INNER JOIN customer
ON payment.customer_id = customer.customer_id;


SELECT payment_id, payment.customer_id, first_name 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;


  -- ! OUTER JOINS

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;


-- This show an empty table, meaning that there is not customer info who have never do a purchase in our store.
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;


-- other way to check that there is not "extra" clients in our data base is the next one:
SELECT COUNT(DISTINCT (customer_id)) FROM customer;

SELECT COUNT(DISTINCT (customer_id)) FROM payment; 


  -- ! LEFT OUTER JOINS

-- ? in this case the order matters, in the preveous joins they were symetric now, the order matters.

SELECT film.film_id, title, inventory_id, store_id  -- * We did not specify the title and inventory_id because they are unique in the "inventory" table
FROM film
-- LEFT OUTER JOIN  -- * we can use either: LEFT OUTER JOIN or LEFT JOIN
LEFT JOIN inventory 
ON inventory.film_id = film.film_id


-- This returns a lot of "null", because our store does not have that movies in any store, we do not have inventory for them.
SELECT film.film_id, title, inventory_id, store_id 
FROM film
LEFT JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL


  -- ! RIGHT OUTER JOINS

