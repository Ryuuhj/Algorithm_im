WITH RECURSIVE H AS (
    SELECT 0  AS HR
    UNION ALL
    SELECT HR + 1
    FROM H
    WHERE HR < 23)
    
SELECT H.HR HOUR, IFNULL(T.CNT, 0) COUNT
FROM H
LEFT JOIN (SELECT DATE_FORMAT(DATETIME, '%H') HOUR, COUNT(*) CNT
          FROM ANIMAL_OUTS
          GROUP BY DATE_FORMAT(DATETIME, '%H')) T
ON H.HR = T.HOUR
ORDER BY H.HR;
