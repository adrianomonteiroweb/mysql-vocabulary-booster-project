SELECT 
CONCAT(emp1.first_name, ' ', emp1.last_name) AS `Nome completo funcionário 1`,
emp1.salary AS `Salário funcionário 1`,
emp1.phone_number AS `Telefone funcionário 1`,
CONCAT(emp2.first_name, ' ', emp2.last_name) AS `Nome completo funcionário 2`,
emp2.SALARY AS `Salário funcionário 2`,
emp2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM
hr.employees AS emp1,
hr.employees AS emp2
WHERE emp1.job_id = emp2.job_id
AND emp1.employee_id <> emp2.employee_id
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
