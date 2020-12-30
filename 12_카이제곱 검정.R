# 카이제곱 검정(chi-square)

data <- matrix(c(42,30,50,87), nrow=2, byrow=FALSE)
data
# 만약 어떤 조사에서 남자는 42명이 yes, 50명이 no라고 답하고
# 여자는 30명이 yes, 87명이 no라고 답했다면
# 이러한 차이는 성별(= 각 그룹의 특징) 때문에 생긴 것인가?
# 아니면 우연이거나 다른 변수 때문에 생긴 것인가?

# 만약 성별(각 그룹)은 결과에 아무 영향이 없다고 했을 때, 결과는 어떻게 나와야 할까?
# 행과 열을 서로 더한 값 / 총합
# rowSums : row끼리 더함
# colSums : column끼리 더함

chisq <- function(Obs){
  Expected <- outer(rowSums(Obs), colSums(Obs))/sum(Obs)
  return(Expected)
}
# 1.
#         [,1] [,2] (rowSums)
#   [1,]   42 + 50 = 92
#           +   +
#   [2,]   30 + 87 = 117
#           =   =
#(colSums) 72   137

# 2.
# outer : rowSums과 colSums를 교차해서 곱함
#          [,1]    [,2] 
#   [1,]  92*72   92*137
#   [2,]  117*72  117*137

# 3. 각 값들을 모든 값의 총합으로 나눔

# 4.결과. 만약 성별이 영향이 전혀 없다면 이렇게 결과가 나와야 함.
chisq(data)


# 5. 여기에 카이제곱 검정을 추가한다.
chisq <- function(Obs){
  Expected <- outer(rowSums(Obs), colSums(Obs))/sum(Obs)
  sum((Obs-Expected)^2/Expected) # 이게 카이제곱 검정
}
chisq(data) # 9.132947

# 6. p value로 유효성을 검사한다. 0.05보다 낮아야 한다.
#전체 - p(카이제곱검정값, (row수-1)*(col수-1))
1-pchisq(9.132947, 1)
# 0.00251047


# !!근데 위에걸 쉽게 계산하는 함수가 따로 존재한다!!
chisq.test(data, correct=FALSE)
# 0.00251
