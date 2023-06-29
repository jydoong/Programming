-- 코드를 입력하세요
SELECT B.BOOK_ID, A.AUTHOR_NAME, DATE_FORMAT(B.PUBLISHED_DATE, "%Y-%m-%d") as PUBLISHED_DATE 
from BOOK as B
join author as A
on B.AUTHOR_ID = A.AUTHOR_ID
where B.category = '경제'
order by B.PUBLISHED_DATE;
