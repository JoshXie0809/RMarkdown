---
title: "learning_R_3"
author: "謝錚奇＿D54079012"
date: "2020/4/2"
output: html_document
---

# Factor

## factor( ) ,  as.factor( )
```{r}
#factor 最重要的參數
# x vector : which is used to transfer to factor
# levels: 可能值

Yes.Or.No<-c("Yes","No","No","No","Yes")
first.factor<-factor(Yes.Or.No)
first.factor

second.factor <- factor(Yes.Or.No, levels = c("Yes","No"))
second.factor

# 指定缺失的levels值
directions<-c("North","East","West","North","East","West","North", 
              "East","West")

# South?
direction.factor<-factor(directions)
direction.factor

new.direction.factor<-factor(directions, levels=c("North","East","West", "South"))
new.direction.factor

label.direction.factor<-factor(directions, levels=c("North","East","West", "South"), labels = 
                               c('N', 'E', 'W', "S"))
label.direction.factor
# change to numeric 
# N->1
# E->2
# W->3
# S->4
as.numeric(label.direction.factor)
str(label.direction.factor)
```
## Ordered Factor
```{r}
str1<-c("A","B","C","D","D","B","C","D","A")
str1.order<-ordered(str1)
#字母排序
str1.order


str2.order<-factor(str1,levels = c('D','C',"B","A"),ordered = T)
str2.order
#成績排序
which(str2.order >= 'B')#成績B or 以上
```
## table( )
```{r}
first.factor
table(first.factor)
```

