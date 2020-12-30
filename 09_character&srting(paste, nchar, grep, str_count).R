# paste : �� ���ڸ� ��ħ. �ٵ� �߰��� ���Ⱑ ��

hi <- paste("he","llow")
hi

# �����ڴ� �Ʒ�ó�� �����ϸ� ��
hi <- paste("he","llow", sep="")
hi

#����1 - �λ�
paste(hi, "Jack. What's up?", sep=", ")

#����2 - 1�г� �� ��?
paste("1", 1:10, sep="-")

#����3 - ������忡 ū����ǥ ����
a <- paste("The value of 'pi' is", pi, "endless!" )
noquote(a)  # ���1
print(a, quote=FALSE)  # ���2


#----------------------------------------------------

# �ο� �����ϱ� (mtcars�� ����� �⺻ ������)
cars <- rownames(mtcars)
cars
# �÷� �����ϱ�
cars_c <- colnames(mtcars)
cars_c

# ������ ���� ����
nchar(cars)
# ���� �� ���� ����
cars[which(nchar(cars)==max(nchar(cars)))]

#----------------------------------------------------

# Ư�� ���ڸ� ���� �ܾ� ��������
# ��ҹ��� ������
grep("z", cars, value = TRUE)

# ��ҹ��� �� �� �ҷ�������
grep("[vV]", cars, value = TRUE)

# �ش� ���ĺ��� ���� �ҹ��ڷ� �ٲٱ�. �빮�ڷδ� toupper
grep("t", tolower(cars), value = TRUE)

# TOYOTA�� �� ���� ��� �ҷ�����
grep("TOYOTA", toupper(cars), value = TRUE)

#----------------------------------------------------

# str_count(��Ʈ��ī��Ʈ)�� ����Ϸ��� stringr �� ��ġ�ؾ���
install.packages("stringr")
library(stringr)

# �� ���ڵ��� t�� �� �� �������ִ°�?
str_count(cars, "t")

# TOYOTA�� �� ���ڴ� �� � �ִ°�?
sum(str_count(toupper(cars), "TOYOTA"))
