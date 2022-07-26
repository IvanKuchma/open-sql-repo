SELECT maker 
FROM Product p 
WHERE type='printer' 
 AND p.maker IN(SELECT maker 
                from product,pc 
                WHERE pc.ram = (SELECT MIN(ram) 
                                FROM pc)
                AND pc.speed = (SELECT MAX(speed) 
                                FROM PC 
                                WHERE pc.ram=(Select MAX(ram) 
                                              FROM pc)
                                )
                )   /*  Select ram FROM PC p WHERE p.ram = (SELECT MIN(ram) FROM PC) AND SELECT speed FROM PC p WHERE p.speed = (SELECT MAX(speed) FROM PC)*/