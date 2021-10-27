SELECT 
UCASE(CONCAT(emp.first_name, ' ', emp.last_name)) AS `Nome completo`,
jobhis.start_date AS `Data de início`,
emp.salary AS `Salário`
FROM
hr.job_history AS jobhis
INNER JOIN
hr.employees AS emp ON jobhis.employee_id = emp.employee_id
WHERE MONTH(jobhis.start_date) IN (01,02,03)
ORDER BY `Nome completo`, `Data de início` DESC;
