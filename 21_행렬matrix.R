
# 행렬 계산하기. 담아주는게(A,B..) 일치하지 않아도 된다.
C <- matrix(c(1, -1, 2, 3), nrow=2)
C

# 함수를 이용해 행렬 계산
def_f <- function(A){
  D <- A[1,1]*A[2,2]-A[1,2]*A[2,1]
  return(D)
}
# def_f(B)

# 내장함수를 이용해 행렬 계산
D <- A[1,1]*A[2,2]-A[1,2]*A[2,1]
det(B)




# [1,1]과 [2,2]의 순서를 바꾸고,
# [1,2]과 [2,1]에는 마이너스 붙이기
# 똑같이 A에 담아주면 처음에 [1,1]의 갚이 3으로 바뀐 상태로
# [2,2]에 덮어지기 때문에 그렇게 하면 안 된다.
inv_f <- function(A){
  D <- A[1,1]*A[2,2]-A[1,2]*A[2,1]
  B <- matrix(nrow=2, ncol=2)
  B[1,1] <- A[2,2]
  B[2,2] <- A[1,1]
  B[1,2] <- -A[1,2]
  B[2,1] <- -A[2,1]
  return(B)
}
inv_f(C)

# 검증
C%*%((1/def_f(C))*inv_f(C))
