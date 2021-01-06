mtcars

# cyl별로 mpg의 평균을 출력하라

# 방법 1.
aggregate(mtcars$mpg, by=list(mtcars$cyl), mean)



# 방법 2. if문 사용
mean_by_cyl <- function(x) {
  if(x==4) { 
    mean(mtcars[which(mtcars$cyl==4), ][,1]) 
  # 평균 데이터값[cyl이4인 행들의 위치]  0행1열(mpg)
  # aggregate(mtcars$mpg, by=list(mtcars$cyl), mean)[1,2] 이걸 넣어도 됨
    
  } else if(x==6) { 
    mean(mtcars[which(mtcars$cyl==6), ][,1]) 
    
  } else if(x==8) {
    mean(mtcars[which(mtcars$cyl==8), ][,1]) 
    
  } else {print('Wrong number!')}
}

mean_by_cyl(4)
mean_by_cyl(6)
mean_by_cyl(8)
mean_by_cyl(9)



# 방법 3. if문에 return 추가, 2째자리 반올림
mean_by_cyl <- function(x) {
  if(x==4) { 
    a <- round(mean(mtcars[which(mtcars$cyl==4), ][,1]), 2) 
    return(paste('The avg mile per gallon of',x,'cylinder car is', a))
    
  } else if(x==6) { 
    b <- round(mean(mtcars[which(mtcars$cyl==6), ][,1]), 2)
    return(paste('The avg mile per gallon of',x,'cylinder car is', b))
    
  } else if(x==8) {
    c <- round(mean(mtcars[which(mtcars$cyl==8), ][,1]), 2) 
    return(paste('The avg mile per gallon of',x,'cylinder car is', c))
    
  } else {print('Wrong number!')}
}

mean_by_cyl(4)
mean_by_cyl(6)
mean_by_cyl(8)
mean_by_cyl(9)




# 방법 4. 간단히
mean_by_cyl <- function(x) {
    mean(mtcars[which(mtcars$cyl==x), ][,1])
}

mean_by_cyl(4)
mean_by_cyl(6)
mean_by_cyl(8)
mean_by_cyl(9)

