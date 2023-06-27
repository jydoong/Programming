-- 코드를 입력하세요
SELECT info.REST_ID, info.REST_NAME, info.FOOD_TYPE, info.FAVORITES, info.ADDRESS, round(avg(re.REVIEW_SCORE), 2) as SCORE
from REST_INFO as info
inner join REST_REVIEW as re
on info.REST_ID = re.REST_ID
where info.ADDRESS like '서울%'
group by info.REST_ID
order by SCORE desc, info.FAVORITES desc;