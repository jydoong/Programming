-- 코드를 입력하세요
select A.AUTHOR_ID, B.AUTHOR_NAME, A.CATEGORY, sum(A.PRICE * C.SALES) as TOTAL_SALES
from BOOK A
inner join AUTHOR B
on A.AUTHOR_ID = B.AUTHOR_ID
inner join BOOK_SALES C
on A.BOOK_ID = C.BOOK_ID
where C.SALES_DATE like '2022-01%'
group by A.AUTHOR_ID, A.CATEGORY
order by A.AUTHOR_ID, A.CATEGORY desc;
