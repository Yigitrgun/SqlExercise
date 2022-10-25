--Select
--ANSII

  Select CompanyName Sirketadi,ContactName Adi,City Sehir from Customers

  Select * from Customers where City = 'Berlin'


--Case insensitive

   Select * from Products where CategoryID=1 or CategoryID=3 

   Select * from Products where CategoryID=1 or UnitPrice>=10

   Select * from Products order by ProductName

   Select * from Products order by CategoryID,ProductName

   Select * from Products order by UnitPrice asc-ascendig -- kucukten buyuge s�ralama / buyukten kucuge desc--descendig

   Select  * from Products order by CategoryID


   Select * from Products order by UnitPrice desc

   Select* from Products where CategoryID=1 order by UnitPrice desc

   Select count (*) from Products (B�t�n product tablosunda ka� data var say demek :)) 

   Select count (*) from Products where CategoryID=2

   select  CategoryID, count(*) from Products group by CategoryID

--�ALI�MALAR--

   select * from Customers where city= 'London' 
   Select * from Products where CategoryID=2 or CategoryID=3 
   select * from Products order by UnitPrice desc
   select * from Products order by UnitPrice asc
   Select* from Products where CategoryID=5 order by UnitPrice asc
   Select* from Products where CategoryID=5 order by UnitPrice desc
   Select  count (*) from Products where CategoryID=5
   select  CategoryID, count(*) from Products group by CategoryID
   Select count (*) adet from Products
   select CategoryID,count(*) from Products group by CategoryID -- buradaki group by isleminde categoryID vermistik ve selectin yanindada aynisini verdik yani ben group by in yaninda ne verirsem selectin yaninda da onu vermem gerekiyor.

   -- yani su demek datalarin icine bak bana categoryid icinde tekrar etmiycek sekilde bana ver demek.
   --Ben bir group by yaptigim zaman aslinda her bir grup icin arkaplanda bir tablo olusturuluyor gibi dusunebiliriz
   -- Bu yuzden categoryId yaninda count kullanabilirim
   --�u demek oluyor categoryid 1 de 12 urun demek oluyor\yani bana gruplama yapiyor.{!!kisaca her bir category icin bir grubum olmus oluyor!!}
   select CategoryID,count(*) from Products group by CategoryID having count (*)<10
   --Bu su demek ornegin yonetim benden icerisinde 10 taneden az olan urun kategorilerini istedi.Ve o kategorilere yeni urun ekleyerek, o eksik kaldigi yeri sistemimde gelistirmek istiyorum dedi .
   select CategoryID,count(*) from Products where UnitPrice>20 group by CategoryID having count (*)<10
   -- �u demek oluyor \ilk once where calisir. birim fiyati 20 den fazla olan urunleri categoriid gore grupla,onlardan da sayisi her grupta 10 dan az olanlari bana goster demek.

	
	select Products.ProductID,Products.ProductName, Products.UnitPrice,Categories.CategoryName
	from Products inner join Categories
	on Products.CategoryID = Categories.CategoryID
	where Products.UnitPrice>10
	-- Bu fiyat� 10 dan buyuk olan urunler� kategor� �sm�yle beraber getirecek sorgunun ta kend�s�d�r.

	--Dto Data tranformat�on object

	--�nner jo�n sadece eslesen datalar�(kay�tlar�) get�r�r/ eslenmeyen data varsa get�rmez

	select * from Products inner join [Order Details]
	on Products.ProductID = [Order Details].ProductID

	select * from Products left join [Order Details]
	on Products.ProductID = [Order Details].ProductID
	--bu left jo�n su demek solda olupta sa�da olmayanlar� getir demek.
	-- yan� urunler tablosunda olup, h�� sat�� olmayanlar� bana get�r demek.

	Select * from Customers c inner join Orders o
	on c.CustomerID = o.CustomerID

	Select * from Customers c inner join Orders o
	on c.CustomerID = o.CustomerID
	Where o.CustomerID �S null

	Select * from Customers c right join Orders o
	on c.CustomerID = o.CustomerID
	Where o.CustomerID �S null





