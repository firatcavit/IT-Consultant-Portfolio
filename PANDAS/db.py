import pyodbc  #pyodbc is a library, which provides connection between db and python
import pandas as pd # pandas is used for data analysis

conn = pyodbc.connect( 
    'DRIVER={ODBC Driver 17 for SQL Server};' # our driver
    'SERVER=localhost\SQLEXPRESS;' # connect to server
    'DATABASE=AdventureWorksDW2022;' # to connect our db
    'Trusted_Connection=yes;' # Windows Authentication
) # connect parameter is used to connect

# Örnek sorgu
sorgu = "select OrderMonth,count(*) as Total from DimReseller where OrderMonth is not null group by OrderMonth order by OrderMonth asc"
df = pd.read_sql(sorgu, conn) # conn will connect to sql to read our query 
print(df)