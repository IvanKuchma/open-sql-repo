SELECT maker
FROM product p, PC
WHERE p.model = pc.model AND pc.speed >=750
INTERSECT
SELECT maker
FROM product p , laptop
WHERE p.model = laptop.model AND laptop.speed >=750
