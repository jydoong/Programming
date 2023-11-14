-- 코드를 입력하세요
SELECT year(B.SALES_DATE) as YEAR, month(B.SALES_DATE) as MONTH, A.gender as GENDER, count(distinct A.user_id) as USERS 
from USER_INFO A
inner join ONLINE_SALE B
on A.user_id = B.user_id
where A.gender is not null
group by YEAR, MONTH, GENDER
order by YEAR, MONTH, GENDER;