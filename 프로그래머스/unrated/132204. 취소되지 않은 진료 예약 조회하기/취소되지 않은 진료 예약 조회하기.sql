-- 코드를 입력하세요
SELECT A.APNT_NO, P.PT_NAME, P.PT_NO, D.MCDP_CD, D.DR_NAME, A.APNT_YMD
from PATIENT as P
inner join APPOINTMENT as A
on P.PT_NO = A.PT_NO
inner join DOCTOR as D
on A.MDDR_ID = D.DR_ID
where APNT_YMD like '2022-04-13%' and D.MCDP_CD = 'CS' and A.APNT_CNCL_YN = 'N'
order by APNT_YMD;