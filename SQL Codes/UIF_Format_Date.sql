/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [Serv_Prov]
      ,[UIFREFERENCENUMBER]
      ,[TRADENAME]
      ,[IDNUMBER]
      ,[FIRSTNAME]
      ,[LASTNAME]
      ,FORMAT([EMPLOYMENTSTARTDATE],'dd/MM/yyyy') AS [EMPLOYMENTSTARTDATE]
      ,FORMAT([SHUTDOWN_FROM],'dd/MM/yyyy') AS [SHUTDOWN_FROM]
      ,FORMAT([SHUTDOWN_TILL],'dd/MM/yyyy') AS [SHUTDOWN_TILL]
      ,[EMAIL_ADDRESS]
      ,[CONTACTNUMBER]
      ,[PAYEREFERENCE]
      ,[MONTHLY_SALARY]
      ,[BENEFITTYPEID]
      ,FORMAT([APPLICATIONDATE],'dd/MM/yyyy') AS [APPLICATIONDATE]
      ,FORMAT([APPROVALDATE],'dd/MM/yyyy') AS [APPROVALDATE]
      ,FORMAT([TERMINATIONDATE],'dd/MM/yyyy') AS [TERMINATIONDATE]
      ,[TERMINATIONREASON]
      ,[AVERAGESALARY]
      ,[LEAVE_INCOME]
      ,[ERROR_DESC]
      ,[INDUSTRYSECTOR]
      ,[CREATE_CC]
      ,[HAS_EMPLOYER_DECLARED]
      ,[IRR]
      ,[NMW_MONTHLY]
      ,[NMW_DAILY]
      ,[DAILYINCOME]
      ,[DAILY_BENEFIT_AMOUNT]
      ,[NO_OF_PAY_DAYS]
      ,[PAYMENT_ITR_1]
      ,[PAYMENT_ITR_2]
      ,[PAYMENT_ITR_3]
      ,[PAY_REF_ITR_1]
      ,[PAY_REF_ITR_2]
      ,[PAY_REF_ITR_3]
      ,[BANK_NAME]
      ,[ACCOUNTNUMBER]
      ,[ACCOUNTTYPE]
      ,[BRANCH_CODE]
      ,FORMAT([RECEIPTDATE],'dd/MM/yyyy') AS [RECEIPTDATE]
      ,FORMAT([PAYMENTDATE],'dd/MM/yyyy') AS [PAYMENTDATE]
      ,[BANK_PAY_AMOUNT]
      ,[PAYMENTFAILREASON]
      ,[PROCESSED]
      ,[PAYMENTMEDIUMID]
      ,[SOURCE_INDICATOR]
      ,[PAYMENT_STATUS_ID]
      ,[UPDATEDBY]
      ,FORMAT([UPDATEDDATE],'dd/MM/yyyy') AS [UPDATEDDATE]
      ,[BANKVERSTATUSID]
      ,[ONHOLD]
      ,[TOTAL_PAYMENT_ITR_1]
      ,[OVERPAYMENT_ITR_1]
      ,[v_BANK_PAY_AMOUNT]
      ,[v_PAYMENT_ITR_1]
      ,[v_PAYMENT_ITR_2]
      ,[v_PAYMENT_ITR_3]
  FROM [master].[dbo].[Sheet1$]