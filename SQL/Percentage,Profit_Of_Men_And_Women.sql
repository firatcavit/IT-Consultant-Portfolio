/*
ENGLISH: Shows profit and profit margin for Men's products.
TURKISH: Erkek ürünlerinin kar ve kar marjını gösterir.
POLSKI: Pokazuje zysk i marżę zysku dla produktów męskich.
*/

SELECT
   EnglishProductName,
   (ListPrice-DealerPrice) as 'profit',
   ((ListPrice-DealerPrice) * 100 / ListPrice) as 'percentage'
FROM DimProduct
where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Men%'


/*
ENGLISH: Total profit of all Women's products.
TURKISH: Tüm Bayan ürünlerinin toplam karı.
POLSKI: Całkowity zysk wszystkich produktów damskich.
*/

Select
 sum(ListPrice - DealerPrice) as WomenSportTotalProfit
From DimProduct
where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Women%';


/*
ENGLISH: Total profit of all Men's products.
TURKISH: Tüm Erkek ürünlerinin toplam karı.
POLSKI: Całkowity zysk wszystkich produktów męskich.
*/

Select
 sum(ListPrice - DealerPrice) as menSportTotalProfit
From DimProduct
where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Men%'

/*
ENGLISH: Lists product name, list price, dealer price, and calculated profit for all products.
TURKISH: Tüm ürünler için ürün adı, liste fiyatı, bayi fiyatı ve hesaplanan karı listeler.
POLSKI: Wyświetla nazwę produktu, cenę katalogową, cenę dealera oraz obliczony zysk dla wszystkich produktów.
*/

Select
	EnglishProductName,
	ListPrice,
	DealerPrice,
	(ListPrice-DealerPrice) as 'profit'
From DimProduct
where DealerPrice is not null and ListPrice is not null
Group by EnglishProductName,ListPrice,DealerPrice;

/*
ENGLISH: Difference between total profit of Men's and Women's products.
TURKISH: Erkek ve Bayan ürünlerinin toplam karı arasındaki fark.
*/

Select
	(Select sum(ListPrice -DealerPrice)
	 From DimProduct
	 where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Men%')-
	 (Select sum(ListPrice-DealerPrice)
	 From DimProduct
	 where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Women%') as Fark;