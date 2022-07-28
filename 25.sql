with tab as
(SELECT model,speed
 FROM PC
 WHERE pc.ram = (SELECT MIN(ram) 
                FROM PC )),
tab2 as (
SELECT pc.model, pc.ram
FROM tab, pc
WHERE tab.speed = (SELECT MAX(speed) 
                   FROM tab ) 
                   AND tab.model = pc.model),
tab3 as (
SELECT model
FROM tab2
WHERE tab2.ram = (SELECT MIN(ram) 
                  FROM tab2 ) )
SELECT distinct maker
FROM product,tab3 
WHERE product.model = tab3.model
INTERSECT
SELECT distinct maker
FROM product
WHERE type='printer'
