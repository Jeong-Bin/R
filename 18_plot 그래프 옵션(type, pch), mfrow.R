x <- c(1:10)
y <- x^2-x+10

plot(x,y, type='p', col='blue', pch=1)

# type 종류
# p: 점(디폴트 값) - pch로 점 모양 바꿀 수 있음
# l: 선
# b: 점과 선
# o: 점과 선(오버랩)
# c: 점선
# s: 계단형
# S: 계단형(대문자. 올라가는게 먼저)
# h: 막대형
# n: 아무것도 표시 안 함

par(mfrow=c(2,4)) # 여러개의 그래프를 2행4열로 보기
types=c('p', 'l', 'b', 'o', 'c', 's', 'S', 'h')
for(i in 1:8){
  plot(x,y, type=types[i], col='blue', pch=i)
}

