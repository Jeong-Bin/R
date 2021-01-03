# ggvis : 그래프를 그리는 패키지. 겹쳐서 그릴 수 있다는 장점이 있음

# ggvis 다운받고 불러오기
install.packages("ggvis")
library(ggvis)

# 1. plot을 사용하는 방법
attach(mtcars) # attach를 사용하면 이제부터는 자동으로 변수 앞에 mtcars$를 붙였다고 여김
plot(mpg, wt)


# 2. ggvis를 사용하는 방법
# %>% (파이프라인) 데이터를 기억해서 그 이후엔 생략하도록 함
# 변수 앞에 ~ 입력해줘야 함
mtcars %>% ggvis(~mpg, ~wt) 
# 이것만 입력하면 Guessing layer_points() 라고 경고가 뜨는데 그냥 뒤에 붙여주면 됨 

mtcars %>% ggvis(~mpg, ~wt, fill:="red") %>% layer_points() %>% layer_smooths()
# layer_lines(), layer_bars(), layer_smooths() 도 사용할 수 있음
# fill로 색 부여할 때 : 쓰는거 주의!

# 다른 변수를 추가할 때!
mtcars %>% ggvis(~mpg, ~wt, fill=~cyl) %>% layer_points() %>% layer_smooths()
# cyl을 연속형 변수로 인식해서 그라데이션이 생김

# cyl을 factor형으로 바꾸고 다시 실행!
mtcars$cyl <- factor(mtcars$cyl)
mtcars %>% ggvis(~mpg, ~wt, fill=~cyl) %>% layer_points() %>% layer_smooths()

# X,y축을 더 촘촘하고 디테일하게 표시하려면
mtcars %>% ggvis(~mpg, ~wt, fill=~cyl) %>%
  layer_points() %>% layer_smooths() %>%
  add_axis("x", values=c(10:35), title="MPG") %>% # 타이틀은 그냥 대문자로 변경
  add_axis("y", subdivide=4, title="WT") 
# subdivide는 수치는 더 안 나오고 눈금을 추가함


