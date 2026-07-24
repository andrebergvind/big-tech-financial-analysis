**Excel**

After downloading the dataset from [Kaggle](https://www.kaggle.com/datasets/rish59/financial-statements-of-major-companies2009-2023?select=Financial+Statements.csv), the process began with an initial exploration of its values and data types using Excel.
The reason for this step was to provide a deeper understanding of possible inconsistencies and errors present within the dataset.

The result aknowledged messy column names which were altered using SQL. It also presented a difference in rows between the five companies used for the analysis. Microsoft and NVIDIA were the only two companies with data collected for 2023. Apple, Intel, and Google presented data ranging from 2009 and 2022. This finding resulted in the decision of removing data for 2023 in order to provide a fair analysis.

---
**SQL**

The SQL cleaning & Transformation primarily focused on validating data quality, identifying inconsistencies, and excluding data not applicable to this analysis.

The codes used can be accessed here:
[SQL Cleaning Codes](./sql-cleaning.sql)




First, a table was created for data importation to pgAdmin using postgreSQL






Therafter, a seperate table was for the 5 tech companies of interest for the analysis, and removed the year of 2023 due to only Microsoft and NVIDA had registered values for this year.



After creating the new table the process went onto ensuring that the dataset was clean, complete, and reliable for a fair analysis.

---


The process started with a count of rows present in the new table.
The outcome was a count of 70







Thereafter I wanted to confirm that all companies had data ranging over the same time period: 
The outcome resulted in 14 distinct years ranging from 2009 to 2022.
5 companies multiplied by 14 rows = 70. 



An additional check was performed to ensure that there were no duplicated years for any of the companies.
The query returned no result.





Next step was to examine if the dataset contained any null values. The result was that it did not.





A further validation of the data was examined as I went on to search for inconsistencies or values that may indicate errors. 
The query identified periods of negative profitability as it returned results for NVIDIA during year 2009 and 2010. These were retained as legitimate business outcomes rather than treated as data errors.



After completing the cleaning phase, the process went on to perform an initial SQL analysis.
The codes, outcomes, and reasoning behind each step can be accessed here: [SQL Analysis Process](./sql-analysis-process.md)

---

**Tableau**

The final step of cleaning and transforming the data included transferring it into Tableau Public for creating visualisations and a dashboard.

Before building the visuals, calculated fields were created to facilitate the use of, and enhance the understanding of data.

**Fields created include:**

- Revenue ($B)
- Shareholder Equity ($B)
- Revenue Growth %
- EPS Growth %

Originally, revenue and shareholder equity were presented in $M but for improved readability in charts, these were converted into $B.
These did not affect any metrics as they were not used to perform comparison with other values at this stage of the analysis.

Revenue and EPS Growth in % were calculated by dividing the difference in change between current year and previous year with the value of previous year, which allowed for a view of changes in the metrics over time.




