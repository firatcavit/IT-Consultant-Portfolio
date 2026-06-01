
/*
ENGLISH:
This query analyzes 'Road' products bought  by companies between June and December. 
it counts number of order for Road products and this result are grouped by ResellerName,OrderMonth,Phone and ProductLine. 
Addiationaly Client's Phones are included that later Client Service can contact with clients if they need ( Angleski)
POLSKI:
To zapytanie analizuje produkty 'Road' zakupione przez firmy między czerwcem a grudniem.
TURECKI:
Bu Sorgu, Haziran ve Aralik aylari arasinda firmalar tarafindan satin alinan 'Road' urunlerini gostermektedir. ( Turecki)*/
select
	ResellerName,
	OrderMonth,
	Phone,
	ProductLine,
	count(*) as TotalOrder
from DimReseller
where OrderMonth between 6 and 12 and ProductLine like 'Road'
Group by ResellerName,OrderMonth,Phone,ProductLine
order by OrderMonth desc,TotalOrder desc;