
-- * CHECK verifies that the condition in it's right is correct or not.
CREATE TABLE employees( 
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1900-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
	salary INTEGER CHECK (salary > 0)
)


-- ! This should now work due to the CHECK constrain
INSERT INTO employees(
	first_name,
	last_name,
	birthdate,
	hire_date,
	salary
)
VALUES (
	'Angel',
	'Hernandez',
	'1899-01-01',  -- ? this violates the CHECK 
	'2000-10-10',
	100
)
