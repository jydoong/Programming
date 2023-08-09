-- 코드를 입력하세요
SELECT B.CATEGORY, sum(S.SALES) as TOTAL_SALES
from BOOK as B
inner join BOOK_SALES as S
on B.BOOK_ID = S.BOOK_ID
where S.SALES_DATE like '2022-01%'
group by B.CATEGORY
order by B.CATEGORY;