SELECT maker,AVG(screen)
FROM product p ,laptop l
WHERE p.model = l.model
GROUP BY maker
