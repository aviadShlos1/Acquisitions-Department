select max(quantity)as quantity_max
from(select eqid, quantity
     from HGOREN.EQUIPMENT natural join my_order
     where equipmentID_ = eqid
     and  equipmentID_ NOT IN (SELECT EQID
                             FROM LOGISTIC)
     AND  equipmentID_ NOT IN (SELECT EQID
                             FROM TECHNOLOGY)
      group by eqid ,quantity)T
