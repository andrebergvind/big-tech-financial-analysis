


The SQL cleaning & Transformation primarily focused on validating data quality, identifying inconsistencies, and excluding data not applicable to this analysis.

The codes used can be accessed here:
[SQL Cleaning Codes](./sql-cleaning.sql)




First a table was created for data importation to pgAdmin using postgreSQL






Therafter, a seperate table was for the 5 tech companies of interest for the analysis, and removed the year of 2023 due to only Microsoft and NVIDA had registered values for this year.


---

After creating the new table the process went onto ensuring that the dataset was clean, complete, and reliable enough for a fair analysis.

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



