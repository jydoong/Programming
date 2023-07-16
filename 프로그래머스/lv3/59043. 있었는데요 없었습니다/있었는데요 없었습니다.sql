-- 코드를 입력하세요
SELECT A.ANIMAL_ID, A.NAME
from ANIMAL_INS as A
inner join ANIMAL_OUTS as B
on A.ANIMAL_ID = B.ANIMAL_ID
where A.DATETIME > B.DATETIME
order by A.DATETIME;