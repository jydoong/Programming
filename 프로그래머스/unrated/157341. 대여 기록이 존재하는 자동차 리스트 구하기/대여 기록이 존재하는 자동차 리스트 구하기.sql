-- 코드를 입력하세요
SELECT distinct C.CAR_ID
from CAR_RENTAL_COMPANY_CAR as C
inner join CAR_RENTAL_COMPANY_RENTAL_HISTORY as H
on C.CAR_ID = H.CAR_ID
where (C.CAR_TYPE = '세단') and (MONTH(H.START_DATE) = '10')
order by C.CAR_ID desc;