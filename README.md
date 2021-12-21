# postgresql
Repository for SQL scripts, triggers, views and tables

**regexdates.sql**
This script was made to normalize a table, with a mixed kind of string insert pattern, in the same column i had 1/3/12 and 01/3/12, so, the regex was needed to change all those values to one pattern only 01/03/12.
The first select it's a test to view how's gonna behave the data with those changes, the second it's a update on the table.
The same effect it's apllyed in the second regex.
