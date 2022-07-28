SELECT distinct type, p.model,laptop.speed
FROM product p,laptop,pc
WHERE p.model = laptop.model AND pc.speed > laptop.speed 
AND laptop.speed < all(SELECT speed FROM PC)
