DECLARE @Counter INT , @MaxId INT,@FirstValue NVARCHAR(100) = ''  ,  @SecondValue NVARCHAR(100) = ''
 SELECT @Counter = min(Ord) , @MaxId = max(Ord) 
 FROM [lebo].[dbo].[Sheet2$]

WHILE(@Counter IS NOT NULL
      AND @Counter <= @MaxId)
BEGIN
   SELECT @FirstValue = [Empl]
   FROM [lebo].[dbo].[Sheet2$] WHERE Ord = @Counter
   
   IF @FirstValue != '' 
		 SET @FirstValue = @FirstValue
   IF @FirstValue = '' 
		 SET @FirstValue = @FirstValue

	BEGIN
		SET @SecondValue = @FirstValue
		PRINT @IDNumber + ';' + @FirstName 
	END
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
	SET @Counter  = @Counter  + 1        
END
