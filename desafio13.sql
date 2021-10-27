SELECT 
pro.productname AS Produto, pro.price AS `Preço`
FROM w3schools.products AS pro
WHERE pro.productid IN (
SELECT 
ord.productid
FROM w3schools.order_details AS ord
WHERE ord.quantity > 80)
ORDER BY Produto;
