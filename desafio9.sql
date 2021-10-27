SELECT 
CONCAT(emp.firstname, ' ', emp.lastname) AS `Nome completo`,
COUNT(ord.orderid) AS `Total de pedidos`
FROM
w3schools.employees AS emp
INNER JOIN
w3schools.orders AS ord ON emp.employeeid = ord.employeeid
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
