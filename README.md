# Big Tech Financial Analysis


## Project Overview

This project entails a comparison of five tech companies.

The companies present in the analysis are:

- **Apple**
- **Microsoft**
- **Google**
- **NVIDIA**
- **Intel**

The project aimed to provide an overview of the five companies overall financial health, with an emphasis on 2022.


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

In Tableau, calculated fields were created to facilitate the understanding of data. 



## Dashboard



## Analysis


## Conclusions



## Recommendations


## Limitations

