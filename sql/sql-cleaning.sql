
1. 
-- Creating a table for dataset import

CREATE TABLE company_financials (
    year INTEGER,
    company TEXT,
    category TEXT,
    market_cap_b_usd NUMERIC,
    revenue NUMERIC,
    gross_profit NUMERIC,
    net_income NUMERIC,
    earning_per_share NUMERIC,
    ebitda NUMERIC,
    shareholder_equity NUMERIC,
    cash_flow_operating NUMERIC,
    cash_flow_investing NUMERIC,
    cash_flow_financing NUMERIC,
    current_ratio NUMERIC,
    debt_equity_ratio NUMERIC,
    roe NUMERIC,
    roa NUMERIC,
    roi NUMERIC,
    net_profit_margin NUMERIC,
    free_cash_flow_per_share NUMERIC,
    return_on_tangible_equity NUMERIC,
    number_of_employees INTEGER,
    inflation_rate_us NUMERIC
)


2.   
-- Creating a new, seperate table including the five companies and years of interest

CREATE TABLE tech_companies_financials AS

SELECT
*
FROM
company_financials
WHERE
company IN ('AAPL', 'MSFT', 'GOOG', 'NVDA', 'INTC')
AND year BETWEEN 2009 AND 2022;


3. 
-- Counting total rows

SELECT 
COUNT(*) AS total_rows
FROM tech_companies_financials


4.   
-- Verifying distinct count of rows for each company along with the spread of years

SELECT
company,
COUNT(DISTINCT year) AS year_count,
MIN(year) AS first_year,
MAX(year) AS first_year
FROM
tech_companies_financials
GROUP BY
company



5. 
-- Validating distinct years per company
  
SELECT
    company,
    year,
    COUNT(*) AS duplicate_years
FROM tech_companies_financials
GROUP BY company, year
HAVING COUNT(*) > 1



6. 
-- Looking for null values for each metric

SELECT
    COUNT(*) - COUNT(year) AS year_nulls,
    COUNT(*) - COUNT(company) AS company_nulls,
    COUNT(*) - COUNT(category) AS category_nulls,
    COUNT(*) - COUNT(market_cap_b_usd) AS market_cap_nulls,
    COUNT(*) - COUNT(revenue) AS revenue_nulls,
    COUNT(*) - COUNT(gross_profit) AS gross_profit_nulls,
    COUNT(*) - COUNT(net_income) AS net_income_nulls,
    COUNT(*) - COUNT(earning_per_share) AS eps_nulls,
    COUNT(*) - COUNT(ebitda) AS ebitda_nulls,
    COUNT(*) - COUNT(shareholder_equity) AS shareholder_equity_nulls,
    COUNT(*) - COUNT(cash_flow_operating) AS operating_cash_flow_nulls,
    COUNT(*) - COUNT(cash_flow_investing) AS investing_cash_flow_nulls,
    COUNT(*) - COUNT(cash_flow_financing) AS financing_cash_flow_nulls,
    COUNT(*) - COUNT(current_ratio) AS current_ratio_nulls,
    COUNT(*) - COUNT(debt_equity_ratio) AS debt_equity_nulls,
    COUNT(*) - COUNT(roe) AS roe_nulls,
    COUNT(*) - COUNT(roa) AS roa_nulls,
    COUNT(*) - COUNT(roi) AS roi_nulls,
    COUNT(*) - COUNT(net_profit_margin) AS net_profit_margin_nulls,
    COUNT(*) - COUNT(free_cash_flow_per_share) AS fcf_per_share_nulls,
    COUNT(*) - COUNT(return_on_tangible_equity) AS rote_nulls,
    COUNT(*) - COUNT(number_of_employees) AS employees_nulls,
    COUNT(*) - COUNT(inflation_rate_us) AS inflation_nulls
FROM tech_companies_financials


6. 
-- Looking for inconsistencies and errors

SELECT *
FROM tech_companies_financials
WHERE revenue < 0
   OR market_cap_b_usd < 0
   OR current_ratio < 0
   OR number_of_employees <= 0
   OR debt_equity_ratio < 0
   OR gross_profit < 0
   OR net_income < 0
   OR ebitda < 0
   OR shareholder_equity < 0
   OR roe < 0
   OR roa < 0
   OR roi < 0
   OR net_profit_margin < 0
