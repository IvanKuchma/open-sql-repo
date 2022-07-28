SELECT distinct maker,speed
FROM product,Laptop
WHERE hd >= 10 AND product.model = laptop.model
