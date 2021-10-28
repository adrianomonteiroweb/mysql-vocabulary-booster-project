USE hr;
DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano; 
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT 
count(*) INTO total
FROM hr.employees AS emp
WHERE
MONTH(emp.hire_date) = mes AND YEAR(emp.hire_date) = ano;
RETURN total;
END $$
DELIMITER ;
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
