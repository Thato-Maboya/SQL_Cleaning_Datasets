/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [IDNUMBER],Count([IDNUMBER]) AS ID_Tot 
  FROM [master].[dbo].['Remuneration Recalculation$']
  Group by [IDNUMBER]
  ORDER by ID_Tot