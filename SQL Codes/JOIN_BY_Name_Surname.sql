/****** Script for SelectTopNRows command from SSMS  ******/
SELECT A.[ID NUMBER]
      ,A.[FIRST NAME]
      ,A.[LAST NAME]
      ,A.[EMPLOYEE NUMBER]
	  ,B.[IDNUMBER]
	  ,B.[EE NO]
FROM [master].[dbo].['April CSV$'] AS A
LEFT JOIN [master].[dbo].['Remuneration Recalculation$'] AS B ON A.[FIRST NAME]=B.[Name] AND A.[LAST NAME]=B.[Surname]