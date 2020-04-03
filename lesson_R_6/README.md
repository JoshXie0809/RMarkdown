---
title: "learning_R_6"
author: "謝錚奇＿D54079012"
date: "2020/4/3"
output: html_document
---

# 字串
```{r}
x<-c("Hello R World")
str(strsplit(x, " "))
#strsplit() 切割
xVector<-strsplit(x, " ")[[1]]
xVector

# to-upper全部大寫
xVector
toupper(xVector)

#to-lower全部小寫
tolower(xVector)
```

# 字串連接

```{r}

coffee.fail<-paste(c(
  "Boiling","coffee","is","hot"))
coffee.fail#fail

coffee.str<-paste(c("Boiling","coffee","is","hot"), collapse = " ")
coffee.str

coffee.str<-paste(c("Boiling","coffee","is","hot"), collapse = NULL)
coffee.str#fail
# 可知collapse需要

str1<-letters[1:6]
str2<- 1:6
paste(str1, str2, sep = "")
str3<-1:4
# items numbers is diff
paste(str1, str3, sep = "")

#poker
cardsuit <- c("Spades", "Hearts", "Diamonds", "Clubs")
cardnum <- c("A", 2:10, "J", "Q", "k")
deck <- paste(rep(cardsuit, each=13), cardnum, sep = ''  )
data.frame(matrix(deck, nrow = 4, byrow = T))
```

## 字串排序
```{r}
coffee.str
sort(coffee.str)

sort(c("Bb","bb")) #小寫排在前
sort(c("Bb","bb"), decreasing = T)
```

## 蒐集字串內容
```{r}
state.name
# substr() 一個字 中間
substr(state.name, start=2, stop=4)# 字串2:4
#"Alabama"-> "lab" 
#"Alaska" -> "las"

#grep(pattern,x)
grep("M",state.name)
state.name[grep("M",state.name)]

#sub(pattern, replacement, x) replace 
#when replacement is "" means delete
sub("New", "Old", state.name)
sub("A", "", state.name)

strtest <- c("test1.xls", "test2.xls", "test3.xls")
strtest <- sub("test", "", strtest)
sub(".xls", "", strtest)
```

## regular expression
```{r}
# | = \ = or
state.name[grep("New|South",state.name)]#FIND state with New or South
str4 <- c("ch6.xls","ch7.xls","ch8.xls","ch16.xls","ch17.xls","ch18.xls")
str4[grep("(ch1|ch)(6|7).xls",str4)]
```

