SELECT p.maker
FROM Product p
WHERE p.type = 'PC'
EXCEPT
SELECT p.maker
FROM Product p
WHERE p.type = 'Laptop'
