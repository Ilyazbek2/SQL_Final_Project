-- ============================================================
-- TRANSACTIONS TABLE
-- ============================================================

USE Customers_transactions;


-- Remove existing table if it exists
DROP TABLE IF EXISTS Transactions;


-- Create Transactions table
CREATE TABLE Transactions (
    date_new DATE,
    Id_check INT,
    ID_client INT,
    Count_products DECIMAL(10,4),
    Sum_payment DECIMAL(10,4)
);


-- ============================================================
-- IMPORT TRANSACTIONS CSV
-- ============================================================

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Transactions_final.csv'
INTO TABLE Transactions
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    date_new,
    Id_check,
    ID_client,
    Count_products,
    @payment
)
SET Sum_payment = CAST(
    TRIM(TRAILING ';' FROM TRIM(@payment))
    AS DECIMAL(10,4)
);


-- Check secure_file_priv
SHOW VARIABLES LIKE 'secure_file_priv';


-- ============================================================
-- CHECK IMPORTED DATA
-- ============================================================

SELECT *
FROM Transactions;

SELECT *
FROM Customers;
