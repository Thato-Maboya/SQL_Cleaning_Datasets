-- April View --
CREATE VIEW [April_CSV] AS
SELECT A.[ID NUMBER]
      ,A.[FIRST NAME]
      ,A.[LAST NAME]
      ,A.[EMPLOYEE NUMBER]
	  ,B.[IDNUMBER]
	  ,B.[EE NO]
	  ,A.[Order]
FROM [master].[dbo].[April_CSV_Datasets$] AS A
LEFT JOIN [master].[dbo].['Remuneration Recalculation$'] AS B ON A.[FIRST NAME]=B.[Name] AND A.[LAST NAME]=B.[Surname];

-- August View --
CREATE VIEW [August_CSV] AS
SELECT A.[ID Number]
      ,A.[Name]
      ,A.[Surname]
	  ,B.[IDNUMBER]
	  ,B.[EE NO]
	  ,A.[Order]
FROM [master].[dbo].[August$] AS A
LEFT JOIN [master].[dbo].['Remuneration Recalculation$'] AS B ON A.[Name]=B.[Name] AND A.[Surname]=B.[Surname]

-- September View --
CREATE VIEW [September_CSV] AS
SELECT A.[ID NUMBER]
      ,A.[Name]
      ,A.[Surname]
	  ,B.[IDNUMBER]
	  ,B.[EE NO]
	  ,A.[Order]
FROM [master].[dbo].[September$] AS A
LEFT JOIN [master].[dbo].['Remuneration Recalculation$'] AS B ON A.[Name]=B.[Name] AND A.[Surname]=B.[Surname]
