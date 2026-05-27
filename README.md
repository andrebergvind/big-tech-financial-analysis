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

## Analysis

**Apple**

Apple demonstrates the strongest overall financial position among the companies analysed. The company has maintained the highest average revenue throughout the years while also holding the largest market capitalization since 2018. This reflects strong investor confidence, brand dominance, and consistent consumer demand.

From a profitability perspective, Apple’s ROE significantly outperforms competitors, indicating exceptional efficiency in generating shareholder returns. However, the company also presents the highest D/E ratio, suggesting that leverage and aggressive capital structure strategies contribute to these returns. While this increases financial risk slightly, Apple’s profitability and cash generation capabilities appear sufficient to support it.

Their revenue growth has remained relatively stable over the analysed period, although growth rates from 2022 slowed compared to previous year. Additionally, EPS growth remained positive in 2022, indicating resilience despite broader macroeconomic uncertainty.

From an investment perspective, Apple represents a relatively lower risk and long-term stability investment with strong profitability and shareholder value creation. However, future growth potential could be more moderate the coming years compared to faster growing technology competitors.

**Microsoft**

Microsoft presents the most balanced financial profile in the analysis. The company combines strong revenue expansion, stable profitability, high profitability margins, and strong market capitalisation growth without excessive leverage.

Compared to long-term averages, Microsoft’s 2022 metrics remain exceptionally strong, showing that the company has maintained momentum rather than experiencing stagnation. Its net margin is among the highest, reflecting operational efficiency and strong pricing power across cloud computing, software, and enterprise services.
The company’s moderate D/E ratio indicates a healthier balance between growth and financial risk compared to Apple. EPS growth remained positive in 2022, suggesting strong earnings resilience even during periods of economic uncertainty.
For investors, Microsoft appears to offer one of the strongest combinations of growth potential, financial stability, profitability, and manageable risk exposure. The company’s diversified business model also reduces dependency on a single market segment.

## Conclusions



## Recommendations


## Limitations

