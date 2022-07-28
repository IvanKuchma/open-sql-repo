SELECT hd
FROM PC
GROUP BY hd
HAVING count(pc.model) >= 2
