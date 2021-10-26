SELECT 
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
job.JOB_TITLE AS `Cargo`,
jobhis.START_DATE AS `Data de início do cargo`,
dep.DEPARTMENT_NAME AS `Departamento`
FROM
hr.job_history AS jobhis
INNER JOIN
hr.employees AS emp ON jobhis.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN
hr.jobs AS job ON jobhis.JOB_ID = job.JOB_ID
INNER JOIN
hr.departments AS dep ON jobhis.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
