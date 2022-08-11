
-- This is how we insert data into the accounts. 
INSERT INTO account(username, password, email, created_on)  -- * these ones are the actual colums of our table
VALUES
('Jose', 'password', 'jose@email.com', CURRENT_TIMESTAMP)


INSERT INTO job(job_name)
VALUES
('Astronaut')


INSERT INTO account_job(user_id, job_id, hire_date)
VALUES
(1, 1, CURRENT_TIMESTAMP)

