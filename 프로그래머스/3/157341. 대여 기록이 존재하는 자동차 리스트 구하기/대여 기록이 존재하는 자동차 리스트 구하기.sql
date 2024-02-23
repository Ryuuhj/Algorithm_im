SELECT DISTINCT CAR_ID
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID IN (SELECT CAR_ID FROM CAR_RENTAL_COMPANY_CAR WHERE CAR_TYPE = '세단')
    AND DATE_FORMAT(START_DATE, '%m') = '10'
ORDER BY CAR_ID DESC;
