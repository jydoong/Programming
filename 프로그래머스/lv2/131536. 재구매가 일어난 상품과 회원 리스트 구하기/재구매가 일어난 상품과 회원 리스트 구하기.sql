-- 코드를 입력하세요
SELECT USER_ID, PRODUCT_ID
from ONLINE_SALE
group by user_id, PRODUCT_ID
having count(user_id) > 1
order by USER_ID, PRODUCT_ID desc;