-- 코드를 입력하세요
SELECT A.REST_ID, A.REST_NAME, A.FOOD_TYPE, A.FAVORITES, A.ADDRESS, round(AVG(B.REVIEW_SCORE), 2) as SCORE
from REST_INFO A
inner join REST_REVIEW B
on A.REST_ID = B.REST_ID
group by A.REST_ID
having A.ADDRESS like '서울%'
order by SCORE desc, A.FAVORITES desc;