##데이터프레임
ID <- c(1,2,3,4,5,6,7,8,9,10)
SEX <- c("f","M","f","M","M","f","f","f","M","f")
AGE <- c(50,40,28,50,27,23,56,47,20,38)
AREA <- c("서울","경기","제주","서울","서울","서울","경기","서울","인천","경기")
dataframe_ex <- data.frame(ID,SEX,AGE,AREA)
dataframe_ex
View(dataframe_ex)
# 변수 속성 확인하기 (p.97)
str(dataframe_ex)
dataframe_ex$ID
print(dataframe_ex$ID)
print(dataframe_ex$SEX)
print(dataframe_ex$AGE)
print(dataframe_ex$AREA)
##변수별 평균합
mean(dataframe_ex$AGE)
summary(dataframe_ex) #summary 기초통계량을 알려준다.
##범주형 다루기
##table()
# 성별 빈도
sex_freq <- table(SEX)
print(sex_freq)
# 지역 빈도
area_freq <- table(AREA)
print(area_freq)
#성별과 지역 교차표
table(SEX, AREA)
sex_area_table <- table(SEX< AREA)
print(sex_area_table)
x<-matrix(1:10, nrow = 5, ncol = 2)
print(x)
#행합 구하기
row_sums<-c(nrow(x))
for(i in 1:nrow(x)){
  row_sums[i]<-sum(x[i,])
}
print(row_sums)
#열합 구하기
col_sums<-c(ncol(x))
for(i in 1:ncol(x)){
  col_sums[i]<-sum(x[,i])
}
print(col_sums)
##apply()
##1 : 행 합, 평균
apply(x,1,sum)
apply(x,1,mean)
##2 : 열 합
apply(x,2,sum)
apply(x,2,mean)