-- 코드를 입력하세요
SELECT A.flavor
FROM FIRST_HALF as A
left join ICECREAM_INFO as B
    on A.flavor = B.flavor
WHERE A.TOTAL_ORDER > 3000 AND B.INGREDIENT_TYPE = 'fruit_based'
ORDER BY TOTAL_ORDER desc;