n = int(input())

# dp 리스트 초기화
dp = [0] * (n + 1)

# dp[i]를 계산하는 과정
for i in range(1, n + 1):
    dp[i] = i  # 초기값은 i로 설정
    
    for j in range(1, int(i ** 0.5) + 1):
        dp[i] = min(dp[i], dp[i - j*j] + 1)

# 정답 출력
print(dp[n])
