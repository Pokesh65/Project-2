-- DATEDIFF in MySQL is equivalent to using subtraction of dates in Oracle
SELECT TO_DATE('2001-08-30', 'YYYY-MM-DD') - TO_DATE('2004-10-24', 'YYYY-MM-DD') AS days_difference
FROM DUAL;

-- DATE_ADD in MySQL is equivalent to adding intervals in Oracle
SELECT TO_DATE('2024-11-15', 'YYYY-MM-DD') + INTERVAL '10' DAY AS date_added
FROM DUAL;

-- DATE_SUB in MySQL is equivalent to subtracting intervals in Oracle
SELECT TO_DATE('2024-11-25', 'YYYY-MM-DD') - INTERVAL '10' DAY AS date_subtracted
FROM DUAL;

-- DATE_FORMAT in MySQL has equivalents in Oracle using TO_CHAR
SELECT TO_CHAR(TO_DATE('2024-11-02', 'YYYY-MM-DD'), 'DDTH') AS day_format
FROM DUAL;

SELECT TO_CHAR(TO_DATE('2024-11-02', 'YYYY-MM-DD'), 'MONTH') AS month_format
FROM DUAL;

SELECT TO_CHAR(TO_DATE('2024-11-02', 'YYYY-MM-DD'), 'YYYY') AS year_format
FROM DUAL;

-- DAYNAME in MySQL is equivalent to TO_CHAR with 'DAY'
SELECT TO_CHAR(TO_DATE('2024-11-04', 'YYYY-MM-DD'), 'DAY') AS day_name
FROM DUAL;

-- DAYOFYEAR in MySQL is equivalent to TO_CHAR with 'DDD'
SELECT TO_CHAR(TO_DATE('2024-11-04', 'YYYY-MM-DD'), 'DDD') AS day_of_year
FROM DUAL;

-- EXTRACT in MySQL can be directly replaced with EXTRACT in Oracle
SELECT EXTRACT(DAY FROM TO_DATE('2024-11-11', 'YYYY-MM-DD')) AS day_extracted
FROM DUAL;

SELECT EXTRACT(MONTH FROM TO_DATE('2024-11-04', 'YYYY-MM-DD')) AS month_extracted
FROM DUAL;

SELECT EXTRACT(YEAR FROM TO_DATE('2024-11-04', 'YYYY-MM-DD')) AS year_extracted
FROM DUAL;

-- WEEKOFYEAR in MySQL can be achieved with TO_CHAR using 'IW'
SELECT TO_CHAR(TO_DATE('2024-11-04', 'YYYY-MM-DD'), 'IW') AS week_of_year
FROM DUAL;

-- PERIOD_DIFF in MySQL calculates difference in months; replicate it manually in Oracle
SELECT (EXTRACT(YEAR FROM TO_DATE('2017-10-01', 'YYYY-MM-DD')) * 12 + EXTRACT(MONTH FROM TO_DATE('2017-10-01', 'YYYY-MM-DD'))) -
       (EXTRACT(YEAR FROM TO_DATE('2017-05-01', 'YYYY-MM-DD')) * 12 + EXTRACT(MONTH FROM TO_DATE('2017-05-01', 'YYYY-MM-DD'))) AS period_diff
FROM DUAL;

commit;
save;