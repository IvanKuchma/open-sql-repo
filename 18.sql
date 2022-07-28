SELECT distinct maker,price
FROM Printer pr ,product p 
WHERE price = (SELECT MIN(price) 
               FROM Printer 
               WHERE color='y' 
               ) 
AND color='y' 
AND pr.model = p.model
