# data type
x <- c(1, 2, 3, 4, 6)
y <- c('1', '2', '3', '4', '5')
z <- c('how', 'are', 'you', '?')
length(x)
length(y)

# y 값은 문자열로 인식해서 계산이 안 됨
x*y
# string을 R에서는 character(chr)라고 부름

# structure(str) : 변수의 구성을 알 수 있음
str(x)
str(y)


# boolean
1+2==3 # TRUE
# =를 하나만 스면 1+2를 3안에 넣어라는 명령으로 인색해버려서 에러가 발생함 
1+5==7 # FALSE

x==y # TRUE  TRUE  TRUE  TRUE FALSE
