

-- Examining which company had the highest revenues each year

SELECT
year,
company
FROM
    
(SELECT
company,
year,
revenue,
net_income,
market_cap_b_usd,
RANK() OVER(PARTITION BY year ORDER BY revenue DESC) AS rank
FROM
tech_companies_financials
ORDER BY
year DESC, rank)

WHERE
rank = 1




-- Computing average profitability metrics per company over the 14 years

SELECT
company,
ROUND(AVG(roe), 2) AS avg_roe,
ROUND(AVG(roi), 2) AS avg_roi,
ROUND(AVG(net_profit_margin), 2) AS avg_net_profit_margin,
ROUND(AVG(current_ratio), 2) AS avg_current_ratio
FROM tech_companies_financials
GROUP BY company
ORDER BY avg_roe DESC



-- Calculating revenue growth, EPS growth, and comparing changes over time.

SELECT
company,
year,
revenue,
earning_per_share,
ROUND(
    ((revenue - LAG(revenue) OVER (PARTITION BY company ORDER BY year))
        / NULLIF(LAG(revenue) OVER (PARTITION BY company ORDER BY year), 0)) * 100, 2
    ) AS revenue_growth_pct,
ROUND(
    ((earning_per_share - LAG(earning_per_share) OVER (PARTITION BY company ORDER BY year))
        / NULLIF(LAG(earning_per_share) OVER (PARTITION BY company ORDER BY year), 0)) * 100, 2
    ) AS eps_growth_pct
FROM tech_companies_financials
ORDER BY company, year



-- Converting gross profit on revenue to percentage share, while comparing with other profitability metrics.

SELECT
company,
year,
revenue,
gross_profit,
net_income,
ROUND(
    (gross_profit / NULLIF(revenue, 0)) * 100, 2) AS gross_margin_pct,
net_profit_margin,
roe
FROM tech_companies_financials
ORDER BY company, year






-- Analyising liquidity and debt over time

SELECT
company,
year,
current_ratio,
debt_equity_ratio,
free_cash_flow_per_share
FROM tech_companies_financials
ORDER BY company, year





-- Analysing current financial health and position for each company within the group

SELECT
company,
market_cap_b_usd,
revenue,
net_income,
earning_per_share,
roe,
roi,
net_profit_margin,
current_ratio,
debt_equity_ratio,
free_cash_flow_per_share
FROM tech_companies_financials
WHERE year = 2022
ORDER BY roe DESC




-- Computing and analysing EPS growth between 2021 and 2022


WITH earnings_growth AS (
SELECT
    company,
    year,
    earning_per_share,
    LAG(earning_per_share) OVER (
        PARTITION BY company 
        ORDER BY year
    ) AS previous_year_eps
FROM tech_companies_financials
)

SELECT
company,
year,
earning_per_share,
previous_year_eps,
ROUND(
    ((earning_per_share - previous_year_eps) / NULLIF(previous_year_eps, 0)) * 100, 
    2
) AS eps_growth_pct
FROM earnings_growth
WHERE year = 2022
ORDER BY eps_growth_pct DESC
