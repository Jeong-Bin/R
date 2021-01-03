# dotchart : plot �׷����� ���������
# plot �� X�� ���ӵ� ���� �� ����ϰ�
# dotchart�� x�� ī�װ���(����)���� �� �����


plot(mtcars$mpg)  # mtcars �����Ϳ��� mpg(����)�÷��� �����Ͷ�

# ���̸��� �÷����� �ƴ϶� row�� �̸��̱� ������ �̰��� �󺧷� ������ش�.
dotchart(mtcars$mpg, labels=row.names(mtcars), cex=0.7) # cex�� ��Ʈũ��

# mpg�� ���� �� ���� ������ ����. order: ������� ������
carmpg <- mtcars[order(mtcars$mpg), ]
                    #[�ο�, �÷�]

# cyl(�Ǹ���)�� 4, 6, 8�������� ���� �ִµ�,
# �̰� ���ӵ� ���� �ǹ��ϴ°� �ƴϴ� factorȭ ������� �Ѵ�.
carmpg$cyl <- factor(carmpg$cyl)

# cyl���� �� �ο�
carmpg$color[carmpg$cyl==4] <- "blue"
carmpg$color[carmpg$cyl==6] <- "green"
carmpg$color[carmpg$cyl==8] <- "red"

# mpg���� �����ϰ�, cyl���� ���� �� ������
dotchart(carmpg$mpg, labels=row.names(carmpg), cex=0.7, color=carmpg$color)

# cyl ���� �׷��� ����
dotchart(carmpg$mpg, labels=row.names(carmpg),
         groups=carmpg$cyl, cex=0.7,
         xlab="Miles Per Gallon",  # x�� �̸� �߰�
         color=carmpg$color,
         main="Milage depending on numbers of cylinder")  # �׷����� ���� �߰�

# 4������ ���� ���� 8������ ���� �� ���ٴ� ���� �� �� �ִ�.
         