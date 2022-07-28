SELECT speed , AVG(price) as AVG
FROM PC
WHERE  pc.speed > 600
GROUP BY pc.speed
