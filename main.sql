-- Financial Data Extraction
CREATE VIEW FinancialData AS
SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS Month,
    SUM(revenue) AS Total_Revenue,
    SUM(expenses) AS Total_Expenses,
    SUM(revenue - expenses) AS Profit
FROM financial_data
GROUP BY Month
ORDER BY Month DESC;

-- Real-time Updates
-- Example: Stored Procedure for Inserting User
-- This stored procedure inserts a new user into the 'users' table.
-- Parameters:
--   - p_username: The username of the new user.
--   - p_email: The email address of the new user.
CREATE PROCEDURE UpdateFinancialData()
-- starting the procedure 
BEGIN
    INSERT INTO FinancialData
    SELECT 
        CURRENT_DATE() AS Month,
        SUM(revenue) AS Total_Revenue,
        SUM(expenses) AS Total_Expenses,
        SUM(revenue - expenses) AS Profit
    FROM financial_data
    WHERE transaction_date = CURRENT_DATE();
END;
-- End the procedur

-- User Guide
-- creating table 
CREATE TABLE UserGuide (
    Section VARCHAR(50),
    Content TEXT
);

INSERT INTO UserGuide (Section, Content) VALUES
('Introduction', 'Welcome to the Financial Dashboard User Guide.'),
('Data Extraction', 'To view financial data, explore the "FinancialData" view.'),
('Real-time Updates', 'For real-time updates, execute the "UpdateFinancialData" stored procedure.'),
('Visualizations', 'Explore the "FinancialData" view for visualizations on revenue, expenses, and profit.'),
('User Customization', 'Use filter options to customize views based on date ranges.'),
('Security Measures', 'Role-based access control and encryption ensure data security.');

-- Security Measures
-- create tale amd roleid make primary key 
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(50) UNIQUE
);

--Here we inserting some values into a table 
INSERT INTO Roles (RoleID, RoleName) VALUES
(1, 'Admin'),
(2, 'Analyst');
--creating table and user id make primary key
CREATE TABLE UserRoles (
    UserID INT PRIMARY KEY,
    RoleID INT,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);

-- Documented SQL Queries
-- Creating table and make id as primary key
CREATE TABLE SQLQueries (
    QueryID INT PRIMARY KEY,
    QueryDescription VARCHAR(255),
    Query TEXT
);

-- here we inserting data with some values  
INSERT INTO SQLQueries (QueryID, QueryDescription, Query) VALUES
(1, 'Financial Data Extraction', 'SELECT * FROM FinancialData;'),
(2, 'Real-time Updates', 'EXECUTE UpdateFinancialData;'),
(3, 'User Guide', 'SELECT * FROM UserGuide;'),
(4, 'Security Measures', 'SELECT * FROM Roles;');

-- Additional Technologies Used
-- here we create table and id makes as primary Key
CREATE TABLE TechnologiesUsed (
    TechnologyID INT PRIMARY KEY,
    TechnologyName VARCHAR(50)
);
-- Intserting data into table Technogiesused

INSERT INTO TechnologiesUsed (TechnologyID, TechnologyName) VALUES
(1, 'SQL'),
(2, 'Tableau');
