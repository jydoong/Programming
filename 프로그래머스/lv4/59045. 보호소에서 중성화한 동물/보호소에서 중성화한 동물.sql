-- 코드를 입력하세요
SELECT A.ANIMAL_ID, A.ANIMAL_TYPE, A.NAME
from ANIMAL_INS as A
inner join ANIMAL_OUTS as B
on A.ANIMAL_ID = B.ANIMAL_ID
where A.SEX_UPON_INTAKE not in ('Neutered Male', 'Spayed Female') 
and B.SEX_UPON_OUTCOME in ('Neutered Male', 'Spayed Female')
order by A.ANIMAL_ID;