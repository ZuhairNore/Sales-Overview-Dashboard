---- Cleansed DIM_Customers Table --
SELECT TOP (1000) 
      c.CustomerKey as [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName as [First Name]
      --,[MiddleName]
      ,c.LastName as [Last Name]
	  ,c.[FirstName] + '' + c.LastName as [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
	  ,case c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.DateFirstPurchase
      ,c.CommuteDistance
	  ,g.city as [Customer City]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] c
  LEFT JOIN dbo.dimgeography g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey