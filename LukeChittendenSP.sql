CREATE PROCEDURE dbo.TravelerLogin
    @Username NVARCHAR(50),
    @PasswordHash NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TravelerID INT;

    SELECT @TravelerID = TravelerID
    FROM dbo.Traveler
    WHERE Username = @Username AND PasswordHash = @PasswordHash;

    -- You can customize the logic here based on whether the login is successful.
    -- For example, you may use an output parameter or return a specific value.

    -- For simplicity, let's just select the TravelerID for a successful login.
    SELECT @TravelerID AS TravelerID;
END