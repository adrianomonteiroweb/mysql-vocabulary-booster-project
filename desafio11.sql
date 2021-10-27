SELECT 
cus1.contactName AS `Nome`,
cus1.country AS `País`,
(SELECT COUNT(*) - 1
FROM w3schools.customers AS cus2
WHERE cus1.country = cus2.country
GROUP BY cus2.country) AS `Número de compatriotas`
FROM w3schools.customers AS cus1
WHERE
(SELECT COUNT(*) - 1
FROM w3schools.customers AS cus2
WHERE cus1.country = cus2.country
GROUP BY cus2.country) > 0
ORDER BY Nome;
