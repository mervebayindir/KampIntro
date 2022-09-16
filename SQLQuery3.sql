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

select *from Products

Select ProductId as Id, ProductName as Name from Products

select p.ProductName, p.UnitsInStock * p.UnitPrice as Total from Products p

select p.ProductName + ' - ' + p.QuantityPerUnit from Products p

select 'Merve Bayındır' as Ogrenci

select 9*8 as Sonuc

select p.ProductName from Products as p where UnitsInStock=0 and UnitsOnOrder>0

select * from Products where UnitsInStock=0 or UnitsOnOrder=0

select * from Products where not ProductName='Perty Pasties' and UnitsInStock=0

select * from Products order by UnitPrice asc, ProductName desc

select * from Products where ProductName like '%ch%'

select * from Products where UnitPrice between 10 and 46 order by UnitPrice

select * from Products where CategoryID in(1,2)

select COUNT(*) as [Ürün Sayısı] from Products

select COUNT(ProductName) from Products

select COUNT(Region) from Customers

select MIN(UnitPrice) from Products

select MAX(UnitPrice) from Products

select AVG(UnitPrice) from Products

select SUM(UnitPrice * Quantity) as Kazanç from [Order Details]

select RAND()--0 ve 1 arasında rastgele sayı üretir

select LEFT('Merve Bayındır',3)--Soldan ilk 3 karakter
select LEFT(ProductName,3) from Products

select RIGHT('Merve Bayındır',3)--Sağdan son 3 karakter
select RIGHT(ProductName,3) from Products

select LEN('Merve Bayındır') --Karakter sayısını verır
select ProductName, LEN(ProductName) as Karakter from Products

select LOWER('Merve Bayındır')--Küçük harfe çevirir
select UPPER('Merve Bayındır')--Büyük harfe çevirir

Select TRIM('      Merve Bayındır        ')--Sağdaki ve soldaki boşlukları atar
select TRIM(ProductName) from Products where TRIM(ProductName) = 'Chai'

select * from Products where LEN(ProductName) >10
select LTRIM('           Merve Bayınıdır')--Soldaki boşlukları atar
select RTRIM('Merve Bayındır       ')--Sağdaki boşlukları atar

select REVERSE('Merve Bayınıdr')-- Tersten Yazar

Select CHARINDEX('n','Merve Bayındır',3)--Metin içinde kaçıncı sırada verdiğimiz karakter onu verır 3. harften başlar

Select ProductName from Products where CHARINDEX('anton',ProductName,1)>0

select REPLACE('Merve Bayındır',' ','_')--Metinde değişiklik yapmak için kullanılır boşluğu alt - ile değiştir
select REPLACE(ProductName,' ','_') from Products

select SUBSTRING('Merve Bayındır',2,5)-- Metinden belirtilen sayıdan itibaren belirtilen karakterleri al komutu

select ASCII('B')
Select CHAR(65)

Select distinct Country,City from Customers order by Country

select Country,City,COUNT(*) from Customers where City <> 'Nantes'
--select left('Merve Bayındır',3) as IlkHarfler

--select left(ProductName,3) from Products

--select RIGHT('Merve Bayındır',3) as SonHarfler

--select RIGHT(ProductName,3) from Products

--select LEN('Merve Bayındır')

--select ProductName, len(ProductName) as Karakter from Products

--select Lower('MerVe BaYındır')  --küçük harfe çevirir hepsini

--select upper('Merve Bayındır')  -- büyük harfe çevirir hepsini

--select trim('    Merve Bayındır   ') --- Fazla boşluk bırakmamasını sağlar

--select * from Products where trim(ProductName) = 'Chai'

--select trim(ProductName) from Products where trim(ProductName) = 'Chai'

--select * from Products where LEN(ProductName)>10 -- 10 karakterden buyuk olanlar gelır

--select ltrim('   Merve Bayındır   ') -- soldaki boşluk atılır

--select rtrim('    Merve Bayındır   ') -- sağdaki boşluk atılır

--select REVERSE('Merve Bayındır') --Tersden yazar

--select CHARINDEX('n','Merve Bayındır',1)

--select ProductName from Products where CHARINDEX(' ',ProductName,1) >0 -- bir metin içerisinde mesela boşluk karakteri olanları bulur

--select REPLACE('Merve Bayındır',' ','_') --bu metin içinde basluk karakterını bul ve alt çizgi ile değiştir.

--select replace(ProductName,'  ','_') as degistirilen from Products

--select SUBSTRING('Merve Bayındır',1,5) -- 1. karakterden itibaren parçalayarak 5 harfi alır verinin

--select SUBSTRING(ProductName,1,5) as alınan from Products

--select ascii('A') -- ascideki matematıksel karsılığı

