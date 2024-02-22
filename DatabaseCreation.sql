create database PackingSiteDB
GO

use PackingSiteDB
GO

CREATE TABLE [dbo].[Traveler](
	[TravelerID] int NOT NULL identity primary key, -- identity auto increments the number, primary key specficies 
	[Username] [nvarchar](50) NOT NULL, -- nvarchar(max) will allow up to 2^31-1 characters
	[email] [nvarchar](max) NULL,
	[PasswordHash] nvarchar(max) NOT NULL) 
GO
CREATE TABLE [dbo].[TripCategory](
    [CategoryID] int NOT NULL IDENTITY PRIMARY KEY,
    [CategoryName] nvarchar(max) NOT NULL)
GO

CREATE TABLE [dbo].[WeatherCriteria](
    [CriteriaID] int NOT NULL IDENTITY PRIMARY KEY,
    [CriteriaName] nvarchar(max) NOT NULL,
    [ThresholdValue] DECIMAL(10, 2) NOT NULL)
GO

CREATE TABLE [dbo].[PackingRecommendation](
    [RecommendationID] int NOT NULL IDENTITY PRIMARY KEY,
    [TravelerID] int NOT NULL,
    [Date] DATE NOT NULL,
    [TripCategoryID] int NOT NULL,
    [CriteriaID] int NOT NULL,
    [Recommendations] nvarchar(max) NOT NULL,
    FOREIGN KEY ([TravelerID]) REFERENCES [dbo].[Traveler]([TravelerID]),
    FOREIGN KEY ([TripCategoryID]) REFERENCES [dbo].[TripCategory]([CategoryID]),
    FOREIGN KEY ([CriteriaID]) REFERENCES [dbo].[WeatherCriteria]([CriteriaID]))
GO

CREATE TABLE [dbo].[WeatherForecast](
    [ForecastID] int NOT NULL IDENTITY PRIMARY KEY,
    [Location] VARCHAR(100) NOT NULL,
    [Date] DATE NOT NULL,
    [Forecast] VARCHAR(100) NOT NULL,
    [Temperature] DECIMAL(5, 2) NOT NULL,
    [Humidity] DECIMAL(5, 2) NOT NULL,
    [Precipitation] DECIMAL(5, 2) NOT NULL,
    [WindSpeed] DECIMAL(5, 2) NOT NULL)
GO

CREATE TABLE [dbo].[Activity](
    [ActivityID] int NOT NULL IDENTITY PRIMARY KEY,
    [CategoryID] int NOT NULL,
    [ActivityName] nvarchar(max) NOT NULL,
    FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[TripCategory]([CategoryID]))
GO