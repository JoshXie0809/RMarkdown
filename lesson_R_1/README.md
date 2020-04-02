---
title: "learningR_1"
author: "joshxie"
date: "2020/3/12"
output: html_document
---
# R learning lecture 1
## 向量物件 


```{r}

x<-1:10
print(x)

```


```{r}

x<-11:13
print(x)

```


```{r}

x<--1:-5
print(x)

```
也可以是-1

```{r}

x<- -1.7:-5.3
print(x)

```

不足1, 不顯示

```{r}

x<-1:5
y<-x+3
print(x)
print(y)

```

每個都 + 3


```{r}

x<-1:3
y<-1:6+x
print(x)
print(y)

```

3 and 6, 6=3*k
if b=a*K?

```{r}

x<-1:4
y<-1:6+x
print(x)
print(y)
```
error!!!

## 建立 seq( ) function 
```{r}
seq(1,9)
```
from 1 to 9

```{r}
seq(1, 9, by = 2)
```

from 1 to 9, by 2

```{r}
seq(1, 9, by = pi)
```

from 1 to 9, by $\pi$ 

```{r}
seq(1, 9, by = 0.5)
```

from 1 to 9, by 0.5

```{r}
seq(1, 9, length.out = 4)
```

from 1 to 9, has four numbers.


##  c( ) function 
```{r}
baskest.NBA2016.Lin<-c(7,8,6,11,9,12)
print(baskest.NBA2016.Lin)
```

建立向量

```{r}
sum(baskest.NBA2016.Lin)
```


```{r}
max(baskest.NBA2016.Lin)
```


```{r}
min(baskest.NBA2016.Lin)
```

## prod()

```{r}
prod(1:2)
prod(1:3)
prod(1:4)
prod(1:5)
prod(1:6)
```

## cum( )

```{r}
baskest.NBA2016.Jordon<-c(10,5,9,15,7,11)
cumsum(baskest.NBA2016.Jordon)
cumprod(baskest.NBA2016.Jordon)
cummax(baskest.NBA2016.Jordon)
cummin(baskest.NBA2016.Jordon)
```

## diff( )

```{r}
baskest.NBA2016.Jordon
diff(baskest.NBA2016.Jordon)
```

差距

## 向量物件排序函數

sort(x,decreasing = <font style="color:red">FALSE</font>) 小排到大
```{r}
baskest.NBA2016.Jordon
sort(baskest.NBA2016.Jordon)
```

## sort(x,decreasing = <font style="color:red">TRUE</font>) 大排到小
```{r}
baskest.NBA2016.Jordon
sort(baskest.NBA2016.Jordon, decreasing = TRUE)
```

## rank() 排名
從小到大的排名

```{r}
baskest.NBA2016.Jordon
rank(baskest.NBA2016.Jordon)
```

## rev( ) 顛倒func
```{r}
x<-c(7,11,4,9,6)
x
rev(x)
```

## length 計算向量物件的個數

```{r}
baskest.NBA2016.Jordon
length(baskest.NBA2016.Jordon)
```


## sd 標準差 var 變異數

```{r}
sd(c(11,15,8))
var(14:16)
```

## Inf -Inf NA 都是數字

```{r}
max(c(43,98,Inf))
min(c(33,98,Inf))
sum(c(43,98,Inf))

min(c(43,98,-Inf))

sum(c(43,9999999999999999999999,-Inf))
```


## 如果向量含有NA , result=NA
```{r}
max(c(43,98,Inf,NA))
sum(c(43,98,Inf,NA))
```

## 若想向量含有NA , 也可以運算 ` na.rm = T` or `na.rm = TRUE`

```{r}
max(c(43,98,Inf,NA),na.rm = T)
sum(c(43,98,1221,NA),na.rm = TRUE)
```

值得注意的是：diff( ), cummax( )無法使用

## R 資料屬性

integer 整數

double 小數字

character 字串

```{r}
x<-c("Hello R World")
x
length(x)
nchar(x)

x1<-c('H','e','l','l','o')
x1
length(x1)
nchar(x1)

x2<-c('Hello',"r","world")
x2
length(x2)
nchar(x2)
```


## 探索物件元素的屬性

is.integer(): 是否整數
is.numeric(): 是否數字
is.double():  是否雙倍精確實數
is.character(): 是否字串

```{r}
x1<-c(1:5)
x2<-c(1.5, 2)
x3=c('Hello',"r","world")
is.integer(x1)
is.integer(x2)
is.integer(x3)
is.numeric(x1)
is.numeric(x2)
is.numeric(x3)
is.double(x1) 
is.double(x2) 
is.double(x3) 
is.character(x1)

is.character(x2)

is.character(x3)
  
```


## 探索物件結構
```{r}
baskest.NBA2016.Lin

str(baskest.NBA2016.Lin)
str(x1)
str(c(2.5,1.5))
str(x3)
```

```{r}
class(baskest.NBA2016.Lin)
class(x1)
class(c(2.5,1.5))
class(x3)
```

## 物件元素的存取
```{r}
number.List <- 1:25
number.List

```

## 下標[n]
```{r}
number.List[1] #第一個東西
number.List[13] #第13個東西
number.List[c(1,12,17)] #第1,12,17個東西 # 但索引只能為一個
 # c() 取子集

```

## 負索引的使用 ： 扣除

```{r}
number.List[-1] #扣除第一個東西
number.List[-13] #扣除第13個東西
number.List[-c(1:12)]
```


## 修改 向量

```{r}
baskest.NBA2016.Jordon 
##備份
copy.Jordon<-baskest.NBA2016.Jordon

## 修改
copy.Jordon[3]<-9090909
copy.Jordon

```

## 邏輯 向量： TRUE & FALSE
```{r}
baskest.NBA2016.Jordon
which(baskest.NBA2016.Jordon > 10) 
# 告訴你哪幾個索引>10

baskest.NBA2016.Jordon[which(baskest.NBA2016.Jordon > 10) ] 
# Jordon[4] & Jordon[6]
```
 
## Inf -Inf NA 處理
```{r}
x<-c(1,20,332,NA,Inf)
x[x>10]
x[x<10]
# NA ??!  >10? or <10?
```


## any( ) 的運用： 只要一個TRUE = 傳回TRUE
```{r}
x = c(1,11,111,111,11111,999999999999999)
any(x>999999)

```
## 不同向量長度 的向量 相成：必須是倍數關係
```{r}
basket.ball.Jordon<-c(1,2,3,4,5,6)
# odd ->2pt; even->3pt
score <- basket.ball.Jordon*c(2,3)

score.Averge.Jordon <- sum(score)/6
score.Averge.Jordon
```


## 向量物件 的元素名
```{r}
baskest.NBA.Jordon = c(first = 20, second = 30, third =35)
baskest.NBA.Jordon[1]
baskest.NBA.Jordon[2]
baskest.NBA.Jordon[3]
```
## names( )
```{r}
names(baskest.NBA.Jordon)
## names() generate a c()->vector
names(baskest.NBA.Jordon)[c(1,2)] = c("1st", '2nd')
names(baskest.NBA.Jordon)
```

## 月曆
```{r}
month.name # r 內建
month.DATA = c(31,28,31,30,31,30,31,31,30,31,30,31)
names(month.DATA) = month.name
month.DATA
# find day>30  
names(month.DATA[month.DATA>30])
```

```{r}
islands
## rank
new.islands.data = sort(islands,decreasing = TRUE)
new.islands.data
```












