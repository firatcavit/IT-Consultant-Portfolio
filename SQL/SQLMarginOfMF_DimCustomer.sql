-- this query analyze Margin between Men and Women Customers.(English)	
-- Bu sorgu Erkek ve Bayan musteri toplamindaki farki gosterir.(Turecki)	
-- to zapytanie analyzuje marżę między klientami męzczynami i kobietami ( Polski)

Select
	(select
		count(*) as Men
		from DimCustomer
	where Gender ='M') -
	(select
		count(*) as Women
		from DimCustomer
	where Gender='F') as 'MarginOfMF';
	