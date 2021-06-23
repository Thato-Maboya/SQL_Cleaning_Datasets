 
DECLARE @Counter INT , @MaxId INT, 
        @FirstName NVARCHAR(100) = '',  @IDNumber NVARCHAR(100) = '',  @LastName NVARCHAR(100) = '',  @NormalPay NVARCHAR(100) = '',  @OverTime NVARCHAR(100) = '', @JobTitle NVARCHAR(100) = '', @DateEngaged nvarchar(100) = '', 
		@NetPay NVARCHAR(100) = '', @AccountNumber nvarchar(100) = '', @PayPeriod nvarchar(100) = '',
		@FirstValue NVARCHAR(100) = '',  @SecondValue NVARCHAR(100) = ''
SELECT @Counter = min(ID) , @MaxId = max(ID) 
FROM [dbo].[UIF_TBL] 

WHILE(@Counter IS NOT NULL
      AND @Counter <= @MaxId)
BEGIN
   SELECT @FirstValue = [Data]
   FROM [dbo].[UIF_TBL] WHERE Id = @Counter
   
   IF @SecondValue = 'NAME' 
		 SET @LastName = @FirstValue
   IF @SecondValue = 'ID Number' 
		 SET @IDNumber = @FirstValue
	IF @SecondValue = 'FIRST NAME'  
		 SET @FirstName = @FirstValue
   IF @SecondValue = 'Pay Date'
		 SET @PayPeriod = @FirstValue
   IF @SecondValue = '45'
		 SET @NormalPay = @FirstValue
 	IF @SecondValue = 'OVERTIME'
		 SET @OverTime = @FirstValue
	IF @SecondValue = 'NETT PAY'
		 SET @NetPay = @FirstValue
    

	SET @SecondValue = @FirstValue

	IF @NetPay != ''
	BEGIN
		--PRINT CONVERT(VARCHAR,@Counter) + '. Employee code is ' + @EmployeeCode  + ' Name: ' + @EmployeeName + ' IDNumber: '+ @IDNumber + ' NET PAY: ' + @NetPay + ' Earnings : ' + @Earnings + ' Deductions : ' + @Deductions
		--PRINT @EmployeeCode + ';' + @EmployeeName + ';' + @JobTitle + ';' + @DateEngaged + ';' + @IDNumber + ';' + @PayPeriod + ';' + @AccountNumber + ';' +  @Earnings + ';' +  @Deductions + ';' + @Netpay
		PRINT @IDNumber + ';' + @FirstName + ';'+ @LastName + ';' + @PayPeriod + ';' + @NormalPay + ';' + @OverTime + ';' + @NetPay 

		SET @IDNumber  = ''
		SET @FirstName = ''
		SET @LastName = '' 
		SET @IDNumber = '' 
		SET @PayPeriod = ''
		SET @NormalPay = ''
		SET @OverTime = ''
		SET @NetPay = ''
	END
	--IF @Deductions != '' 
	--BEGIN
	--	SET @NetPay = ''
	--	SET @Deductions = ''
	--END
	SET @Counter  = @Counter  + 1        
END


