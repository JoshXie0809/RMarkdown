---
title: "learning_R_4"
author: "謝錚奇＿D54079012"
date: "2020/4/2"
output: html_document
---
# Data Frame
```{r}
#first dataframe
mit.Name<-c("Kevin","Peter","Frank","Paggie")
mit.Gender<-c("M","M","M","F")
mit.Height<-c(170,165,174,151)

mit.info<-data.frame(mit.Name, mit.Gender, mit.Height)
mit.info

#name, col, row, names
names(mit.info)
colnames(mit.info)
rownames(mit.info)

colnames(mit.info)<-c("Name", "Gender", "Height")
mit.info

```
```{r}
# r order
str(mit.info)

# get item
mit.newinfo<-data.frame(mit.Name, mit.Gender, mit.Height, stringsAsFactors = F)
names(mit.newinfo)<-c("Name", "Gender", "Height")
mit.newinfo[,"Name"]
mit.newinfo[3,]


```

# $ 特殊符號
```{r}
# $ 特殊符號
str(mit.newinfo)
mit.newinfo$Name#快速讀取

```
# rbind add new row data
```{r}
mit.newinfo<-rbind(mit.newinfo,c("Amy","F",162))
new.other.mit<-data.frame(Name = c("Tony","Julia"),
                          Gender = c("M","F"),
                          Height = c(188,123))
mit.newinfo
new.other.mit
mit.stu = rbind(mit.newinfo,new.other.mit)
```
```{r}
mit.stu
# cbind()
mit.stu<-cbind(mit.stu, Weight = c(78,65,80,44,51,89,30))
```
```{r}
mit.stu
t(mit.stu)
```

