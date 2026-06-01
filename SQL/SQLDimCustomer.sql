/*
POLSKI:
to zapytanie wyświetla listę klientów, którzy mają dzieci.
Adresy E-Mail zostały dodane do kampani i promocyjnych.

ENGLISH :
this query lists customers who have at least one child.
Email addresses are included so Customer Service contact them when Promotions for kids are started.
Additionally BirthDate of Customers were included to send a present in their Birthday.

TURKISH:
Bu sorgu çocuğu olan müşterileri listeler (min. 1 çocuk)
Müşteri hizmetleri çocuk promosyonu başladığında email ile iletişime geçebilir.
Ayrıca doğum günlerinde hediye göndermek için doğum tarihleri eklendi.
*/

select
	CustomerKey,
	FirstName,
	LastName,
	BirthDate,
	Gender,
	EmailAddress,
	TotalChildren
from DimCustomer
where TotalChildren >0;

/*
POLSKI:
to zapytanie wyświetla listę klientów, którzy nie mają dzieci.

ENGLISH:
this query lists customer who don't have kids.
EmailAdress and Birthdate were included to get some promotions as the present in their BirthDay.
TURKISH:
Bu sorgu çocuğu olmayan müşterileri listeler.
Müşterilere farklı özel promosyon hediyeleri yapabilmek için Email adresleri ve doğum günleri tarihleri eklenmiştir.
*/
select
	CustomerKey,
	FirstName,
	LastName,
	Birthdate,
	Gender,
	EmailAddress
from DimCustomer
where TotalChildren =0;


/*
ENGLISH:
 This query identifies Female customers without children.
 The result can be used for targeted marketing campaigns.
 POLSKI:
 to zapytanie identyfikuje klientki bez dzieci.
 Turkce:
 Bu sorgu, çocuksuz Bayan müşterileri göstermektedir.
*/

select
	CustomerKey,
	FirstName,
	LastName,
	Birthdate,
	EmailAddress,
	count(*) Over() as TotalWomenWithoutKids
from DimCustomer
where TotalChildren = 0 and Gender like 'F'

/*
ENGLISH:
This query ranks customer by birth date from oldest to youngest.
This result can be used for targeted older customers marketing and campaigns.
TÜRKÇE:
Bu sorgu, doğum yılına göre en yaşlı müşteriden en genç müşteriye doğru sıralama yapılmasını sağlar.
Bu sonuç, hedeflenen yaşlılar için bir kampanya yada satış pazarlaması olarak kullanılabilir.
POLSKİ:
To zapytanie klasfikuje klientów według daty urodzenia od najstarszego do najmłdoszego.
*/

SELECT
    CustomerKey,
    FirstName,
    LastName,
    BirthDate,
    RANK() OVER (ORDER BY BirthDate ASC) AS YasSirasi
FROM DimCustomer
WHERE BirthDate IS NOT NULL;




/*
ENGLISH:
This query to make a ranking number of Customer's kids,from the most least.
This result can be used for targeted promotions for families with kids for back-to-school or Go-To-holiday campaigns
POLSKI:
To zapytanie klasyfikuje klientów według liczby dzieci, od największej do najmniejszej. 
( Może użytkowany dla promocji o zaczeniu szkoły lub wakacji)
TÜRKÇE:
Bu sorgu,çocuklu müşteri sıralamasını göstermektedir.
Bu sonuç okul önceci szeon veya yaz sezonu için kullanılabilir bir kampanya olabilir.
*/

SELECT
    CustomerKey,
	FirstName,
	LastName,
	EmailAddress,
    TotalChildren
FROM DimCustomer
WHERE TotalChildren IS NOT NULL
ORDER BY TotalChildren DESC;


/*
ENGLISH:
This query identifies customers whose children are no longer living at home.
This result can be used for special promotions for them or campaigns and marketing.
POLSKI:
To zapytanie klasfikuje klientów,którego dzieci nie zostają w domu(możliwe +18 lat).
TÜRKÇE:
Bu sorgu, + 18 yaş üstü çocuklu müşterilerin sıralamasıdır.
*/

SELECT
    CustomerKey,
    FirstName,
    LastName,
    Phone,
    EmailAddress,
    TotalChildren,
    NumberChildrenAtHome,
    CAST(ISNULL(TotalChildren, 0) AS INT) - CAST(ISNULL(NumberChildrenAtHome, 0) AS INT) AS KidsNotAtHome
FROM DimCustomer
WHERE CAST(ISNULL(TotalChildren, 0) AS INT) - CAST(ISNULL(NumberChildrenAtHome, 0) AS INT) > 0
ORDER BY KidsNotAtHome asc;