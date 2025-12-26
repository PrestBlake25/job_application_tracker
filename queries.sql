SELECT COUNT(*) AS total_apps FROM applications;
--This query counts the total number of applications table.

SELECT status, COUNT(*) as total
FROM applications
GROUP BY status;

--This query groups the applications by their status and counts how many applications are in each status.

With combined_app AS (
  SELECT *
  FROM companies
  JOIN applications
  ON companies.id = applications.company_id
)
SELECT industry, COUNT(*)
FROM combined_app
WHERE status = 'Applied'
GROUP BY industry;

--This query counts the number of applications I have applied to without any response back
