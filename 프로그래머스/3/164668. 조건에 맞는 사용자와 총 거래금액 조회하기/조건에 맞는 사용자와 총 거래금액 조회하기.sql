-- 코드를 입력하세요
select B.USER_ID, B.NICKNAME, sum(A.PRICE) as TOTAL_SALES
from USED_GOODS_BOARD A
inner join USED_GOODS_USER B
on A.WRITER_ID = B.USER_ID
where A.STATUS = 'DONE'
group by USER_ID
having sum(A.PRICE) >= 700000
order by sum(A.PRICE)