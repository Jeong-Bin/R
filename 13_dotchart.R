# dotchart : plot 그래프와 비슷하지만
# plot 은 X가 연속된 수일 때 사용하고
# dotchart는 x가 카테고리(문자)형일 때 사용함


plot(mtcars$mpg)  # mtcars 데이터에서 mpg(연비)컬럼을 가져와라

# 차이름은 컬럼값이 아니라 row의 이름이기 때문에 이것을 라벨로 만들어준다.
dotchart(mtcars$mpg, labels=row.names(mtcars), cex=0.7) # cex는 폰트크기

# mpg가 작은 것 부터 데이터 정렬. order: 순서대로 나열함
carmpg <- mtcars[order(mtcars$mpg), ]
                    #[로우, 컬럼]

# cyl(실린더)은 4, 6, 8기통으로 값이 있는데,
# 이건 연속된 수를 의미하는게 아니니 factor화 시켜줘야 한다.
carmpg$cyl <- factor(carmpg$cyl)

# cyl별로 색 부여
carmpg$color[carmpg$cyl==4] <- "blue"
carmpg$color[carmpg$cyl==6] <- "green"
carmpg$color[carmpg$cyl==8] <- "red"

# mpg별로 정렬하고, cyl별로 색을 준 데이터
dotchart(carmpg$mpg, labels=row.names(carmpg), cex=0.7, color=carmpg$color)

# cyl 별로 그룹을 나눔
dotchart(carmpg$mpg, labels=row.names(carmpg),
         groups=carmpg$cyl, cex=0.7,
         xlab="Miles Per Gallon",  # x축 이름 추가
         color=carmpg$color,
         main="Milage depending on numbers of cylinder")  # 그래프에 제목 추가

# 4기통은 연비가 좋고 8기통은 연비가 안 좋다는 것을 알 수 있다.
         