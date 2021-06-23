--December Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'December' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'December' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;

--November Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'November' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'November' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;

--October Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'October' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'October' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;

--September Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'September' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'September' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;

--August Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'August' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'August' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;

--July Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'July' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'July' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;

--June Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'June' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'June' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;

--May Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'May' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'May' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;

--April Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'April' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'April' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;

--March Payment--
SELECT [Ord] 
	  ,[Payment Of] 
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ] AS BankAcc
      ,[Bank / Branch] AS BankName
      ,[Payroll Amount] AS PayrollAmount
      ,[Transferred Amount] AS TransfAmount
      ,[Action Date] AS ActionDate
      ,[Status]
FROM [kagiso].[dbo].[Data$]
WHERE [Month] = 'March' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL
UNION ALL
SELECT *
FROM [kagiso].[dbo].[Sheet1$]
WHERE [Month] = 'March' AND [Payment Of] IS NULL AND [Payee] IS NOT NULL;
