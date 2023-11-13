-- 코드를 입력하세요
select A.CATEGORY, SUM(B.SALES) as TOTAL_SALES
from BOOK A
inner join BOOK_SALES B
on A.BOOK_ID = B.BOOK_ID
where SALES_DATE like '2022-01%'
group by A.CATEGORY
order by A.CATEGORY