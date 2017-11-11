------------------------------------------------------------------
--THIS SCRIPT CREATES TABLES Store and MonthlySales
------------------------------------------------------------------

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'MonthlySales')
BEGIN

PRINT 'Creating Table Store'

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

END
ELSE
BEGIN
	PRINT 'Table Store Already Exists'
END 

GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'MonthlySales')
BEGIN
	PRINT 'Creating Table MonthlySales'

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

END
ELSE
BEGIN
	PRINT 'Table Monthly Sales already Exists'
END 

GO




