
CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)


-- * Using ALTER in order to rename a Table 
ALTER TABLE information
RENAME TO new_info


-- * ALTER in order to rename a Column
ALTER TABLE new_info
RENAME COLUMN person TO people


-- * ALTER in order to Drop the Constrain of this Table.
ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL  -- this is the constrain that we dropped


