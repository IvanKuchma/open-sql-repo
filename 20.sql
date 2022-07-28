SELECT p.maker,count(p.model) as model
FROM product p
WHERE type='PC'
GROUP BY p.maker
HAVING count(p.model) >= 3
