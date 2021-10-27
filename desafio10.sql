SELECT 
pro.productname AS `Produto`,
MIN(orddet.quantity) AS `Mínima`,
MAX(orddet.quantity) AS `Máxima`,
ROUND(AVG(orddet.Quantity), 2) AS `Média`
FROM
w3schools.products AS pro
INNER JOIN
w3schools.order_details AS orddet ON pro.productid = orddet.productid
GROUP BY Produto HAVING Média > 20 
ORDER BY Média, Produto;
