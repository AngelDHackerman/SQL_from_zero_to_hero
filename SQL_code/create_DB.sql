CREATE TABLE account(
	user_id SERIAL PRIMARY KEY, -- * this is the first column
	username VARCHAR(50) UNIQUE NOT NULL, -- 50 char max for the strings
	password VARCHAR(50) NOT NULL,  -- * NOT NULL stands for, it must not be empty 
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
)