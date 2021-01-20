year <- c(2000, 2001, 2002, 2003, 2004)
value <- c(2.3, 3.2, 5.6, 5.4, 5.8)
plot(year, value, ylim=c(0,10))

fit <- lm(value ~ year)
abline(fit, col="red")

fit$coefficients[[1]] # 성분 찾기
# y절편인 -1837.38는 x값이 0일 때 y의 값을 의미
fit$coefficients[[2]]
# 0.92

# value = 0.92year - 1837.38

fit$residuals # 각 점의 선과의 거리
summary(fit) # 그래프의 정확도를 확인할 수 있음

# (Intercept) 끝에 *이 붙으면 '말이되는' 그래프라는 뜻.
# = 그래프가 데이터를 잘 설명하고 있다.
# R-squared는 1에 가까울 수록 좋다.
# p-value는 우연히 이러한 값이 나올 확률, 0.05 이하인게 좋다.
# 극단적인 이상치가 있으면 *이 없어지고 p-value가 높아진다.

# 2015년일 때 y값 예측
0.92*2015-1837.38
