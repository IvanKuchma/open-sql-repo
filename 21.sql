SELECT maker,MAX(price) as MAX
FROM Product p ,PC 
WHERE p.model=pc.model
GROUP BY maker
