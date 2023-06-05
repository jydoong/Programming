-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
WHERE INTAKE_CONDITION not in ('Aged') 
ORDER BY ANIMAL_ID;

-- 특정 조건 제외 : where 열이름 not in (특정 조건)