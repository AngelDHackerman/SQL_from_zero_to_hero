
-- * completely deleted the "people" column
ALTER TABLE new_info
DROP COLUMN people


-- * IF EXISTS will attempt to 'drop' the column. 
ALTER TABLE new_info
DROP COLUMN IF EXISTS people


