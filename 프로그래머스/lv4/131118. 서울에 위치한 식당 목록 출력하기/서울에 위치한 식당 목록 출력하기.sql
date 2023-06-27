-- 코드를 입력하세요
SELECT info.REST_ID, info.REST_NAME, info.FOOD_TYPE, info.FAVORITES, info.ADDRESS, round(avg(re.REVIEW_SCORE), 2) as SCORE
from REST_INFO as info
inner join REST_REVIEW as re
on info.REST_ID = re.REST_ID
where info.ADDRESS like '서울%'
group by info.REST_ID
order by SCORE desc, info.FAVORITES desc;

#리뷰들 중 평균 점수 내야하니까 group by 해야함
#소수점 반올림할 때 round(컬럼명, 출력할 소수점 n번째)
