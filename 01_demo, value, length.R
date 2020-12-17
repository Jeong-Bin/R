demo(persp)
demo(graphics)

x <- 1
y <- 2
x*y -> z

# 한 변수에 여러 값 넣을 때
x <- c(1,2,3)
x
y <- c(2,3,4)
y
# 하나씩 대응해서 계산됨
x*y

# 9가 한 번씩 다 계산됨
z <- 9
x*z

# 길이가 서로 달라서 에러
a <- c(1,2)
x*a

# length 로 값의 길이를 알 수 있다
length(x)
length(y)
length(z)
