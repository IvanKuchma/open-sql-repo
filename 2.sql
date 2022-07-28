SELECT distinct maker
FROM product
WHERE type = 'Printer'
GROUP BY maker
