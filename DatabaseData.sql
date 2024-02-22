USE PackingSiteDB
GO


SET IDENTITY_INSERT Traveler ON 
INSERT INTO Traveler (TravelerID, Username, email, PasswordHash)
VALUES
(1, 'adventurer23', 'adventurer23@gmail.com', 'hashedpassword1'),
(2, 'wanderlust88', 'wanderlust88@yahoo.com', 'hashedpassword2'),
(3, 'explorer007', 'explorer007@hotmail.com', 'hashedpassword3');
SET IDENTITY_INSERT Traveler OFF
DBCC CHECKIDENT ('Traveler', RESEED, 3)

SET IDENTITY_INSERT TripCategory ON
INSERT INTO TripCategory (CategoryID, CategoryName)
VALUES
(1, 'Hiking'),
(2, 'Beach'),
(3, 'Skiing'),
(4, 'Camping');
SET IDENTITY_INSERT TripCategory OFF
DBCC CHECKIDENT ('TripCategory', RESEED, 4)

SET IDENTITY_INSERT WeatherCriteria ON
INSERT INTO WeatherCriteria (CriteriaID, CriteriaName, ThresholdValue)
VALUES
(1, 'Temperature', 60),
(2, 'Humidity', 70),
(3, 'Precipitation', 0.1),
(4, 'WindSpeed', 15);
SET IDENTITY_INSERT WeatherCriteria OFF
DBCC CHECKIDENT ('WeatherCriteria', RESEED, 4)


SET IDENTITY_INSERT PackingRecommendation ON
INSERT INTO PackingRecommendation (RecommendationID, TravelerID, Date, TripCategoryID, CriteriaID, Recommendations)
VALUES
(1, 1, '2024-03-15', 1, 1, 'Light layers, hiking boots, water bottle'),
(2, 1, '2024-03-16', 1, 1, 'Rain jacket, backpack, snacks'),
(3, 2, '2024-04-10', 2, 2, 'Sunscreen, sunglasses, beach towel'),
(4, 2, '2024-04-11', 2, 2, 'Swimsuit, flip-flops, hat');
SET IDENTITY_INSERT PackingRecommendation OFF
DBCC CHECKIDENT ('PackingRecommendation', RESEED, 4)


SET IDENTITY_INSERT WeatherForecast ON
INSERT INTO WeatherForecast (ForecastID, Location, Date, Forecast, Temperature, Humidity, Precipitation, WindSpeed)
VALUES
(1, 'Miami, FL', '2024-03-15', 'Sunny', 80, 60, 0.0, 5),
(2, 'Malibu, CA', '2024-04-10', 'Partly cloudy', 75, 70, 0.05, 15);
SET IDENTITY_INSERT WeatherForecast OFF
DBCC CHECKIDENT ('WeatherForecast', RESEED, 2)



SET IDENTITY_INSERT Activity ON
INSERT INTO Activity (ActivityID, CategoryID, ActivityName)
VALUES
(1, 1, 'Trail hiking'),
(2, 1, 'Mountain climbing'),
(3, 2, 'Swimming'),
(4, 2, 'Beach volleyball');
SET IDENTITY_INSERT Activity OFF
DBCC CHECKIDENT ('Activity', RESEED, 4)