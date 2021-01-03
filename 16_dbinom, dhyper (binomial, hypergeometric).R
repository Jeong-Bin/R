
# binomial distribution
# ex) 주사위, 동전 등을 던졌을 때 나오는 특정 숫자, 면 등이 나올 확률
# dbinom(성공횟수, 총던진횟수, 성공확률(동전이라면 절반))
dbinom(3, 10, 0.5)

# hypergeometric distribution
# ex) 한 반에 남자 8명, 여자 12명 중에 10명을 선발 했을 때, 3명이 남자일 확률
# dhyper(a의 성공횟수, a의 수, b의 수, 뽑을 a의 수)
dhyper(3, 8, 12, 10)



# 함수와 그래프로 두가지 비교해보기
n=100
approx <- numeric(length=n)
for(i in 1:n){
  approx[i] = dhyper(3, 4*i, 6*i, 10)  #4:6 비율이라서
} #approx는 i가 증가할 때마다 담아주 그릇?

plot(approx[2:100]) # i가1일 때는 확률이 100%이므로 제외
# 전체 수가 증가하면 확률은 감소함

abline(h=dbinom(3, 10, 0.4), col='red')
# dhyper의 사이즈가 커질수록 값이 점점 dbinom 값으로 접근한다.