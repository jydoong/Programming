import sys
#한줄씩 읽어오기
X = int(input())

stack = []

for _ in range(X):
    # 한 줄을 읽어온 후 양쪽의 공백을 제거한 문자열을 변수 c에 저장합니다.
    c = sys.stdin.readline().rstrip()

    if 'push' in c:
        # 'push' 명령어인 경우, 문자열을 공백을 기준으로 나누고 두 번째 요소를 스택에 추가합니다.
        stack.append(c.split()[1])
    elif 'pop' == c:
        # 'pop' 명령어인 경우, 스택에서 가장 위에 있는 요소를 꺼내고 출력합니다.
        # 스택이 비어있는 경우 -1을 출력합니다.
        print(stack.pop() if stack else -1)
    elif 'size' == c:
        # 'size' 명령어인 경우, 스택에 들어있는 요소의 개수를 출력합니다.
        print(len(stack))
    elif 'empty' == c:
        # 'empty' 명령어인 경우, 스택이 비어있으면 1을 출력하고, 아니면 0을 출력합니다.
        print(1 if not stack else 0)
    elif 'top' == c:
        # 'top' 명령어인 경우, 스택의 가장 위에 있는 요소를 출력합니다.
        # 스택이 비어있는 경우 -1을 출력합니다.
        print(stack[-1] if stack else -1)