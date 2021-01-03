# t-apply : �� �����͸� �� ��Һ��� �ɰ��� Ư���� ��(���, �� ��)�� ���� �� ���

# ���� �Ǹ����� ��� mpg�� ���ϰ� �ʹٸ�

# ��� 1.
str(mtcars)

# 2��°������ �ִ�(mpg, syl) �����͸� ���
newdata <- mtcars[1:2]
newdata

# cyl�� 4�� ���� ����
newdata$cyl==4  # "cyl�� 4�� �¾�?"��� ����� ���̱⿡ TRUE/FALSE��� ����
mpg_4 <- newdata[which(newdata$cyl==4), ] # �̷��� �ؾ� �����ؼ� �ҷ���
mpg_6 <- newdata[which(newdata$cyl==6), ]
mpg_8 <- newdata[which(newdata$cyl==8), ]

# cbind�� ����� �÷����� ����
cbind(mean(mpg_4$mpg), mean(mpg_6$mpg), mean(mpg_8$mpg))


# ��� 2. t-apply ���
# tapply(����� ������, ��� ��������, ������ ���Ұ���)
tapply(mtcars$mpg, mtcars$cyl, mean)
       