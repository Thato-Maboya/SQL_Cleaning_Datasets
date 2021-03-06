-- Start of April Common Table Expression (CTE) --
WITH CTE([ID NUMBER]
		,[FIRST NAME]
		,[LAST NAME]
		,[EMPLOYEE NUMBER]
		,[IDNUMBER]
		,[EE NO]
		,[Order]
		,DuplicateOrder)
AS (SELECT [ID NUMBER]
		  ,[FIRST NAME]
		  ,[LAST NAME]
		  ,[EMPLOYEE NUMBER]
		  ,[IDNUMBER]
		  ,[EE NO]
		  ,[Order]
           ,ROW_NUMBER() OVER(PARTITION BY [Order]
										  
							ORDER BY [Order]
							) AS DuplicateOrder
    FROM [master].[dbo].[April_CSV])
SELECT *
FROM CTE
WHERE DuplicateOrder=1;
-- End of April Common Table Expression (CTE) --

-- Start of August Common Table Expression (CTE) --
WITH CTE([ID Number]
		,[Name]
		,[Surname]
		,[IDNUMBER]
		,[EE NO]
		,[Order]
		,DuplicateOrder)
AS (SELECT [ID Number]
		  ,[Name]
		  ,[Surname]
		  ,[IDNUMBER]
		  ,[EE NO]
		  ,[Order]
           ,ROW_NUMBER() OVER(PARTITION BY [Order]
										  
							ORDER BY [Order]
							) AS DuplicateOrder
    FROM [master].[dbo].[August_CSV])
SELECT *
FROM CTE
WHERE DuplicateOrder=1;
-- End of August Common Table Expression (CTE) --

-- Start of September Common Table Expression (CTE) --
WITH CTE([ID NUMBER]
		,[Name]
		,[Surname]
		,[IDNUMBER]
		,[EE NO]
		,[Order]
		,DuplicateOrder)
AS (SELECT [ID NUMBER]
		  ,[Name]
		  ,[Surname]
		  ,[IDNUMBER]
		  ,[EE NO]
		  ,[Order]
           ,ROW_NUMBER() OVER(PARTITION BY [Order]
										  
							ORDER BY [Order]
							) AS DuplicateOrder
    FROM [master].[dbo].[September_CSV])
SELECT *
FROM CTE
WHERE DuplicateOrder=1;
-- End of September Common Table Expression (CTE) --
