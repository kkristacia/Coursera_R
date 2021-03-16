############################ SUBSETTING ######################################
set.seed(13435)
X <- data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var3"=sample(11:15))
X <- X[sample(1:5),]; X$var2[c(1,3)] = NA
X

X[,1] # subset a column [row, column]
X[,"var1"] # by name, QUOTATIONS?
X[1:2,"var2"]


X[(X$var1 <= 3 & X$var3 > 11),] # subsetting rows w logicals
X[(X$var1 <= 3 | X$var3 > 15),]

### Missing Values NA ###
X[which(X$var2 > 8),] # using which will exclude NA


############################ SORTING ##########################################

# sort will only give chosen column
sort(X$var1)
sort(X$var1,decreasing=TRUE)
sort(X$var2,na.last=TRUE)

# order is to order by certain column
X[order(X$var1),]
X[order(X$var1,X$var3),]

#### VS ARRANGE IN dplyr ####
library(plyr)
arrange(X,var1)
arrange(X,desc(var1))


########################## ADDING ROWS & COLUMNS #############################
X$var4 <- rnorm(5)
X

Y <- cbind(X,rnorm(5))
Y

### Notes and further resources
# R programming in the Data Science Track
# Andrew Jaffe's lecture notes
# http://www.biostat.jhsph.edu/~ajaffe/lec_winterR/Lecture%202.pdf



############################### SUMMARIZE ####################################
head(X, 3)
tail(x, 3)
summary(X)
str(X)
quantile(X$var1, na.rm = TRUE)
quantile(X$var3, probs = c(0.3,0.75, 0.99))

# make table
table(X$var3, useNA = "ifany")
?table
table(X$var1, X$var3) # 2d table to see rel between 2 var


############################ Missing Values ###################################
sum(is.na(X$var2))
any(is.na(X$var2))
all(X$var1>0)
colSums(is.na(X))
all(colSums(is.na(X)))


X[which(X$var2 > 8),] # using which will exclude NA

####### Finding values w Specific Characteristics #########
table(X$var1 %in% c(3,4))
X[X$var1 %in% c(3,4),]


###### Cross Tabs ######
xt <- xtabs(Freq ~ Gender + Admit,data=DF)
# check lecture notes

###### flat tables #####
# ftable()

###### size of data ####
fakeData = rnorm(1e5)
object.size(fakeData)
print(object.size(fakeData),units="Mb")