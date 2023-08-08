-- 코드를 입력하세요
SELECT O.ANIMAL_ID, O.NAME
from ANIMAL_INS as I
inner join ANIMAL_OUTS as O
on I.ANIMAL_ID = O.ANIMAL_ID
order by datediff(O.DATETIME, I.DATETIME) + 1 desc limit 2;