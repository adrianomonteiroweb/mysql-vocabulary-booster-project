USE hr;
DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario; 
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario( IN email varchar(50))
BEGIN
DECLARE employeeID varchar(10);
SELECT emp.employee_id
INTO employeeid FROM hr.employees AS emp
WHERE emp.email = email;
SELECT 
CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo',
(SELECT dep.DEPARTMENT_NAME
FROM hr.departments AS dep
WHERE dep.department_id = jobhis.department_id) AS 'Departamento',
job.job_title AS 'Cargo'
FROM hr.jobs AS job
RIGHT JOIN hr.job_history AS jobhis ON jobhis.job_id = job.job_id 
INNER JOIN hr.employees AS emp ON jobhis.employee_id = emp.employee_id
WHERE jobhis.employee_id = employeeid
ORDER BY (
SELECT dep.department_name
FROM hr.departments AS dep
WHERE dep.department_id = jobhis.department_id), job.job_title;
END; $$
DELIMITER ;
CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
