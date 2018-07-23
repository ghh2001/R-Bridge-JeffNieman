#Week2 Assignment Solution
library(tidyverse)
getwd()
# set working directory
setwd ("D:/1DSRJeffereyNiemanGH/RJefferyNiemanWeek2")
getwd()

# Use the summary function to gain an overview of the data set. Then display the mean and median for at least two attributes
mydata = read_csv ("datasets.csv")


summary(mydata)
str(mydata)
mydata
D <- mydata

str(D)

D %>% summarise((mean(Rows)))
D %>% summarise ((mean(Cols)))
D %>% summarise ((median(Rows)))
D %>% summarise ((median(Cols)))

#2. Create a new data frame with a subset of the columns and rows. Make sure to rename it.
# 3. Create new column names for the new data frame. 

dfgh <- data.frame(D)
dfgh

dfNew <- dfgh %>% select (RowsNew = Rows, ColsNew = Cols,Package)
dfNew

dfNew2 <- dfNew %>% filter (RowsNew >= 1600)

head(dfNew2)

summary (dfNew2)
str(dfNew2)

dfNew2

#4. Use the summary function to create an overview of your new data frame. The print the mean and median for the same two attributes. Please compare. 
dfNew2 %>% summarise(mean(RowsNew))
dfNew2 %>%  summarise((mean(ColsNew)))
dfNew2 %>%  summarise((median(RowsNew)))
dfNew2 %>%  summarise((median(ColsNew)))

# 5.to change the value of DAAG in the package into DAAGpack
#For at least 3 values in a column please rename so that every value in that column is renamed.

dfNew2$ Package [dfNew2$Package== 'DAAG'] <-'DAAGPack'
dfNew2$ Package [dfNew2$Package== 'boot'] <-'bootPack'
dfNew2$ Package [dfNew2$Package== 'Ecdat'] <-'EcdatPack'
rbind (head(dfNew2), tail(dfNew2))
dfNew2
