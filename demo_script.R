
# CRAN NTU mirror https://cran.csie.ntu.edu.tw/
# Rstudio https://posit.co/downloads/
# online resources https://stackoverflow.com/
# https://github.com/ujjwalkarn/DataScienceR
# https://biocorecrg.github.io/CRG_RIntroduction/
# practices https://app.datacamp.com/learn/courses/data-science-r-basics

# R, Rstudio and IDE
# there are many ways to do thing
# style, code etiquette  https://style.tidyverse.org/syntax.html

#environment: grid or list?

# hot keys 
# crtl + L
# crtl + shift + enter
# tab
# alt + -


# --------------- ---codes start here --------------------



#function
mean(1:10, na.rm= TRUE)

#load packages
library(rmarkdown)
library(tidyverse) #整合套件
library(haven) #讀取spss, stat檔案 (with tibble) 
library(sjlabelled)
library(nycflights13)



#load .sav file with "read_sav" function from package.haven and assign it as "w5_taiwan"
w5_taiwan <- haven::read_sav("W5_Taiwan_coreQrelease_20190805.sav")
w5_taiwan_2 <- sjlabelled::read_spss("W5_Taiwan_coreQrelease_20190805.sav")


#load data set  
data(airaquality) #內建資料集
data(iris) #內建資料集

#data types
# numeric, logical, character, factor, integer, complex, raw
class(airquality$Wind)
class(airquality)


mid_tern <- FALSE #logical TRUE/FALSE 都要大寫
name <- "陳明祺" #character

#mean, median, qunatile, sd, var

mean(airquality$Wind)
median(airquality$Wind)
quantile(airquality$Wind, probs = c(0.25, 0.5, 0.75))
quantile(airquality$Wind, 0.5)
sd(airquality$Wind)
var(airquality$Wind)

#遺漏植NA
mean(airquality$Ozone, na.rm = TRUE)
cor(airquality$Wind, airquality$Ozone, method = "pearson", use= "na.or.complete") #計算correlation的遺漏植處裡


#basic arithmetic
A <- 1
B <- 2
C <- 87
D <- "NTHU沒有電"
E <- 9
G <- 9L

power_status <- FALSE
students_status <- ""

A + B
C <- A + B 

if(A < B){
  
  C <- 78
  
}


if(power_status == FALSE) {
  
  students_status <- "QQ"
  
}



candle <- c(4.10, 4.09, 3.98, 4.26, 4.14, 4.25, 4.24, 4.08, 4.25, 4.28, 3.97, 4.18, 4.22, 4.25, 4.26, 4.00, 4.10, 4.24, 4.27, 4.36)


# View(w5_taiwan)
# utils::View(w5_taiwan)
