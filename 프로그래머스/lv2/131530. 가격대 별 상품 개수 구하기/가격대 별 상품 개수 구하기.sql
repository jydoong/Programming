-- 코드를 입력하세요
SELECT truncate(price, -4)as PRICE_GROUP, count(*) as PRODUCTS
from PRODUCT
group by PRICE_GROUP
order by PRICE_GROUP;

#truncate(price, -4) > 12345면 -4번째 버리기 >> 10000