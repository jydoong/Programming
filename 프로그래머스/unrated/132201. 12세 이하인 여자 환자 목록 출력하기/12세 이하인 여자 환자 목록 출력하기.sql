-- 코드를 입력하세요
SELECT PT_NAME, PT_NO, GEND_CD, AGE, IFNULL(TLNO, 'NONE')
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD	= 'W'
ORDER BY AGE DESC, PT_NAME ASC;

-- 결측값 다른 값으로 표시할 때
-- IFNULL(결측치 있는 열, 대체할 내용)
