
CREATE VIEW customer_info AS  -- * this is how a view is created
SELECT first_name, last_name, address FROM customer
INNER JOIN address ON customer.address_id = address.address_id


-- ? We can call it back like so:
SELECT * FROM customer_info  -- it does not save the data in memory, it just retain the query previously created.


-- ! in this way you can replace the view created with a new one.
CREATE OR REPLACE VIEW customer_info AS  -- * this is how a view is created
SELECT first_name, last_name, address, district FROM customer
INNER JOIN address ON customer.address_id = address.address_id


SELECT * FROM customer_info


-- todo: We can delete the views with this command:
DROP VIEW IF EXISTS customer_info


-- todo: you can change the name of the view like so:
ALTER VIEW customer_info RENAME TO c_information