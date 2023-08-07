-- 코드를 입력하세요
SELECT R.HISTORY_ID,
round(C.DAILY_FEE * (DATEDIFF(R.END_DATE, R.START_DATE) + 1) * 
(case 
    when DATEDIFF(R.END_DATE, R.START_DATE) + 1 < 7 then 1
    when DATEDIFF(R.END_DATE, R.START_DATE) + 1 < 30 then 0.95
    when DATEDIFF(R.END_DATE, R.START_DATE) + 1 < 90 then 0.92
    else 0.85
end),0) as FEE

from CAR_RENTAL_COMPANY_CAR as C
inner join CAR_RENTAL_COMPANY_RENTAL_HISTORY as R
on C.CAR_ID = R.CAR_ID
inner join CAR_RENTAL_COMPANY_DISCOUNT_PLAN as D
on C.CAR_TYPE = D.CAR_TYPE
where C.CAR_TYPE = '트럭'
group by R.HISTORY_ID
order by FEE desc, R.HISTORY_ID desc;