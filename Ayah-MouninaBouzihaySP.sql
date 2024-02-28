Use PackingSiteDB
GO
-----Action 5-----
Create proc spViewPackingRecommendations
    @TravelerID char(36),
    @TripDate date
AS
BEGIN
    SELECT pr.Date, pr.Recommendations, w.Forecast, w.Temperature, w.Humidity, w.Precipitation, w.WindSpeed
    FROM PackingRecommendation pr
    INNER JOIN WeatherForecast w ON pr.Date = w.Date
    WHERE pr.TravelerID = @TravelerID AND pr.Date = @TripDate;
END

----Action 6-----

Create proc spExploreActivities
    @CategoryID int
AS
BEGIN
    SELECT a.ActivityName
    FROM Activity a
    WHERE a.CategoryID = @CategoryID;
END