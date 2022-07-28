SELECT distinct maker
FROM pc,product
WHERE speed >= 450 and pc.model = product.model
