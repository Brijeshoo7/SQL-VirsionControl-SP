ALTER PROCEDURE AddPerson
AS
BEGIN
    DECLARE @NewSerialNumber INT;
    DECLARE @NewName VARCHAR(50);
    DECLARE @NewJobTitle VARCHAR(50);

    SET @NewSerialNumber = 4;
    SET @NewName = 'Parth Patel';
    SET @NewJobTitle = 'Software Engineer';

    IF NOT EXISTS (
        SELECT 1
        FROM Person
        WHERE SerialNumber = @NewSerialNumber
    )
    BEGIN
        INSERT INTO Person (SerialNumber, Name, JobTitle)
        VALUES (@NewSerialNumber, @NewName, @NewJobTitle);

        PRINT 'Person added successfully.';
    END
    ELSE
    BEGIN
        PRINT 'Person with this SerialNumber already exists.';
    END
END;
EXEC AddPerson;
