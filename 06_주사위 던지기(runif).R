# 1. 주사위 던지기
# uniform distribution simulate

# 랜덤값을 설정하는 함수 r-unif
runif(100) # 0~1 사이의 실수 100개

ceiling(runif(100)*6)
# 주사위 최대값은 1이 아닌 6이기 대문에 *6
# 반올림하면 값이 0이 나올 수도 있어서 올림(ceiling)

# 아래처럼 담아주는 방식으로 해도 됨
# a <- runif(100)*6
# ceiling(a)

# 정리
roll <- 10000
n <- 6
die <- ceiling(runif(roll)*n)
b <- table(die) # 1~6이 각각 몇 번 나왓는지 알려줌

# 그래프로 그리기
barplot(b)

#------------------------------------------

# 2. 두 개 주사위 합치기

roll <- 10000
dice <- ceiling(runif(roll)*6) + ceiling(runif(roll)*6)
a <- table(dice)
barplot(a)
# 7이 나올 확률이 가장 높다

a[6]    # 1689
a[1]*6  # 1659
a[11]*6 # 1722
# 또한 7이 나올 확률은 2나 12가 나올 확률의 약 6배다.


