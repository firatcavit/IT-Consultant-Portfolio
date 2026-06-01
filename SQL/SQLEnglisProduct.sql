SELECT
   EnglishProductName,
   (ListPrice-DealerPrice) as 'profit',
   ((ListPrice-DealerPrice) * 100 / ListPrice) as 'percentage'
FROM DimProduct
where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Men%'




Select
 sum(ListPrice - DealerPrice) as WomenSportTotalProfit
From DimProduct
where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Women%';


Select
 sum(ListPrice - DealerPrice) as menSportTotalProfit
From DimProduct
where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Men%'



Select
	EnglishProductName,
	ListPrice,
	DealerPrice,
	(ListPrice-DealerPrice) as 'profit'
From DimProduct
where DealerPrice is not null and ListPrice is not null
Group by EnglishProductName,ListPrice,DealerPrice;



Select
	(Select sum(ListPrice -DealerPrice)
	 From DimProduct
	 where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Men%')-
	 (Select sum(ListPrice-DealerPrice)
	 From DimProduct
	 where DealerPrice is not null and ListPrice is not null and EnglishProductName like 'Women%') as Fark;