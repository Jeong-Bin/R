
# Aids2��� �����͸� ������ٵ�, ���� MASS ��Ű���� �ٿ�޾ƾ� �Ѵ�.
install.packages('MASS')
library(MASS)
data(Aids2)
str(Aids2)
?Aids2 # ������ ���� ����
head(Aids2)

# summary�� �� �÷��� ������ �뷫������ �ľ��� �� �ִ�.
summary(Aids2)

# summary�� ���� 0���� ����� �ִ�? -> Ȯ���غ���
Aids2[which(Aids2$age==0), ]



# ����ִ� ����� �� ���ΰ�?
Alive <- Aids2[which(Aids2$status=='A'), ]
Alive
# ���� �����?
Dead <- Aids2[which(Aids2$status=='D'), ]
Dead

# aggregate : �����Լ�
#         ã�� ��,   � ��������,    � ����
aggregate(Alive$age, by=list(Alive$sex), mean)
aggregate(Dead$age, by=list(Dead$sex), mean)

# ����, ���� �� ���� �� ���� ����
aggregate(Aids2$age, by=list(Aids2$sex, Aids2$status), mean)