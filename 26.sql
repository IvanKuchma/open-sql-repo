with tab as
(Select model,speed
 From PC
 where pc.ram = (Select MIN(ram) From PC )),
tab2 as (
Select pc.model, pc.ram
from tab, pc
where tab.speed = (Select MAX(speed) 
                   From tab ) 
                   and tab.model = pc.model),
tab3 as (
select model
from tab2
Where tab2.ram = (SELECT MIN(ram) 
                  From tab2 ) )
SELECT distinct maker
From product,tab3 
where product.model = tab3.model
INTERSECT
SELECT distinct maker
From product,tab3
where type='printer'
