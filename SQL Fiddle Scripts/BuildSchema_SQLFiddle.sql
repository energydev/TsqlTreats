--Create tables and insert data (SQL Fiddle friendy)
--If running in SQL Fiddle, be sure SQL Server is selected for the database
--NOTE: There is less data inserted with this SQL Fiddle friendly script 
--due to 8,000 character build schema limit

CREATE TABLE [dbo].[Store](
	[StoreID] [int] IDENTITY(1,1) NOT NULL,
	[StoreNumber] [varchar](10) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Region] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


	CREATE TABLE [dbo].[MonthlySales](
		[MonthlySalesID] [int] IDENTITY(1,1) NOT NULL,
		[StoreID] [int] NOT NULL,
		[SaleYear] [int] NOT NULL,
		[SaleMonth] [int] NOT NULL,
		[TotalSales] [money] NOT NULL,
	 CONSTRAINT [PK_MonthlySales] PRIMARY KEY CLUSTERED 
	(
		[MonthlySalesID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[MonthlySales]  WITH CHECK ADD  CONSTRAINT [FK_MonthlySales_Store] FOREIGN KEY([StoreID])
	REFERENCES [dbo].[Store] ([StoreID])

	ALTER TABLE [dbo].[MonthlySales] CHECK CONSTRAINT [FK_MonthlySales_Store]

GO

SET IDENTITY_INSERT dbo.Store ON

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (1, '00001', 'Norman', 'OK', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (2, '00002', 'Oklahoma City', 'OK', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (3, '00003', 'Oklahoma City', 'OK', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (4, '00004', 'Tulsa', 'OK', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (5, '00005', 'Weatherford', 'OK', 'South')
		   
SET IDENTITY_INSERT dbo.Store OFF

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2017, 1, 17000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2017, 2, 23000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2017, 3, 11000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2017, 4, 25000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2017, 5, 27000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2017, 6, 30000000.01)


INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2017, 1, 17500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2017, 2, 23500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2017, 3, 11500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2017, 4, 25500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2017, 5, 27500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2017, 6, 35005000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2017, 1, 17500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2017, 2, 2500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2017, 3, 1500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2017, 4, 22500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2017, 5, 33500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2017, 6, 35003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (4, 2017, 6, 15003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (5, 2017, 6, 12003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2016, 1, 18000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2016, 2, 22000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2016, 3, 12000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2016, 4, 24000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2016, 5, 11000000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (1, 2016, 6, 23000000.01)


INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2016, 1, 27500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2016, 2, 22500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2016, 3, 12500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2016, 4, 22500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2016, 5, 23500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (2, 2016, 6, 25005000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2016, 1, 27500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2016, 2, 3500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2016, 3, 500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2016, 4, 12500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2016, 5, 23500500.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (3, 2016, 6, 25003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (4, 2016, 6, 5003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (5, 2016, 6, 2003000.01)






