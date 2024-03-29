-- 코드를 입력하세요
SELECT DATE_FORMAT(TOTAL.SALES_DATE, '%Y-%m-%d') AS SALES_DATE, TOTAL.PRODUCT_ID, TOTAL.USER_ID, TOTAL.SALES_AMOUNT
FROM (SELECT SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
      FROM ONLINE_SALE
      UNION ALL
      SELECT SALES_DATE, PRODUCT_ID, NULL, SALES_AMOUNT
      FROM OFFLINE_SALE) AS TOTAL
WHERE SALES_DATE LIKE '2022-03%'
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID;
