SELECT 
cus.contactname AS `Nome de contato`,
shi.shippername AS `Empresa que fez o envio`,
ord.orderdate AS `Data do pedido`
FROM
w3schools.customers AS cus
INNER JOIN
w3schools.orders AS ord ON cus.customerid = ord.customerid
INNER JOIN
w3schools.shippers AS shi ON ord.shipperid = shi.shipperid
WHERE
shi.shipperid IN (1 , 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
