WITH T AS (SELECT DATE_FORMAT(SALES_DATE, '%Y') YEAR, DATE_FORMAT(SALES_DATE, '%m') MONTH, USER_ID
           FROM ONLINE_SALE
           GROUP BY YEAR, MONTH, USER_ID)

SELECT YEAR, MONTH, GENDER, COUNT(*) USERS
FROM T
JOIN (SELECT USER_ID, GENDER FROM USER_INFO WHERE GENDER IS NOT NULL) INFO
USING (USER_ID)
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER;