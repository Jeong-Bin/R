
# Aids2라는 데이터를 사용할텐데, 먼저 MASS 패키지를 다운받아야 한다.
install.packages('MASS')
library(MASS)
data(Aids2)
str(Aids2)
?Aids2 # 데이터 설명 보기
head(Aids2)

# summary로 각 컬럼별 정보를 대략적으로 파악할 수 있다.
summary(Aids2)

# summary로 보니 0세인 사람이 있다? -> 확인해보기
Aids2[which(Aids2$age==0), ]



# 살아있는 사람은 몇 명인가?
Alive <- Aids2[which(Aids2$status=='A'), ]
Alive
# 죽은 사람은?
Dead <- Aids2[which(Aids2$status=='D'), ]
Dead

# aggregate : 집계함수
#         찾을 것,   어떤 기준으로,    어떤 값을
aggregate(Alive$age, by=list(Alive$sex), mean)
aggregate(Dead$age, by=list(Dead$sex), mean)

# 성별, 상태 두 기준 한 번에 보기
aggregate(Aids2$age, by=list(Aids2$sex, Aids2$status), mean)
