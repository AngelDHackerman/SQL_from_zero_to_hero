CREATE TABLE account(
	user_id SERIAL PRIMARY KEY, -- * this is the first column, SERIAL means that it will follow and order "from smaller to bigger or viceversa"
	username VARCHAR(50) UNIQUE NOT NULL, -- 50 char max for the strings
	password VARCHAR(50) NOT NULL,  -- * NOT NULL stands for, it must not be empty 
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
)


CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
)


CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id), -- * this targets the primary key of the table "account", this is how we create forengins keys
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
)