--Select
--ANSII
Select ContactName Adi,CompanyName Sirketadi,City Sehir from Customers

Select * from Customers where City ='Berlin'

--case insensitive
select * from Products where CategoryID=1 or CategoryID=3

select * from Products where CategoryID=1 and UnitPrice>=10 --filtre

select * from Products order by UnitPrice asc  --sıralama fiyata göre ascending=artan descending=azalan

select * from Products where CategoryID=1 order by UnitPrice asc 

select count (*) from Products

select * from Products group by CategoryID -- böyle olmaz

select categoryId, count(*) from products group by CategoryID --Hangi kategoride ne kadar urun oldugunu gösterır

select categoryId, count(*) from products where UnitPrice>20
group by CategoryID having count(*)<10

--select * from Products inner join Categories -- hem kategorılerın hemde urunlerın bır araya getırılmesı

select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName 
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID where Products.UnitPrice>10

--DTO Data Transformation object

select 0 from Products left join [Order Details] od on p.ProductID=od.ProductID

select * from Customers c left join Orders o on c.CustomerID=o.CustomerID
where o.CutomerID is NULL





