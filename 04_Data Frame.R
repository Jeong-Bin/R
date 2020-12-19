name <- c('john', 'jaehee', 'juliet', 'james')
sex <- c('f', 'f', 'f', 'm')
occup <- c('althele', 'doctor', 'ceo', 'analyst')
age <- c(40, 35, 43, 29)

# 데이터 프레임을 지정하고 member에 담는다
member <- data.frame(name, age, sex, occup)

member

member[1,] # 1행의 모든 내용

member[,1] # 1열의 모든 내용

member$name  # name의 모든 내용

# john의 sex를 f에서 m으로 바꾸려면 이렇게.
member[1,3] <- 'm'
member
