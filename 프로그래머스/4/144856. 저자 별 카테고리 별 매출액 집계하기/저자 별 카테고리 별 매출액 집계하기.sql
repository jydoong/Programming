-- 코드를 입력하세요
#SELECT A.AUTHOR_ID, A.AUTHOR_NAME, B.CATEGORY, sum(S.SALES * B.PRICE) AS TOTAL_SALES
#from BOOK AS B
#inner join AUTHOR AS A
#on B.AUTHOR_ID = A.AUTHOR_ID
#inner join BOOK_SALES AS S
#on B.AUTHOR_ID = S.BOOK_ID
#where S.SALES_DATE like '2022-01%'
#group by A.AUTHOR_ID, A.AUTHOR_NAME, CATEGORY
#order by A.AUTHOR_ID asc, B.CATEGORY desc;

SELECT book.author_id, author.author_name, category, SUM(sales * price) AS total_price
FROM book_sales
JOIN book ON book.book_id = book_sales.book_id
JOIN author ON book.author_id = author.author_id
WHERE DATE_FORMAT(sales_date,'%Y-%m') = '2022-01'
GROUP BY author_id, category
ORDER BY author.author_id ASC, category DESC
;