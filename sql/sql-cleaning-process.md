


The SQL cleaning & Transformation primarily focused on validating data quality, identifying inconsistencies, and excluding data not applicable to this analysis.




I created a table for data importation using the following code.






I created a new table for the 5 tech companies interesting for my analysis and removed the year of 2023 since only two companies had registered activities for this year, using the following code


---

After creating the new table I wanted to ensure the dataset is clean, complete, and reliable enough for a fair analysis.

--


The process started with a count of rows present in the new table.
The outcome was a count of 70







Thereafter I confirmed that all companies had data ranging over the same time period: 
The outcome resulted in 14 distinct years ranging from 2009 to 2022.
5 companies multiplied by 14 rows = 70. Great.



An additional check was performed to confirm that there were no duplicated years for any of the companies.
The query returned no result.





Next step was to examine if the dataset contained any null values. The result was that it did not.





A further validation of the data was examined as I went on to search for inconsistencies or values that may indicate errors. 
The query identified periods of negative profitability as it returned results for NVIDIA during year 2009 and 2010. These were retained as legitimate business outcomes rather than treated as data errors.



