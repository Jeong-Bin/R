# data type
x <- c(1, 2, 3, 4, 6)
y <- c('1', '2', '3', '4', '5')
z <- c('how', 'are', 'you', '?')
length(x)
length(y)

# y ���� ���ڿ��� �ν��ؼ� ����� �� ��
x*y
# string�� R������ character(chr)��� �θ�

# structure(str) : ������ ������ �� �� ����
str(x)
str(y)


# boolean
1+2==3 # TRUE
# =�� �ϳ��� ���� 1+2�� 3�ȿ� �־��� �������� �λ��ع����� ������ �߻��� 
1+5==7 # FALSE

x==y # TRUE  TRUE  TRUE  TRUE FALSE