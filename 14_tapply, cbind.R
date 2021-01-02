# t-apply : 긴 데이터를 각 요소별로 쪼개서 특정한 값(평균, 합 등)을 얻을 때 사용

# 만약 실린더별 평균 mpg를 구하고 싶다면

# 방법 1.
str(mtcars)

# 2번째까지만 있는(mpg, syl) 데이터만 사용
newdata <- mtcars[1:2]
newdata

# cyl이 4인 값만 선택
newdata$cyl==4  # "cyl이 4가 맞아?"라고 물어보는 것이기에 TRUE/FALSE라고 답함
mpg_4 <- newdata[which(newdata$cyl==4), ] # 이렇게 해야 선택해서 불러옴
mpg_6 <- newdata[which(newdata$cyl==6), ]
mpg_8 <- newdata[which(newdata$cyl==8), ]

# cbind를 사용해 컬럼으로 만듦
cbind(mean(mpg_4$mpg), mean(mpg_6$mpg), mean(mpg_8$mpg))


# 방법 2. t-apply 사용
# tapply(사용할 데이터, 어떤걸 기준으로, 무엇을 구할건지)
tapply(mtcars$mpg, mtcars$cyl, mean)
       