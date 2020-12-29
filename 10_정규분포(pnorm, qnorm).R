# 정규분포(normal distrbution)

# 정규분포에 사용되는 함수
# dnorm() : 그래프를 그릴 때 사용
# pnorm() : 그래프 내 특정 구역의 넓이(비율)
# qnorm() : pnorm에서의 x 값
# rnorm() : 난수를 발생시킴


# mean : 평균
# sd(standard deviation) : 표준편차

# 40~120의 숫자들을 임의로 300개로 쪼개라
x <- seq(40, 120, length=300)
x

# 그래프 그리기
y <- dnorm(x, mean=80, sd=10)
y
plot(x, y, type="l", col="red")


#-----------------------------------------------------

# a. probablity between 65~75
# 65~75 값이 전체에서 몇%인가?
x2 <- seq(65, 75, length=200)
y2 <- dnorm(x2, mean=80, sd=10)
polygon(c(65,x2,75), c(0,y2,0), col="gray")
# 위에 polygon은 알아보기 쉬우려고 넣은거고 필수는 아님

# pnorm을 이용해 위 그래프에서 회색부분 비율 구하기
# = 75까지의 넓이 - 65까지의 넓이
# (그래프 넓이는 기본적으로 왼쪽부터 시작해서 측정함)
pnorm(75, mean=80, sd=10) - pnorm(65, mean=80, sd=10)

#-----------------------------------------------------

# b. probablity of over 92
# 전체에서 빼는 방법
1 - pnorm(92, mean=80, sd=10)
# lower.tail=FALSE 로 왼쪽부터가 아닌, 오른쪽부터 계산하는 방법
pnorm(92, mean=80, sd=10, lower.tail=FALSE)

#-----------------------------------------------------

# c. probablity of less than 68
pnorm(68, mean=80, sd=10)

#-----------------------------------------------------

# d. cutoff that separates the bottom 30%
# 30%가 되는 지점(x축)은?
qnorm(0.3, mean=80, sd=10)

#-----------------------------------------------------

# e. 80th percentile
# 백분위 80 = 하위 80% = 상위 20%
qnorm(0.8, mean=80, sd=10)

#-----------------------------------------------------

# f. cutoff that contain the middle 60%
# 중간 60% 지점 = 평균에서 상위20%를 뺀 지점 & 하위20%를 뺀 지점
80 - qnorm(0.8, mean=80, sd=10)
80 - qnorm(0.2, mean=80, sd=10)
