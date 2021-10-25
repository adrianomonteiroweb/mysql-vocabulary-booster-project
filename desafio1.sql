SELECT
country_name AS País,
IF(region_id = (SELECT region_ID FROM hr.regions WHERE region_name = 'Europe'), 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY País;
