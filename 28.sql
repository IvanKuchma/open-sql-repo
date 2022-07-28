SELECT COUNT(maker) as maker
FROM (SELECT COUNT(maker) as Maker
      FROM product
      group by maker
      HAVING COUNT(model)= 1) tab
