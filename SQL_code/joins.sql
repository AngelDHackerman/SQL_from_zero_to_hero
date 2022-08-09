
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
WHERE inventory.film_id IS NULL  -- todo: this is for find elements that exist exclusively in the "film" table and NOT in the "inventory" table


  -- ! RIGHT OUTER JOINS

-- this is pretty much like the left joins but in the oposite, also we can switch the position of the left join and it will do the same has the righ outer join



      -- * Challange of the class

-- ? What are the emails of the customers who live in California?

-- My answer: 

SELECT email, district, customer.address_id
FROM customer
LEFT OUTER JOIN address 
ON address.address_id = customer.address_id
WHERE address.district ILIKE 'california'

-- Other option: 

SELECT district, email FROM address
INNER JOIN customer 
ON customer.address_id = address.address_id
WHERE district = 'California'


-- ! using 3 tables and therefore 2 left joins:

-- ? Get a list of all the movies "Nick wahlberg" has been in. 

-- My answer: 

SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film_actor.film_id
FROM actor
LEFT JOIN film_actor ON film_actor.actor_id = actor.actor_id
LEFT JOIN film ON film.film_id = film_actor.film_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';

-- Other answer: 

SELECT actor.first_name, actor.last_name, film.title
FROM actor
LEFT JOIN film_actor ON film_actor.actor_id = actor.actor_id
LEFT JOIN film ON film.film_id = film_actor.film_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';


-- Return the title of the movies returned between 2005-05-29 and 2005-05-30

SELECT inventory.inventory_id, rental.return_date, film.title
FROM rental
LEFT JOIN inventory ON inventory.inventory_id = rental.inventory_id
LEFT JOIN film ON film.film_id = inventory.film_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30'