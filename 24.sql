WIth tab as
(SELECT model,price
      FROM PC
      WHERE pc.price = (SELECT MAX(price) FROM PC)
      union all
      SELECT model,price
      FROM laptop l
      WHERE l.price = (SELECT MAX(price) FROM Laptop)
      union all
      SELECT model,price
      FROM Printer p
      WHERE p.price = (SELECT MAX(price) FROM Printer)
     )
SELECT distinct model 
FROM tab
WHERE tab.price = (select MAX(price) from tab)
