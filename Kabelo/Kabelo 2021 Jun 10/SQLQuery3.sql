/****** Script for SelectTopNRows command from SSMS  ******/

declare @counter int , @maxId int, @personaldetails_text nvarchar(50)
declare @lastname nvarchar(100) ,@Firstname nvarchar(100) = '', @IDNumber nvarchar(100) = '', @Normalpay nvarchar(100) = '', @Overtime nvarchar(100) = '', @Paydate nvarchar(100) = '', @netpay nvarchar(100) = ''


--select * from [dbo].[Ext2]
--where [Data] like 'NAME%'
select @counter = min(ID) , @maxId = max(ID)  from [dbo].[Ext2]

while(@Counter IS NOT NULL
      AND @counter <= @maxId)
begin

	declare @text nvarchar(max)
	declare @netpay_val nvarchar(50)

	select @text = [Data] from [dbo].[Ext2] where Id = @counter
	
	-- allocations

	--if  @text like '%Employee:%'   
	--	set @payslipdate = replace(@text,'Employee:','')

	if  @text like 'NAME%'   
		set @lastname = replace(@text,'NAME ','') 
	if  @text like 'FIRST NAM%' 
	   set @Firstname = replace(@text,'FIRST NAM ','') 
	if  @text like 'ID Number%' 
	   set @IDNumber = replace(@text,'ID Number ','') 
	if  @text like 'Cost Centre Pay Date%' 
	   set @Paydate= replace(@text,'Cost Centre Pay Date','') 
    if  @text like '1 NORMAL P 45%' 
	   set @Normalpay = substring(ltrim(replace(@text,'1 NORMAL P 45','')),0,charindex('.',ltrim(replace(@text,'1 NORMAL P 45',''))) + 3)
    if  @text like '2 OVERTIME%' 
	   set @Overtime = substring(ltrim(replace(@text,'2 OVERTIME','')),0,charindex('.',ltrim(replace(@text,'2 OVERTIME',''))) + 3)
	if @text = 'NETT PAY' 
		set @netpay_val = 'True'
	if @netpay_val != '' AND  @text != 'NETT PAY'
	begin
		set @netpay = @text
		set @netpay_val = ''
	end

	

	if @Overtime !=''
	begin
		print 	
			--trim(@payslipdate) + ';' +
			trim(@IDNumber) + ';' +
			trim(@lastname) + ';' +
			trim(@Firstname) + ';' +
			trim(@Paydate) + ';' +
			trim(@Normalpay) + ';' + 
			trim(@Overtime) + ';' +
			trim(@netpay) 


			set @IDNumber = ''
			set @lastname = ''
			set @Firstname = ''
			set @Paydate = ''
			set @Normalpay  = ''
			set @Overtime  = ''
			set @netpay = ''
	end
	set @Counter  = @Counter  + 1        
end




