/*
ENGLISH:
Calculates net profit per sales order (SalesAmount - ProductStandardCost - TaxAmt).

TURKISH:
Her satış siparişi için net kârı hesaplar (SalesAmount - ProductStandardCost - TaxAmt).

POLSKI:
Oblicza zysk netto na zamówienie (SalesAmount - ProductStandardCost - TaxAmt).
*/

select
	SalesOrderNumber,
	SalesAmount-(ProductStandardCost + TaxAmt) as 'Profit'
from FactResellerSales
where SalesAmount is not null
and ProductStandardCost is not null
order by Profit desc;