--select char(65) -- ascideki matematıksel terimin karsılıgını verır.

--select distinct(Country) from Customers --distinct farklı olanı getır.

--select distinct(Country) from Customers order by Country

--select distinct Country,City from Customers order by Country

--select Country,Count(*) as Toplam from Customers group by Country -- her ülkede kac müşteri var kod bloğu

--select Country,City,Count(*) as Toplam from Customers group by Country,City -- her ülke ve şehirden kaç müşteri var kod bloğu

--select Country,City,Count(*) as Adet from Customers group by Country,City having Count(*)>1 -- her ülke ve şehirden 1 den fazla olan sayılarını getır

--select Country,City,Count(*) as Adet from Customers group by Country,City having Count(*)>1 order by Country

--select Country,City,Count(*) as Adet from Customers where City <> 'Nantes' group by Country,City having Count(*)>1 order by Country

--select Country,City from Customers where City <> 'Nantes' group by Country,City having Count(*)>1 order by Country

select * from Products inner join Categories on Products.CategoryID=Categories.CategoryID

select * from Products inner join Categories on Products.CategoryID=Categories.CategoryID where Products.UnitPrice>20

select * from Products as p inner join Categories on Products.CategoryID=Categories.CategoryID where Products.UnitPrice>20 order by Categories.CategoryID

--select * from Products as p inner join [Order Details] as od on p.ProductId=od.ProductId inner join Orders as o on o.OrderId=od.OrderId

--select p.ProductName,o.OrderDate,od.Quantity * od.UnitPrice as Toplam from Products as p inner join 
--[Order Details] as od on p.ProductID=od.ProductID 
--inner join Orders as o on o.OrderID=od.OrderID order by p.ProductName,o.OrderDate

--select * from Products as p left join [Order Details] as od on p.ProductID=od.ProductID where od.ProductID is null --hiç satamadığımız ürün varmı

--select * from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null -- hiç sipariş oluşturulmayan müşteri varmı

--left join de select * from Customers  olan ama orders da olan veya olmayanlarıda getir anlamı katar.

--right join de select * from Customers  olan veya olmayan ama orders da olanı getir anlamı katar.

--select c.ContactName, c.CustomerID from Orders o right join Customers c on o.CustomerID=c.CustomerID where o.CustomerID is null

--select * from Customers c full join Orders o on o.CustomerID=c.CustomerID --küme kesişim noktaları dahil butun kumelerın elemanlarını da getırır.

select p.ProductName,count(od.Quantity) as Topla from Products p inner join [Order Details] od on p.ProductID=od.ProductID group by p.ProductName --hangi üründen kaç tane satmış

select p.ProductName,count(od.Quantity) as Topla from Products p inner join [Order Details] od on p.ProductID=od.ProductID where od.Discount>0 group by p.ProductName

select c.CategoryName,count(c.CategoryName) as Toplam from Products p inner join Categories c on p.CategoryID=c.CategoryID inner join [Order Details] od on p.ProductID=od.ProductID group by c.CategoryName -- hangi kategoriden ka. tane satmış

select * from Employees e inner join Orders o on e.EmployeeID=o.EmployeeID where o.EmployeeID is null --hiç satış yapamayan personel

select FirsName, FirstName + ' ' + LastName AdSoyad from Employees where ReportsTo=2 -- deneme
select e2.FirstName + ' ' + e2.LastName AdSoyad, e1.LastName + ' ' + e1.LastName Üstü from Employees e1 right join Employees e2 on e1.EmployeeID = e2.ReportsTo --elemanların üstünün isimlerini yazma

insert into Categories (CategoryName,Description) values('Test Category','Test Category Description')

insert into [Order Details] values(10248,12,12,10,0)

update Categories set CategoryName='' where şart

update Categories set CategoryName='Test Category 2' where  CategoryID=9 --CategoryID>=9 olabilir

update Categories set CategoryName='Test Category 3',Description='Test Category 3 Description' where CategoryID>=9

update Territories set TerritoryDescription='İç Anadolu'
delete from Categories where CategoryID >=9

select *from CustomersWork

insert into CustomersWork (CustomerId, CompanyName, ContactName) select CustomerId, CompanyName,ContactName from Customers

delete from CustomersWork

insert into CustomersWork (CustomerId, CompanyName, ContactName) select CustomerId, CompanyName, ContactName from Customers 
where ContactName like '%en%'

update Customers set CompanyName = CustomersWork.CompanyName  from Customers inner join 
CustomersWork on Customers.CustomerID = CustomersWork.CustomerID  where CustomersWork.CompanyName like '%Test%'

delete Customers from Customers c inner join CustomersWork cw on c.CustomerID = cw.CustomerID where Cw.CompanyName like '%Test%'






