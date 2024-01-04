-- Create the table
CREATE TABLE Person (
    SerialNumber INT PRIMARY KEY,
    Name VARCHAR(50),
    JobTitle VARCHAR(50)
);

-- Insert sample data
INSERT INTO Person (SerialNumber, Name, JobTitle)
VALUES 
    (1, 'John Doe', 'Software Engineer'),
    (2, 'Jane Smith', 'Data Analyst'),
    (3, 'Alex Johnson', 'Project Manager');
