-- 코드를 입력하세요
SELECT b.TITLE, b.BOARD_ID, r.REPLY_ID, r.WRITER_ID, r.CONTENTS, date_format(r.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
from USED_GOODS_BOARD as b 
inner join USED_GOODS_REPLY as r 
on b.BOARD_ID = r.BOARD_ID
where DATE_FORMAT(b.CREATED_DATE, '%Y-%m') = '2022-10'
order by r.CREATED_DATE asc, b.TITLE asc;

# 년, 월, 일만 지정하고 싶을 때 data_format 써주기
# data_format 지정하고 컬럼명 바꾸려면 as 컬럼명 해주기
# 2022년 10월에 작성된 게시물이니까 board에서 where 조건 적용해주기
