-- 코드를 입력하세요
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
CASE STATUS WHEN 'SALE' THEN '판매중' 
            WHEN 'RESERVED' THEN '예약중' 
            WHEN 'DONE' THEN '거래완료'
            END as STATUS
from USED_GOODS_BOARD
where CREATED_DATE = '2022-10-05'
order by BOARD_ID desc;