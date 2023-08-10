-- 코드를 입력하세요
select M.MEMBER_NAME, R.REVIEW_TEXT, date_format(R.REVIEW_DATE, '%Y-%m-%d') as REVIEW_DATE
from MEMBER_PROFILE as M
inner join REST_REVIEW as R
on M.MEMBER_ID = R.MEMBER_ID
where M.MEMBER_ID = (select MEMBER_ID 
                     from REST_REVIEW
                     group by MEMBER_ID
                    order by count(MEMBER_ID) desc limit 1)
order by R.REVIEW_DATE, R.REVIEW_TEXT;