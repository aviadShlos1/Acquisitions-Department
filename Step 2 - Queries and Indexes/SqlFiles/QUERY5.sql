select odate,avg(quantity)
from my_order natural join equipment
group by odate
order by avg(quantity) DESC

