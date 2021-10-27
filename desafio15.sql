USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN nomecargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS `Média salarial`
FROM employees AS e
WHERE e.job_id = (SELECT job_id FROM jobs AS job
WHERE job.job_title = nomecargo) GROUP BY job_id;
END $$
DELIMITER ;
