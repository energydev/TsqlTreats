------------------------------------------------------------------
--THIS SCRIPT INSERTS DATA INTO VARIOUS TABLES
------------------------------------------------------------------

--select * from dbo.Store
--select * from dbo.MonthlySales

PRINT ''

PRINT 'Inserting Store rows...'

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

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (6, '00006', 'Broken Arrow', 'OK', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (7, '00007', 'Midwest City', 'OK', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (8, '00008', 'Muskogee', 'OK', 'South')
		   

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (9, '00009', 'Houston', 'TX', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (10, '00010', 'San Antonio', 'TX', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (11, '00011', 'Dallas', 'TX', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (12, '00012', 'Austin', 'TX', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (13, '00013', 'Fort Worth', 'OK', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (14, '00014', 'El Paso', 'TX', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (15, '00015', 'Arlington', 'TX', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (16, '00016', 'Corpus Christi', 'TX', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (17, '00017', 'Wichita', 'KS', 'Midwest')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (18, '00018', 'Overland Park', 'KS', 'Midwest')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (19, '00019', 'Kansas City', 'KS', 'Midwest')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (20, '00020', 'Shreveport', 'LA', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (21, '00021', 'Baton Rouge', 'LA', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (22, '00022', 'New Orleans', 'LA', 'South')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (23, '00023', 'Boston', 'MA', 'New England')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (24, '00024', 'Portland', 'OR', 'West')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (25, '00025', ' Honolulu', 'HI', 'West')


INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (26, '00026', ' Honolulu', 'HI', 'West')

INSERT INTO dbo.Store
           (StoreID, StoreNumber, City, State ,Region)
     VALUES
           (27, '00027', ' Honolulu', 'HI', 'West')

SET IDENTITY_INSERT dbo.Store OFF

PRINT ''

--------------------------------------------------------------------
--MonthlySales
--------------------------------------------------------------------

PRINT 'Insert MonthlySales rows...'

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
           (6, 2017, 6, 11003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (7, 2017, 6, 12303000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (8, 2017, 5, 18803000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (8, 2017, 6, 9003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (9, 2017, 6, 12003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (10, 2017, 6, 13003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (11, 2017, 6, 14003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (12, 2017, 6, 35002300.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (13, 2017, 6, 11003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (14, 2017, 6, 35043000.99)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (15, 2017, 6, 37003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (16, 2017, 6, 49003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (17, 2017, 6, 35303000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (18, 2017, 6, 33003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (19, 2017, 6, 32003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (20, 2017, 6, 31003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (21, 2017, 6, 15007333.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (22, 2017, 6, 45003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (23, 2017, 6, 55123158.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (24, 2017, 6, 2203000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (25, 2017, 6, 11003000.01)


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

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (6, 2016, 6, 1003000.01)

--INSERT INTO dbo.MonthlySales
--           (StoreID, SaleYear, SaleMonth, TotalSales)
--     VALUES
--           (7, 2016, 6, 22303000.01)

--INSERT INTO dbo.MonthlySales
--           (StoreID, SaleYear, SaleMonth, TotalSales)
--     VALUES
--           (8, 2016, 6, 55003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (9, 2016, 6, 11003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (10, 2016, 6, 12003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (11, 2016, 6, 13003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (12, 2016, 6, 45002300.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (13, 2016, 6, 1003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (14, 2016, 6, 25043000.99)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (15, 2016, 6, 27003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (16, 2016, 6, 48003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (17, 2016, 6, 32303000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (18, 2016, 6, 32003000.99)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (19, 2016, 6, 33003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (20, 2016, 6, 32003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (21, 2016, 6, 25007333.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (22, 2016, 6, 25003000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (23, 2016, 6, 75123158.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (24, 2016, 6, 3203000.01)

INSERT INTO dbo.MonthlySales
           (StoreID, SaleYear, SaleMonth, TotalSales)
     VALUES
           (25, 2016, 6, 31003000.01)

SET IDENTITY_INSERT dbo.MonthlySales OFF