# sql-challenge

This repo for Challenge 9, SQL, includes the following:
In EMPLOYEE OUTPUTS:
- ERD png file: a screen shot of the Entity Relationship Diagram, designed with https://www.quickdatabasediagrams.com/, and whose exported code is the basis of the schemata.
- EmployeeSQL_TableSchemata, the sql source file with the design and execution of the table schema for each of the six tables, and import of the csv data for analysis.
- EmployeeSQL_Analysis sql source file with the analysis results in answer to the eight questions.
In RESOURCES
- the CSV files (for completeness)
- Git ignore & this README file.
- 

*ERD & Schemata Discussion:
The need for a composite key was considered for two tables, dept_emp and dept_manager, but I decided in the negative, since dept_emp appears to function more as  a bridging/junction table, comprising of two foreign keys. 
In dept_manager, which has the potential for duplicates in both fields, since they are both foreign keys, the emp_no is unique, and is coded as unique, rather than as a primary key.

I determined that smaller value lengths could be applied to the columns which would store shorter integers or varchars, but allocated a larger amount for surnames, first names and department and roles descriptions.

Given that the data is not going to be updated or changed, and was most comprehensive, I decided that NOT NULL would be appropriate for most fields, except for dept_emp, where it appears that one employee is not allocated to a department.   

 I had to bring in some additional code to ensure that the dates for the hire date and birthdate columns could be parsed, since the data entered appeared to be not consistent and not in line with postgresql. I found this from 'desco' on stackexchange - see full ref. below. 

*Analysis Discussion:
I have an over-fondness of joins, and for the answers to 4, 5 and 7, I employed navicat's basic example to assist with the formulation of the query, see full blog reference below (nested joins explained). 

I also thank Mireille, Anna, Tom and Hussam for the discussions over Slack channels when deciding to use a composite key or not. 

*REFERENCES

I used https://www.quickdatabasediagrams.com/ to design the ERD, and export the starter code.

I referred to https://dba.stackexchange.com/questions/290762/parsing-date-while-copying-csv-file-into-postgresql-table for assistance with error encountered with transferring in the date-related information in the csv files, 
Code written by 'desco': "ALTER DATABASE database_name SET datestyle TO "ISO, MDY";" from https://dba.stackexchange.com/questions/19679/how-to-set-postgresql-database-to-see-date-as-mdy-permanently, was used to ensure that the date was read correctly in the TableSchemata file.

I referred to:
https://www.postgresql.org/message-id/39527922.D0C8E9F2%40austin.rr.com - for "part of date" for 1986 query question

https://joshfrankel.me/blog/calculating-frequency-distribution-in-postgresql/ - for frequency count

https://navicat.com/en/company/aboutus/blog/1948-nested-joins-explained - for information on nested joins, using the example "FROM  Table1 
[ join type ] JOIN ( Table2 
                    [ join type ] JOIN Table3 
                                    ON condition3 ) 
                ON condition2" to responses to questions  4 & 7




