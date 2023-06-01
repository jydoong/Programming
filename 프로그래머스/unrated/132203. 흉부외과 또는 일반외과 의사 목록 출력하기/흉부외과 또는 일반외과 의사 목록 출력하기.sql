-- 코드를 입력하세요
SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD,'%Y-%m-%d') AS DATE 
FROM DOCTOR
WHERE (MCDP_CD = 'CS' or MCDP_CD = 'GS')
ORDER BY HIRE_YMD DESC, DR_NAME ASC;

-- 정렬 2개 조건으로 지정하고 싶으면 먼저 지정하고 싶은 조건, 그 다음 지정하고 싶은 조건
