-- 코드를 입력하세요
SELECT MCDP_CD as '진료과 코드', count(*) as '5월예약건수'
from APPOINTMENT
where APNT_YMD LIKE '2022-05%'
group by MCDP_CD
order by count(*) asc, MCDP_CD asc;
#order by 할 때 새로 저장한 컬럼 기준으로 오름차순 안됨