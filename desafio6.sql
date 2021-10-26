SELECT
CONCAT(first_name, ' ', last_name) AS 'Nome completo',
(SELECT job.job_title 
FROM hr.jobs AS job 
WHERE job.job_id = emp.job_id) AS Cargo,
job_his.start_date AS 'Data de início do cargo',
(SELECT department_name
FROM hr.departments AS dep
WHERE dep.DEPARTMENT_ID = emp.DEPARTMENT_ID) AS Departamento
FROM
hr.employees AS emp
JOIN
hr.job_history AS job_his
ORDER BY `Nome completo`DESC, Cargo ASC;
