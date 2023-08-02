# sql-challenge

This repo includes files:

EmployeeSQL_TableSchemata - setting up the table schema for each of the six tables.






I referred to https://dba.stackexchange.com/questions/290762/parsing-date-while-copying-csv-file-into-postgresql-table for assistance with error encountered with transferring in the date-related information in the csv files, and thank desco for the code "ALTER DATABASE database_name SET datestyle TO "ISO, MDY";" from https://dba.stackexchange.com/questions/19679/how-to-set-postgresql-database-to-see-date-as-mdy-permanently

https://www.postgresql.org/message-id/39527922.D0C8E9F2%40austin.rr.com - for part of date for 1986 query

Comments on the process of ERD:
There is a variety of points that could be made on this: whether a composite key is required or not for two tables was ultimately decided in the negative, since both appear to function as bridging tables.

Had to remove not null for the foreign key column in one (name), since one of the values did not appear in the table.

