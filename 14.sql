SELECT s.class,s.name,c.country
FROM Classes c
JOIN Ships s ON s.class = c.class
AND c.numGuns >= 10
