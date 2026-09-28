# SQL_Final_Project

# Customer Transactions Analysis — SQL

## Project Overview

This project analyzes customer transactions using MySQL.

The analysis focuses on customer behavior, transaction activity, spending patterns, gender distribution, and age groups.

## Tools

- MySQL 8.0
- SQL
- MySQL Workbench

## Database

Database name:

`Customers_transactions`

Main tables:

- `Customers`
- `Transactions`

## Data Preparation

The project includes:

- Database creation
- Customer data cleaning
- Handling missing Gender values
- Handling missing Age values
- Creation of the Transactions table
- CSV data import
- Data type conversion
- Data validation

## Analysis

The project answers the following business questions:

### 1. Customer Activity

Identified customers who had transactions in every month during the 12-month period from June 2015 to June 2016.

Calculated:

- Average check
- Average monthly spending
- Total number of operations

### 2. Monthly Analysis

Calculated:

- Average monthly check
- Monthly number of operations
- Average number of active customers
- Share of total operations by month
- Share of total spending by month

### 3. Customer Demographics

Analyzed:

- Gender distribution
- Spending share by gender
- Age groups with 10-year intervals
- Customers with missing age information

### 4. Quarterly Analysis

Calculated by age group:

- Average check
- Average monthly spending
- Average monthly operations
- Spending percentage
- Operations percentage

## SQL Techniques Used

The project demonstrates the use of:

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- CASE
- COALESCE
- NULLIF
- LEFT JOIN
- CTE
- DATE_FORMAT
- YEAR
- QUARTER
- FLOOR
- COUNT
- SUM
- AVG
- ROUND
- DISTINCT
- Window functions
- Aggregate functions
