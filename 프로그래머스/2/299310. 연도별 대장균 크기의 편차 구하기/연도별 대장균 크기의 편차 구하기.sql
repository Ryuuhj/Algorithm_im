/* 
    연도 별 최대 크기, ID별 분화날짜의 최대 크기 - ID 크기 값을 구해서 YEAR_DEV 출력
*/
WITH MAX_YEAR AS (
    SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAX(SIZE_OF_COLONY) AS MAXSIZE
    FROM ECOLI_DATA
    GROUP BY YEAR(DIFFERENTIATION_DATE) 
)

SELECT YEAR(A.DIFFERENTIATION_DATE) AS YEAR, (B.MAXSIZE - A.SIZE_OF_COLONY) AS YEAR_DEV, A.ID
FROM ECOLI_DATA A
LEFT JOIN MAX_YEAR B
ON YEAR(A.DIFFERENTIATION_DATE) = B.YEAR
ORDER BY YEAR, YEAR_DEV;
