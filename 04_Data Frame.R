name <- c('john', 'jaehee', 'juliet', 'james')
sex <- c('f', 'f', 'f', 'm')
occup <- c('althele', 'doctor', 'ceo', 'analyst')
age <- c(40, 35, 43, 29)

# ������ �������� �����ϰ� member�� ��´�
member <- data.frame(name, age, sex, occup)

member

member[1,] # 1���� ��� ����

member[,1] # 1���� ��� ����

member$name  # name�� ��� ����

# john�� sex�� f���� m���� �ٲٷ��� �̷���.
member[1,3] <- 'm'
member