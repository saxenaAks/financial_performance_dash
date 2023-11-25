-- Example: Stored Procedure for Inserting Financial Data
CREATE PROCEDURE InsertFinancialRecord (
    IN p_transaction_date DATE,
    IN p_revenue DECIMAL(10, 2),
    IN p_expenses DECIMAL(10, 2)
)
BEGIN
    INSERT INTO financial_data (transaction_date, revenue, expenses)
    VALUES (p_transaction_date, p_revenue, p_expenses);
END;

-- Example: Stored Procedure for Updating Financial Record
CREATE PROCEDURE UpdateFinancialRecord (
    IN p_record_id INT,
    IN p_new_revenue DECIMAL(10, 2),
    IN p_new_expenses DECIMAL(10, 2)
)
BEGIN
    UPDATE financial_data
    SET revenue = p_new_revenue,
        expenses = p_new_expenses
    WHERE record_id = p_record_id;
END;

-- Example: Stored Procedure for Retrieving Financial Records
CREATE PROCEDURE GetFinancialRecords (
    IN p_start_date DATE,
    IN p_end_date DATE
)
BEGIN
    SELECT *
    FROM financial_data
    WHERE transaction_date BETWEEN p_start_date AND p_end_date;
END;

-- Example: Stored Procedure for Deleting Financial Record
CREATE PROCEDURE DeleteFinancialRecord (
    IN p_record_id INT
)
BEGIN
    DELETE FROM financial_data
    WHERE record_id = p_record_id;
END;
-- Example: Stored Procedure for Inserting Financial Data
CREATE PROCEDURE InsertFinancialRecord (
    IN p_transaction_date DATE,
    IN p_revenue DECIMAL(10, 2),
    IN p_expenses DECIMAL(10, 2)
)
BEGIN
    INSERT INTO financial_data (transaction_date, revenue, expenses)
    VALUES (p_transaction_date, p_revenue, p_expenses);
END;

-- Example: Stored Procedure for Updating Financial Record
CREATE PROCEDURE UpdateFinancialRecord (
    IN p_record_id INT,
    IN p_new_revenue DECIMAL(10, 2),
    IN p_new_expenses DECIMAL(10, 2)
)
BEGIN
    UPDATE financial_data
    SET revenue = p_new_revenue,
        expenses = p_new_expenses
    WHERE record_id = p_record_id;
END;

-- Example: Stored Procedure for Retrieving Financial Records
CREATE PROCEDURE GetFinancialRecords (
    IN p_start_date DATE,
    IN p_end_date DATE
)
BEGIN
    SELECT *
    FROM financial_data
    WHERE transaction_date BETWEEN p_start_date AND p_end_date;
END;

-- Example: Stored Procedure for Deleting Financial Record
CREATE PROCEDURE DeleteFinancialRecord (
    IN p_record_id INT
)
BEGIN
    DELETE FROM financial_data
    WHERE record_id = p_record_id;
END;

-- Example: Stored Procedure for Inserting Financial Data
CREATE PROCEDURE InsertFinancialRecord (
    IN p_transaction_date DATE,
    IN p_revenue DECIMAL(10, 2),
    IN p_expenses DECIMAL(10, 2)
)
BEGIN
    INSERT INTO financial_data (transaction_date, revenue, expenses)
    VALUES (p_transaction_date, p_revenue, p_expenses);
END;

-- Example: Stored Procedure for Updating Financial Record
CREATE PROCEDURE UpdateFinancialRecord (
    IN p_record_id INT,
    IN p_new_revenue DECIMAL(10, 2),
    IN p_new_expenses DECIMAL(10, 2)
)
BEGIN
    UPDATE financial_data
    SET revenue = p_new_revenue,
        expenses = p_new_expenses
    WHERE record_id = p_record_id;
END;

-- Example: Stored Procedure for Retrieving Financial Records
CREATE PROCEDURE GetFinancialRecords (
    IN p_start_date DATE,
    IN p_end_date DATE
)
BEGIN
    SELECT *
    FROM financial_data
    WHERE transaction_date BETWEEN p_start_date AND p_end_date;
END;

-- Example: Stored Procedure for Deleting Financial Record
CREATE PROCEDURE DeleteFinancialRecord (
    IN p_record_id INT
)
BEGIN
    DELETE FROM financial_data
    WHERE record_id = p_record_id;
END;

-- Example: Stored Procedure for Getting Total Revenue and Expenses for a Specific Month
-- Parameters:
--   - p_month: The month for which to retrieve data.
CREATE PROCEDURE GetMonthlyFinancialSummary (
    IN p_month DATE
)
BEGIN
    SELECT
        SUM(revenue) AS Total_Revenue,
        SUM(expenses) AS Total_Expenses
    FROM financial_data
    WHERE MONTH(transaction_date) = MONTH(p_month) AND YEAR(transaction_date) = YEAR(p_month);
END;

-- Example: Stored Procedure for Calculating Profit Margin
-- Parameters:
--   - p_start_date: The start date of the period.
--   - p_end_date: The end date of the period.
CREATE PROCEDURE GetProfitMargin (
    IN p_start_date DATE,
    IN p_end_date DATE
)
BEGIN
    SELECT
        SUM(revenue - expenses) / SUM(revenue) * 100 AS Profit_Margin
    FROM financial_data
    WHERE transaction_date BETWEEN p_start_date AND p_end_date;
END;
