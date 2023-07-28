-- 코드를 입력하세요
SELECT B.USER_ID, B.NICKNAME, concat(B.CITY, ' ', B.STREET_ADDRESS1, ' ', B.STREET_ADDRESS2) as '전체주소', concat(substring(B.TLNO from 1 for 3), '-', substring(B.TLNO from 4 for 4), '-', substring(B.TLNO from 8 for 4)) as '전화번호' 
from USED_GOODS_BOARD as A
inner join USED_GOODS_USER as B
on A.WRITER_ID = B.USER_ID
group by B.USER_ID
having count(A.WRITER_ID) >= 3
order by B.USER_ID desc;

#substring(컬럼명, n번째 글자부터, n개)