import sys
stack=[]
for i in range(int(input())):
    c=sys.stdin.readline( ).rstrip( )
    if 'push' in  c:
        stack.append(c.split()[1])
    elif 'pop' == c:
        print(stack.pop() if stack else -1)
    elif 'size' == c:
        print(len(stack))
    elif 'empty' ==c:
        print(1 if not stack else 0)
    elif 'top' == c:
        print(stack[-1] if stack else -1)