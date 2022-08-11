
INSERT INTO job(job_name)
VALUES
('Hacker !!!')
RETURNING job_name


DELETE FROM job
WHERE job_name = 'Hacker !!!'
RETURNING job_id, job_name