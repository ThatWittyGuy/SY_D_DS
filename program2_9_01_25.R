# Atharva Salitri CSAI-B Roll No. 37
# Data Objects
# 1. Vectors
a <-3
a

# By using colon operator
a <- 4:12
a
a <- 2.2:8.2
a
a <- 2.2:9.1

# by using sequence operator
w=seq(2,20,4)
w

# Using Concatenation command
x=c(1.1,2.3,3.4,4.2)
x
length(x)
p <- c(1, 2, "d", 4, 6, "g")
p
class(p)

# using rep command
t = rep(2,5)
t

# accessing vector elements using position
p=c("jan","feb","mar","apr","may","june","july","aug","sept","oct","nov","dec")
print(p)
a <-p[2] # slicer []
a
c <- p[c(1,12)]
c

# negative index discarding
d<-p[c(-5,-6,-7)]
d

# with logical operator
q<-c(1:12)
t<-q[c(5:9)]
t
t[t>6]

# modifying vector
x <- c(-3,-2,-1,0,1,2,3)
x
x[4] = 100
x

# Sorting the vector
q <- 1:12
q
g=sort(q, decreasing=TRUE)
g
f=sort(q, decreasing=FALSE)
f

# maximum and minimum and mean value
s <- -13:19
max(s)
min(s)
mean(s)
median(s)
mode(s)

# performing arithmetic operations
v1<-c(1,3,5,4,9)
v2<-c(1,2,3,4,5)

v1+v2 ## Addition
v1-v2 ## Subtraction
v1*v2 ## Multiplication
v1/v2 ## Division
v1%%v2 ## Gives the remainder
sqrt(v1) ## square root
v1^2  ## square


# 2. List
t=list(1:4,5:8)
t

v1=c("mon","tue","wed")
v2=c(T,F)
v3=1:10
f=list(v1,v2,v3)
f
length(f)


# 3. Matrix 
m <- matrix(1:6,2,3)
m

m<-matrix(1:6,nrow=2,ncol=3,byrow=TRUE) ## Enters row wise.
m

d<-c(2,5,6)
e<-c(9,5,5)
m<-matrix(c(d,e),2,3)
m

# dimension attribute
d <- 1:8
dim(d)<-c(2,4) ## Considers rows as 2 and columns as 4.
d
dim(d)

# cbind and rbind function
## cbind: The elements are placed columnwise.
v<-c(3,5,6,6,7)
w<-c(4,7,8,9,0)
m<-cbind(v,w)
m
## rbind : The elements are placed row wise.
m<-rbind(v,w)
m

# accessing matrix
m<-matrix(1:16,4,4)
m
z<-m[4,3]
z
s<-m[,3] ## Gives all rows and 3rd column element
s
q<-m[1,] ## Gives 1st row and all column elements.
q

# operations on matrix
a<-matrix(1:4,2,2) ## declaring the matrix a
a
b<-matrix(5:8,2,2) ## declaring the matrix b
b
c<-a+b ## adding two matrices
c
d<-a-b ## subtracting two matrices
d
e<-a*b ## Element by element multiplication
e
f<-a%*%b ## Matrix multiplication
f
t(f) ## Gives transpose of matrix
solve(a) ## Gives inverse of matrix.

# 4. DataFrame
match_stat<-data.frame(name=c("Tendulkar","Ponting","kallis","Dravid","cook"),matches=c(200,168,166,164,161),innings=c(329,287,280,286,291),highestscore=c(248,257,224,270,294),avg=c(53.78,51.85,55.37,52.31,45.35))
match_stat

str(match_stat) # structure
summary(match_stat) # summary

# accessing data from dataframe
## To get name of the batsman and his corresponding number of innings and average runs.
i<-data.frame(match_stat$name,match_stat$innings,match_stat$avg)
i

## To find Tendulkar highest score and kallis average. i.e accessing 1st and 3rd row and 4th and 5th column.
res1<-match_stat[c(1,3),c(4,5)]
res1
