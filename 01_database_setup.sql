-- ============================================================
-- CUSTOMER TRANSACTIONS ANALYSIS
-- Database Setup & Data Cleaning
-- ============================================================

-- Create database
CREATE DATABASE IF NOT EXISTS Customers_transactions;

USE Customers_transactions;


-- ============================================================
-- DATA CLEANING
-- ============================================================

-- Replace empty Gender values with NULL
UPDATE Customers
SET Gender = NULL
WHERE Gender = '';

-- Replace empty Age values with NULL
UPDATE Customers
SET Age = NULL
WHERE Age = '';

-- Make Age nullable and integer
ALTER TABLE Customers
MODIFY Age INT NULL;


-- Check Customers table
SELECT *
FROM Customers;
