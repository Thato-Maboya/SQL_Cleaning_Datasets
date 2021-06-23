declare @testText varchar(200)
select @testText = '2 OVERTIME   841.63 202 UIF        20.73 405 SDL        20.73' 
select substring(ltrim(replace(@testText,'2 OVERTIME','')),0,charindex('.',ltrim(replace(@testText,'2 OVERTIME',''))) + 3)

KILL 
 1231.65 201 PAYE       65.25 402 UIF         20.73