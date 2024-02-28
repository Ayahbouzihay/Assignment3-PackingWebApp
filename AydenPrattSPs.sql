create or ALTER proc [dbo].[selectTrip]
@CategoryID int
AS
Select * 
FROM TripCategory
where CategoryID = @CategoryID
GO 
 --exec selectTrip 4
 --GO

create or ALTER proc [dbo].[InputTripDates]
@Date date
AS
Select *
FROM PackingRecommendation
where Date = @Date
GO

--exec InputTripDates '2024-04-10'
--GO
