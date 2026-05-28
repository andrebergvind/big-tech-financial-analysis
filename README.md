# Big Tech Financial Analysis


## Project Overview

This project entails a full analysis of five tech companies and their financial performance between 2009 and 2022.

The companies present in the analysis are:

- **Apple**
- **Microsoft**
- **Google**
- **NVIDIA**
- **Intel**

The analysis aimed to provide an overview of the five companies overall financial health, with an emphasis on 2022.


## Tools Used

- **Excel**
- **pgAdmin**
- **SQL (PostgreSQL)**
- **Tableau**


## Cleaning & Transformation


**Excel**

After downloading the dataset from [Kaggle](https://www.kaggle.com/datasets/rish59/financial-statements-of-major-companies2009-2023?select=Financial+Statements.csv), the process continued with an initial exploration of its values and data types in Excel.
The reson for this step was to provide a deeper understanding of possible inconsistencies and errors present within the dataset.

The result aknowledged messy column names which needed to be altered using SQL. It also showcased a difference in rows between the five companies used for the analysis. Microsoft and NVIDIA were the only two companies with data collected for 2023. Apple, Intel, and Google presented data ranging from 2009 and 2022. This finding concluded the decision of removing data for 2023 in order to provide a fair analysis.

___

**SQL**

Following initial exploration of the data in Excel, next step included transferring the dataset into pgAdmin for reforming column names, look for outliers, data validation, and removing redundant data not applicable for the analysis at hand.

Full cleaning and transformation process, including reasoning behind each action can be accessed here: [SQL Cleaning Process](./sql/sql-cleaning-process.md)

The SQL process also uncluded an exploratory comparison analysis of the five companies.
The analysis primarily focused on developing an initial understanding of company performance and financial health before conducting deeper comparative analysis through visualization.

Full SQL analysis process, including reasoning behind each action can be accessed here: [SQL Analysis Process](./sql/sql-analysis-process.md)


___

**Tableau**

The final step of cleaning and transforming the data included transferring it into Tableau Public for creating visualisations and a dashboard.

Before building the visuals, calculated fields were created to facilitate the use of, and enhance the understanding of data.

**Fields created include:**

- Revenue ($B)
- Shareholder Equity ($B)
- Revenue Growth %
- EPS Growth %

Originally, revenue and shareholder equity were presented in $M but for improved readability in charts, these were converted into $B.
This did not affect any metrics as they were not used to perform comparison with other values at this stage of the analysis.

Revenue and EPS Growth in % were calculated by dividing the difference in change between current year and previous year with the value of previous year, which allowed for a view of changes in the metrics over time.


The processed was finalised with a full analysis, made with the help of the dashboard and can be found below.



## Dashboard

![Tech Financial Analysis Dashboard](dashboard.png)

[View Interactive Dashboard](https://public.tableau.com/views/TechCompaniesFinancialAnalysis/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Analysis

**Apple**

Apple demonstrates the strongest overall financial position among the companies analysed. The company has maintained the highest average revenue throughout the years while also holding the largest market capitalization since 2018. This reflects strong investor confidence, brand dominance, and consistent consumer demand.

From a profitability perspective, Apple’s ROE significantly outperforms competitors, indicating exceptional efficiency in generating shareholder returns. However, the company also presents the highest D/E ratio, suggesting that leverage and aggressive capital structure strategies contribute to these returns. While this increases financial risk slightly, Apple’s profitability and cash generation capabilities appear sufficient to support it.

Their revenue growth has remained relatively stable over the analysed period, although growth rates from 2022 slowed compared to previous year. Additionally, EPS growth remained positive in 2022, indicating resilience despite broader macroeconomic uncertainty.

From an investment perspective, Apple represents a relatively lower risk and long-term stability investment with strong profitability and shareholder value creation. However, future growth potential could be more moderate the coming years compared to faster growing technology competitors.

**Microsoft**

Microsoft presents the most balanced financial profile in the analysis. The company combines strong revenue expansion, stable profitability, high profitability margins, and strong market capitalisation without excessive leverage.

Compared to long-term averages, Microsoft’s 2022 metrics remain exceptionally strong, showing that the company has maintained momentum rather than experiencing stagnation. Its net margin is the highest, reflecting operational efficiency and strong pricing power across cloud computing, software, and enterprise services.

The company’s low D/E ratio indicates a healthier balance between growth and financial risk compared to Apple for example.
On top of that, EPS growth remained positive in 2022, suggesting strong earnings resilience even during periods of economic uncertainty.

For investors, Microsoft appears to offer one of the strongest combinations of stable growth potential, financial stability, profitability, and manageable risk exposure. The company’s diversified business model also reduces dependency on a single market segment.


**NVIDIA**

NVIDIA is currently experiencing the most explosive growth trajectory among the analysed companies. Although historically smaller in revenue and overall profitability compared to the rest, the company shows an exceptional acceleration, showcased by its current profitability metrics over its average.

With one of the top Net Margins in 2022, NVIDIA possesses incredible pricing power and operating efficiency.
The company’s 2022 EPS growth dramatically exceeded competitors, reflecting its highly profitable increase on a per-share basis.
These two metrics combined signalise strong fundamental health, and a higher likelihood of future dividend payouts or share price appreciation.

Despite having a strong Net Margin, NVIDIA's 2022 ROE was only 36.6%, falling below Microsoft, and substantially lower than Apple. However, this does not in any way indicate a weak operational efficiency, but rather that NVIDIA has not matured to the same stage as its competitors yet, as it is still not collecting the same amount of revenue compared to its shareholder equity. 

Although its market capitalization declined in 2022 alongside the broader technology sector, NVIDIA still maintained significantly stronger long-term growth momentum than most competitors.

From an investor standpoint, NVIDIA represents a high growth, but high risk investment strongly tied to future technological and AI market expansion.


**Google**

Google demonstrates strong financial health and one of the most conservative balance sheet structures among the companies analysed. 
Its low D/E ratio and high current ratio indicate strong liquidity and low financial risk.

The company maintains stable revenue growth throughout the period while preserving strong profitability and very low debt exposure.
Compared to competitors, Google appears less dependent on leverage to generate returns, which may appeal to more risk averse investors.

Although EPS growth turned negative in 2022, long-term revenue trends and profitability metrics remain highly competitive. The decline in EPS growth may indicate temporary macroeconomic pressures rather than structural weakness.

Google’s investment profile can therefore be interpreted as a balanced growth investment with strong financial stability, lower leverage risk, and continued long-term expansion potential.


**Intel**

Intel shows the weakest financial performance among the analysed companies. While it maintained moderate revenue levels historically, recent trends indicate weakening competitiveness and declining investor confidence.

The dashboard highlights significantly negative EPS growth in 2022, weak revenue growth, and comparatively low profitability metrics. Market capitalization growth also lagged substantially behind competitors, particularly compared to NVIDIA within the semiconductor sector.

Although Intel maintains moderate leverage levels and acceptable liquidity, these strengths are overshadowed by operational underperformance and declining growth momentum.

From an investor perspective, Intel appears to represent the highest risk investment among the five companies analysed. Intel may still appeal to value oriented investors expecting a long-term turnaround, but current performance indicators suggest weaker market positioning relative to competitors.


## Conclusions

All companies market cap down
However, the dashboard also suggests higher volatility. NVIDIA’s market capitalization peaked sharply before declining in 2022, indicating sensitivity to market expectations and valuation corrections. This suggests that while NVIDIA offers the strongest growth opportunity, it also carries greater investment risk and potential price volatility.

NVIDIA’s situation in 2022 represents a company with elite operational profitability (36.2% Net Margin) that matches or beats the best in big tech. The fact that its ROE (36.6%) is "significantly lower than Apple and Microsoft" is not an indicator of weak fundamental health. Rather, it highlights that NVIDIA achieved its explosive 2022 growth via a highly conservative, low-debt, equity-heavy capital structure—validating the "strong fundamental health" noted in your draft.



The dashboard reveals a strong divergence in strategic positioning and investment attractiveness among the analyzed technology firms.
Apple and Microsoft emerge as the strongest overall investment profiles due to their combination of profitability, scale, market dominance, and financial stability. Microsoft demonstrates the most balanced long-term performance, while Apple delivers exceptional shareholder returns despite higher leverage exposure.
NVIDIA represents the strongest growth-oriented investment opportunity, driven by rapid expansion within AI and semiconductor markets. However, the company also displays the greatest volatility and valuation sensitivity.
Google provides a financially conservative and stable growth profile supported by strong liquidity and low debt exposure, making it attractive for investors seeking lower financial risk.
Intel significantly underperforms competitors across profitability, growth, and investor sentiment metrics, indicating structural and competitive challenges within its market segment.
Overall, the analysis suggests that investors increasingly rewarded companies capable of generating scalable high-margin growth, particularly in cloud computing, AI, and digital infrastructure markets.


From an investor perspective, NVIDIA represents a high-growth investment opportunity with substantial future potential linked to AI, semiconductors, and data center expansion. However, its rapid valuation growth and dependence on future technological demand may also expose investors to higher market volatility compared to more mature firms such as Apple and Microsoft.

## Recommendations


Investors seeking long-term stability and lower risk may favor Apple or Microsoft due to their strong profitability, scale, and resilient financial performance.
Growth-oriented investors with higher risk tolerance may view NVIDIA as the most attractive opportunity because of its strong EPS expansion and AI-driven growth potential.
Risk-averse investors may consider Google due to its strong liquidity position, low leverage, and stable long-term fundamentals.
Investors should approach Intel cautiously unless pursuing speculative turnaround or value-investing strategies.
Future investment decisions should also incorporate external factors not included within the dashboard, such as macroeconomic conditions, interest rates, AI market developments, regulatory changes, and future competitive positioning.

## Limitations


The analysis is limited to five technology companies and therefore does not represent the broader technology sector.
The dashboard primarily relies on historical financial data between 2009 and 2022 and cannot fully predict future company performance.
Market capitalization is heavily influenced by investor sentiment and broader market conditions, which may not always reflect intrinsic company value.
External macroeconomic events such as inflation, interest rate changes, COVID-19 impacts, and geopolitical developments are not directly incorporated into the analysis.
Some financial metrics, particularly ROE and EPS growth, can fluctuate significantly year-to-year and may be influenced by accounting adjustments, stock buybacks, or temporary market conditions.
The dashboard does not include valuation metrics such as P/E ratio, free cash flow, or dividend yield, which are highly relevant for investment decision-making.
