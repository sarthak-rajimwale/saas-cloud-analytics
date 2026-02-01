-- =====================================================
-- WORKSHEET: SaaS Analytics – Environment Setup
-- PURPOSE:
--   One-time setup of database, schemas, and warehouse
-- EXECUTION:
--   Run once before any data modeling
-- =====================================================

-- Use admin role for setup
USE ROLE ACCOUNTADMIN;

-- Create main analytics database
CREATE DATABASE IF NOT EXISTS SAAS_ANALYTICS;

-- Switch to database
USE DATABASE SAAS_ANALYTICS;

-- Create schemas
CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS ANALYTICS;
CREATE SCHEMA IF NOT EXISTS VIEWS;

-- Create warehouse for analytics workloads
CREATE WAREHOUSE IF NOT EXISTS ANALYTICS_WH
    WAREHOUSE_SIZE = 'XSMALL'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE;

-- Use warehouse
USE WAREHOUSE ANALYTICS_WH;
