# strsplit 을 사용하면 split를 기준으로 문자열을 쪼갤 수 있다.
strsplit("how are you", split="")


# 다시 붙이기.
a <- strsplit("how are you", split="")
paste(a[[1]], collapse ="" )
# a에 담으면서 list로 바뀌고, a[[1]]라고 해야 a list 안의 첫번째 list라고 지목되기 때문!

# 글자 순서 뒤집기
a <- strsplit("how are you?", split="") # "how are you?"는 12자
reversed <- a[[1]][12:1]  # 12번째 문자가 앞으로
paste(reversed, collapse ="" )


# 뒤집기를 함수로 만들어서 사용하기
rev_myf <- function(string){
  a <- strsplit(string, split="")
  reversed <- a[[1]][nchar(string):1]
  paste(reversed, collapse ="" ) # collapse="" -> ""를 없애라
}
rev_myf("how are you? Jack~")
# length가 아닌 nchar를 사용한 이유
# length는 ""로 묶여있으면 1개라고 인식함.


# 단어별로 뒤집기
rev_word <- function(string){
  a <- strsplit(string, split=" ") #  단어별로 쪼개짐
  str_length <- length(a[[1]])  # length는 ""단위로 순서를 매김 ex) "how" -> 1자
  reversed <- a[[1]][str_length:1]
  paste(reversed, collapse =" " )
}
rev_word("how are you?")
