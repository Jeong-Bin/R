# tidyr : 데이터 정리에 좋은 패키지

install.packages("tidyr")

library(tidyr)
library(dplyr)

# 0. 만약 아래와 같이 정리가 안 된 데이터가 있다면
member <- data.frame(family=c(1,2,3),
                     namef=c("a","b","c"), agef=c(30,40,23),
                     namem=c("d","e","f"), agem=c(44,53,25))

member


# 1. gather 를 이용해 데이터를 길게 뿌려준다
a <- gather(member, key, value, namef:agem)

# 2. separate로 이름과 성별 분리
b <- separate(a, key, c("variable", "type"), -1)
     # 데이터, 무엇을 쪼개나, 뭐로 쪼개나, 어디를 기준으로
b

# 3. spread로 원래 데이터프레임 모양으로 만들어준다.
new <- spread(b, variable, value)
new

# 위 과정을 더 간단하게 정리하면 
new2 <- member %>%
        gather(key, value, namef:agem) %>%
        separate(key, c("variable", "type"), -1) %>%
        spread(variable, value)

new2
