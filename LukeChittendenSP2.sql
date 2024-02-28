CREATE PROCEDURE dbo.RegisterTraveler
    @Username NVARCHAR(50),
    @Email NVARCHAR(MAX),
    @PasswordHash NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Traveler (Username, Email, PasswordHash)
    VALUES (@Username, @Email, @PasswordHash);
END