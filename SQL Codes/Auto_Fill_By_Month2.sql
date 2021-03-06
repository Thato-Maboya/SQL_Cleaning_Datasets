/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [Ord]
      ,[Payment Of]
      ,[Month]
      ,[Payee]
      ,[Bank AccountNumber  ]
      ,[Bank / Branch]
      ,[Payroll Amount]
      ,[Transferred Amount]
      ,[Action Date]
      ,[Status]
  FROM [kagiso].[dbo].[Sheet1$]
  ORDER By [Ord];

 -- AutoFIll Code --
 DECLARE @Counter INT , @MaxId INT ,@NumValue NVARCHAR(100) = 1,@FirstValue NVARCHAR(100) = ''  ,  @SecondValue NVARCHAR(100) = ''
 SELECT @Counter = min(Ord) , @MaxId = max(Ord) 
 FROM [kagiso].[dbo].[Sheet1$]

WHILE(@Counter IS NOT NULL
      AND @Counter <= @MaxId)
BEGIN
   SELECT @FirstValue = [Payment Of]
   FROM [kagiso].[dbo].[Sheet1$]
   WHERE Ord = @Counter
   
   IF @FirstValue IS NOT NULL 
		 SET @FirstValue = @FirstValue
   IF @FirstValue IS NULL 
		 SET @FirstValue = @SecondValue


	SET @SecondValue = @FirstValue
	SET @NumValue = @Counter
	PRINT @NumValue + ' ' + @FirstValue 
	--IF @NetPay != ''
	--BEGIN
		--PRINT CONVERT(VARCHAR,@Counter) + '. Employee code is ' + @EmployeeCode  + ' Name: ' + @EmployeeName + ' IDNumber: '+ @IDNumber + ' NET PAY: ' + @NetPay + ' Earnings : ' + @Earnings + ' Deductions : ' + @Deductions
		--PRINT @EmployeeCode + ';' + @EmployeeName + ';' + @JobTitle + ';' + @DateEngaged + ';' + @IDNumber + ';' + @PayPeriod + ';' + @AccountNumber + ';' +  @Earnings + ';' +  @Deductions + ';' + @Netpay
		--PRINT @IDNumber + ';' + @FirstName 

		--SET @FirstName = ''
	--END
	--IF @Deductions != '' 
	--BEGIN
	--	SET @NetPay = ''
	--	SET @Deductions = ''
	--END
	-- UPDATING F5 AS Empl Name --

	UPDATE [kagiso].[dbo].[Sheet1$] SET [Month] = @FirstValue WHERE Ord = @Counter
	SET @Counter  = @Counter  + 1        
END