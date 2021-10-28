USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_count INT;
SELECT COUNT(jh.employee_id)
FROM hr.job_history AS jh
JOIN hr.employees AS e ON jh.employee_id = e.employee_id
WHERE e.email = email INTO job_count;
RETURN job_count;
END $$
DELIMITER ;
