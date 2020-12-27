x <- 'What's your name?'
# 이렇게 하면 따옴표 중복으로 인식해서 에러남
# 이럴때는 큰따옴표!
x <- "What's your name?"

#----------------------------------------------

y1 <- character()
y2 <- ""
class(y1)
class(y2)
length(y1)
length(y2)
# y1, y2 둘 다 캐릴터라고 인식은 하지만
# 길이는 0과 1로 다름


y <- character(10)
1
#  빈값 10개가 생성됨
y[3] <- "third"
y
# 3번째 값에 third 가 추가됨
y[12] <- "twelveth"
y
# 11번째는 NA로 표시하고 12번째에 값이 추가됨

#----------------------------------------------

# 숫자인지 문자인지 구별하기 1
n = 3
m = "3"
is.character(n)  # FALSE. 문자가 아님
is.character(m)  # TRYE. 문자임

# 숫자인지 문자인지 구별하기 2
class(n)  # "numeric"
class(m)  # "character"


# 숫자를 문자로 바꾸려면
n2 <- as.character(n)
class(n2)

#----------------------------------------------

t <- c(1:5)
t
# t는 숫자임

t2 <- c(1:5, "a")
t2
class(t2)
# 뒤에 붙은 a 때문에 모두 문자로 인식함

t3 <- c(1:4, TRUE, FALSE)
t3
class(t3)
# 모두 숫자로 인식하면서 TRUE는 1, FALSE는 0로 표시

t4 <- c(1:4, TRUE, FALSE, "a")
t4
# 모두 문자로 인식

#----------------------------------------------

# 데이터프레임은 숫자인지 문자인지 표시를 안 해준다.
df1 <- data.frame(n=c(1:4), letter=c("a","b","23","7"))
df1

# 데이터프레임에는 str() 을 써서 확인할 수 있다.
str(df1)
