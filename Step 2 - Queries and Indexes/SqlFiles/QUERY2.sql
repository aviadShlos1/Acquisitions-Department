select distinct su.sid,su.sname,su.scity
from supplier su NATURAL JOIN MY_ORDER mo natural join Employee emp 
where oid not in (select oid from my_order where quantity<5) 
and su.sname not in (select sname from supply where length(sname)>14)
and emp.efirst in (select efirst from Employee where length(efirst)>4)
GROUP BY su.sid,su.sname,su.scity,mo.quantity
having sum(quantity)>20 
