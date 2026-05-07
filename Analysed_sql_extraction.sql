select * 
from Sales
select *
from inventory
select *
from Products

select max(DATEPART(year,date)),
min(datepart(year,date))
from Sales

select YEAR(s.date)as year,
month(s.date)as month,
s.productid,
p.productname,
sum(s.Quantity)totalsales
from sales s 
left join products p
on s.ProductId = p.ProductId
group by YEAR(s.date),month(s.date),s.ProductId,p.Productname
order by YEAR(s.date),month(s.date)
