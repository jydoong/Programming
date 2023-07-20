-- 코드를 입력하세요
SELECT A.FLAVOR
from FIRST_HALF as A
inner join JULY as B
on A.FLAVOR = B.FLAVOR
group by B.FLAVOR
order by sum(A.TOTAL_ORDER + B.TOTAL_ORDER) desc limit 3;