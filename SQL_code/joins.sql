
      -- ? JOINS, work like the Venn diagram. They look for the common objects in both tables passed 

        -- ! INNER JOINS


SELECT * FROM payment 
INNER JOIN customer
ON payment.customer_id = customer.customer_id


SELECT payment_id, payment.customer_id, first_name 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id


        -- ! OUTER JOINS


