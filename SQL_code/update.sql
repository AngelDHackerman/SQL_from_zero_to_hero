UPDATE account
SET last_login = CURRENT_TIMESTAMP


UPDATE account
SET last_login = created_on


-- ! updating a table using the data from another table
-- ? this is also know has a JOIN UPDATE, even thought we don't have the Join keyword
UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id  -- * this where statement is important ! 


UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login  -- ! RETURNING can show us the tables that we are interested on.


