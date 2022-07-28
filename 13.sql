SELECT AVG(speed) as Avg_speed
FROM PC 
 JOIN Product p ON pc.model = p.model 
WHERE type = 'PC' AND p.maker = 'A'
