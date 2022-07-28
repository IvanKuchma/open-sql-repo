SELECT distinct product.model,pc.price
FROM product inner join
PC ON product.model = pc.model AND product.maker = 'B'
UNION
SELECT distinct product.model,laptop.price
FROM product inner join
Laptop ON product.model = laptop.model AND product.maker = 'B'
UNION
SELECT distinct product.model,printer.price
FROM product inner join
Printer ON product.model = printer.model AND product.maker = 'B'
-----------------------------------------------------------------------
Select product.model,price
From Product,Laptop
where maker='B' and product.model=laptop.model
union
Select product.model,price
From Product,pc
where maker='B' and product.model=pc.model
union
Select product.model,price
From Product,printer
where maker='B' and product.model=printer.model
