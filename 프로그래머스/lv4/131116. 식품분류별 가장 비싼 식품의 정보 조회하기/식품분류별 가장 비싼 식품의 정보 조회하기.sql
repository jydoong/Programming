-- 코드를 입력하세요
SELECT CATEGORY, price
as MAX_PRICE, PRODUCT_NAME
from FOOD_PRODUCT
where price in (select MAX(PRICE)
from FOOD_PRODUCT
where CATEGORY in ('과자', '국', '김치', '식용유')
group by CATEGORY
) and CATEGORY in ('과자', '국', '김치', '식용유')
group by CATEGORY
order by MAX_PRICE desc
