
--Select to call and view the collumn to be altered (for date patterns 1/1/12)
SELECT REGEXP_REPLACE(collumn_name,
        '([[:digit:]]{1})([[:punct:]]{1})([[:digit:]]{1})([[:punct:]]{1})([[:digit:]]{2})', '0\1\20\3\4\5') AS tempcollumnname
FROM table where length(collumn_name) <= 6;

--Update of the above-mentioned Select
update table set collumn_name = REGEXP_REPLACE(collumn_name,
        '([[:digit:]]{1})([[:punct:]]{1})([[:digit:]]{1})([[:punct:]]{1})([[:digit:]]{2})', '0\1\20\3\4\5') where length(collumn_name) <= 6;
        

--Select to call and view the collumn to be altered (for date patterns 10/1/12)
SELECT REGEXP_REPLACE(collumn_name,
        '([[:digit:]]{2})([[:punct:]]{1})([[:digit:]]{1})([[:punct:]]{1})([[:digit:]]{2})', '\1\20\3\4\5') AS tempcollumnname
FROM table where length(collumn_name) < 8;

--Update of the above-mentioned Select
update table set collumn_name = REGEXP_REPLACE(collumn_name,
        '([[:digit:]]{2})([[:punct:]]{1})([[:digit:]]{1})([[:punct:]]{1})([[:digit:]]{2})', '\1\20\3\4\5') where length(collumn_name) < 8;
