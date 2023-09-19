# 테스트 케이스의 개수 T를 입력받습니다.
T = int(input())

# T개의 테스트 케이스를 처리합니다.
for _ in range(T):
    # 문장을 입력받습니다.
    sentence = input().split()  # 공백을 기준으로 단어를 분리합니다.
    
    # 각 단어를 뒤집고 출력합니다.
    for word in sentence:
        reversed_word = word[::-1]
        print(reversed_word, end=' ')  # 뒤집은 단어를 출력하고 공백을 추가합니다.
    print()  # 한 테스트 케이스가 끝날 때 줄 바꿈을 출력합니다.
