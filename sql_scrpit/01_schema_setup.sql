/*
=========================================
Project: E-commerce Order Analysis
File: 01_schema_setup.sql
Author: Khushi Jain
Description:
Creates the database and table for the cleaned
e-commerce orders dataset.
=========================================
*/

-- Create Database
CREATE DATABASE EcommerceDB;
GO

-- Use Database
USE EcommerceDB;
GO

-- Verify table creation
SELECT *
FROM EcommerceOrders;