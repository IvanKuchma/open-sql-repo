SELECT distinct p1.model,p2.model,p1.speed,p1.ram
FROM pc p1
JOIN pc p2 ON (p1.speed = p2.speed) AND p1.ram=p2.ram AND p1.model>p2.model
