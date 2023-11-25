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
