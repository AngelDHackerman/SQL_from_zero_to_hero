SHOW ALL 

SHOW TIMEZONE  -- ? shows the timezone that you are working with. 

SELECT NOW()  -- ? shows you the timestamp right now

SELECT TIMEOFDAY()  -- ? same has now() but in a string. 

SELECT CURRENT_TIME

SELECT CURRENT_DATE



SELECT EXTRACT(YEAR FROM payment_date)  -- * this extract just the year from the colum
FROM payment


SELECT EXTRACT(MONTH FROM payment_date)  AS month
FROM payment


SELECT EXTRACT(QUARTER FROM payment_date)  AS quarter
FROM payment


SELECT AGE(payment_date)  -- * This allow us to calculate how old is this timestamp
FROM payment 


-- We can use this URL, in order to see what options of formattin we have.  https://www.postgresql.org/docs/current/functions-formatting.html

SELECT TO_CHAR(payment_date, 'MONTH-YYYY')
FROM payment


SELECT TO_CHAR(payment_date, 'mon/dd/YYYY')
FROM payment;


SELECT TO_CHAR(payment_date, 'dd-MM-YYYY')
FROM payment;


    -- ? Challenge of timestamps

-- In which month the payment were done, and return the answer with the full name of the month

SELECT DISTINCT (TO_CHAR(payment_date, 'MONTH'))
FROM payment


-- How many payments occurred on a Monday ? 

-- ? TO_CHAR(payment_date, 'Day') returns a string padded with spaces ('Monday   '). To suppress the spaces, use the FM modifier ("fill mode")

SELECT COUNT(*)
FROM payment
WHERE (TO_CHAR(payment_date, 'FMDay')) = 'Monday'

-- * Another good answer:

SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1 -- 0 = Sunday, 1 = Monday