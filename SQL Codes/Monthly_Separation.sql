/******Jan Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM [tshiamo].[dbo].[Jan$]
WHERE [ID/Passport Number] IS NOT NULL AND [Full Names] IS NOT NULL AND [Surname] IS NOT NULL;

/******Feb Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM [tshiamo].[dbo].[Feb$]
WHERE [ID/Passport Number] IS NOT NULL AND [Full Names] IS NOT NULL AND [Surname] IS NOT NULL;

/******Mar Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM [tshiamo].[dbo].[Mar$]
WHERE [ID/Passport Number] IS NOT NULL AND [Full Names] IS NOT NULL AND [Surname] IS NOT NULL;

/******Only SA ID Number Mar Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM [tshiamo].[dbo].[Mar$]
WHERE [ID/Passport Number] IS NOT NULL AND [ID/Passport Number] NOT LIKE '%[^0-9]%' AND [Full Names] IS NOT NULL AND [Surname] IS NOT NULL;
--WHERE [ID/Passport Number] IS NOT NULL AND [ID/Passport Number] LIKE '%[^0-9]%' AND [Full Names] IS NOT NULL AND [Surname] IS NOT NULL;
