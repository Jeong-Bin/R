# paste : 두 문자를 합침. 근데 중간에 띄어쓰기가 들어감

hi <- paste("he","llow")
hi

# 구분자는 아래처럼 설정하면 됨
hi <- paste("he","llow", sep="")
hi

#응용1 - 인사
paste(hi, "Jack. What's up?", sep=", ")

#응용2 - 1학년 몇 반?
paste("1", 1:10, sep="-")

#응용3 - 결과문장에 큰따옴표 빼기
a <- paste("The value of 'pi' is", pi, "endless!" )
noquote(a)  # 방법1
print(a, quote=FALSE)  # 방법2


#----------------------------------------------------

# 로우 추출하기 (mtcars는 내장된 기본 데이터)
cars <- rownames(mtcars)
cars
# 컬럼 추출하기
cars_c <- colnames(mtcars)
cars_c

# 문자의 길이 보기
nchar(cars)
# 가장 긴 문자 보기
cars[which(nchar(cars)==max(nchar(cars)))]

#----------------------------------------------------

# 특정 문자를 가진 단어 가져오기
# 대소문자 구별함
grep("z", cars, value = TRUE)

# 대소문자 둘 다 불러오려면
grep("[vV]", cars, value = TRUE)

# 해당 알파벳을 전부 소문자로 바꾸기. 대문자로는 toupper
grep("t", tolower(cars), value = TRUE)

# TOYOTA가 들어간 문자 모두 불러오기
grep("TOYOTA", toupper(cars), value = TRUE)

#----------------------------------------------------

# str_count(스트링카운트)를 사용하려면 stringr 을 설치해야함
install.packages("stringr")
library(stringr)

# 각 문자들이 t를 몇 개 가지고있는가?
str_count(cars, "t")

# TOYOTA가 들어간 문자는 총 몇개 있는가?
sum(str_count(toupper(cars), "TOYOTA"))

