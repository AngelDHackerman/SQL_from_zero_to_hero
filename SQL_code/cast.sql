
SELECT CAST('5' AS INTEGER) AS new_int


-- ! This is exactly the same as above: 
SELECT '10'::INTEGER AS new_int


-- ? It shows the length of the "number", (first we must cast it to a string).
-- * we need to add explicit type cast, it is why we had to add: VARCHAR
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental