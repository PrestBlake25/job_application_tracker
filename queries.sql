SELECT COUNT(*) AS total_apps FROM applications;
--This query counts the total number of applications table.

SELECT status, COUNT(*) as total
FROM applications
GROUP BY status;
--This query groups the applications by their status and counts how many applications are in each status.