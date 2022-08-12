CREATE TABLE depts (
	dept_id SERIAL PRIMARY KEY,
	first_name VARCHAR (50),
	department VARCHAR (50)
)


INSERT INTO depts(
	first_name,
	department
)
VALUES
('Vinton', 'A'),
('Lauren', 'A'),
('Claire', 'B');


DELETE FROM depts 
WHERE department = 'B'


-- ! NULLIF, if both "parameters" are the same it will return a "Null", if they are diferent it will return the first parameter.
SELECT (
	SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END) / 
	NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END), 0)  -- * there is not apartment B so the first function with return a 0.
) AS department_ratio
FROM depts;

