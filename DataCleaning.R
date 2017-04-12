library(plotly)
library(dplyr)
library(data.table)
Sys.setlocale(category = "LC_ALL", locale = "English_United States.1252")
Sys.setlocale("LC_TIME", "English") 

#Reading data
data <- read.csv("C:/Users/AndreinaDeJ/Documents/Andreina Torres/Academico/coursera/cursos y cursera/Coursera/data scientits specialization/9-Dev eloping data tools/week4/assingment3/AllTweets.csv",header = TRUE)

#data cleaning
date<- as.Date(data$date,"%d %b %Y")
date[is.na(date)] <-as.Date(paste("2016", data$date[is.na(date)]),"%Y %b %d")
date[date=="2016-12-31"] <- "2015-12-31"
data$dateFinal<-date
data2<-data[complete.cases(data),]

data2$DateFinal2<-paste(year(data2$dateFinal),month(data2$dateFinal))
data2$year<-as.character(year(data2$dateFinal))
