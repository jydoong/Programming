-- 코드를 입력하세요
SELECT P.PRODUCT_CODE, sum(P.price * O.sales_amount) as 'SALES'
from PRODUCT as P
inner join OFFLINE_SALE as O
on P.PRODUCT_ID = O.PRODUCT_ID
group by P.PRODUCT_CODE
order by SALES desc, P.PRODUCT_CODE;