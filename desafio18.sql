SELECT 
CONCAT(emp.first_name, ' ', emp.last_name) AS `Nome completo`,
DATE_FORMAT(jobhis.start_date, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(jobhis.end_date, '%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(jobhis.end_date, jobhis.start_date) / 365, 2) AS `Anos trabalhados`
FROM hr.job_history AS jobhis
INNER JOIN
hr.employees AS emp ON emp.employee_id = jobhis.employee_id
ORDER BY `Nome completo` , `Anos trabalhados`;
