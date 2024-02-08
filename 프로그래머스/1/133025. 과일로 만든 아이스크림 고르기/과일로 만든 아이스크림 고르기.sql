-- 코드를 입력하세요
SELECT A.FLAVOR
from FIRST_HALF A
inner join ICECREAM_INFO B
on A.FLAVOR = B.FLAVOR
where TOTAL_ORDER > 3000 and INGREDIENT_TYPE = 'fruit_based'
order by TOTAL_ORDER desc;
