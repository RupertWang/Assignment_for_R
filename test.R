install.packages('ggplot2')
v=c(2,3,4,5,6)
v[2:5]
v[c(2,3,4)]
v[-2]
which(v==3)
which.max(v)

set.seed(1)
runif(3,min=1,max=2)
?set.seed

data1=read.csv("http://www.macalester.edu/kaplan/ISM/datasets/swim100m.csv")

set.seed(100)
x=rnorm(100,mean=100,sd=10)
set.seed(100)
y=rnorm(100,mean=10,sd=5)
plot(hist(x,breaks=20))
density(x)
plot(x)

x=matrix(1:20,nrow=5,ncol=4,byrow=TRUE)
x
y=matrix(1:20,nrow=5,ncol=4,byrow = FALSE)
y
y[2,]
x[2,c(2,4)]
rnames=c("apple","banana","orange","melon","corn") 
cnames=c("cat","dog","bird","pig")
z=matrix(20:40,nrow=5,ncol=4,byrow=TRUE)
rownames(z)=rnames
colnames(z)=cnames
z

dim1 = c("A1", "A2") 
dim2 = c("B1", "B2", "B3") 
dim3 = c("C1", "C2", "C3", "C4") 
dim4 = c("D1", "D2", "D3") 
z = array(1:72, c(2, 3, 4, 3), dimnames=list(dim1, dim2, dim3, dim4)) 
z

patientID = c(1, 2, 3, 4) 
age = c(25, 34, 28, 52) 
diabetes = c("Type1", "Type2", "Type1", "Type1") 
status = c("Poor", "Improved", "Excellent", "Poor") 
patientdata = data.frame(patientID, age, diabetes, status) 
patientdata
patientdata[1:3]
patientdata[1:3,c(1,2)]

mtcars
attach(mtcars)
mpg

mylist=list(mtcars,x)
a=mylist[2]
x[1,1:3]

par(mfrow=c(2,2)) 
plot(rnorm(50),pch=17) 
plot(rnorm(20),type="l",lty=5) 
plot(rnorm(100),cex=0.5)

par(mfrow=c(1,1))
plot(rnorm(50),pch=17) 
title(main='normal dist')

ve=(1,2,3)
ve

i=0
if(i==1){
  print('1')
}else if(i==0){
  print('0')
}else{
  print('else')
}

myfunction=function(x,a,b,c){
  return(a*sin(x)^2-b*x+c)
}

curve(myfunction(x,20,3,4),xlim=c(1,20))

for(i in 1:10){
  if(i>5){
    print('big')
  }else{
    print('small')
  }
}

install.packages('vcd')
library(vcd)
counts=table(Arthritis$Improved)
counts
par(mfrow=c(2,2))
barplot(counts,main='Simple Bar Plot',xlab='Frequency',ylab='Type')
barplot(counts,main='Simple Bar Plot',xlab='Frequency',ylab='Type',horiz=TRUE)

counts=table(Arthritis$Improved, Arthritis$Treatment) 
counts
barplot(counts,main='Stack Bar Plot',xlab='Treatment',ylab='Frequency',col=c('Green','Blue','Red'),legend=rownames(counts))

acv=c(1,2,3)
bcv=c(2,3,4)
print(acv.*bcv)

install.packages('plotrix')
par(mfrow=c(2,2))

slices=c(10, 12,4, 16, 8)
lbls=c("US", "UK", "Australia", "Germany", "France") 
pie(slices,labels=lbls,edges=300,radius=2)
pct=round(slices/sum(slices)*100)

lbls2=paste(lbls,'',pct,'%',sep='')
pie(slices,labels=lbls2,co=rainbow(length(slices)))
legend(lbls)

pie3D(slices,labels=lbls2,explode = 0.1,labelcex = 0.6)

head(mtcars)
attach(mtcars)
table(cyl)
table(cut(mpg,seq=(10,34,by=2)))

table(x)
set.seed(123)
a=matrix(sample(100,15),ncol=5,nrow=3)
set.seed(234)
b=matrix(sample(200,15),ncol=5,nrow=3)
t(a)%*%b
colMeans(a)

fact=factor(rep(c(1,2,3),times=5))
cv=sample(100,15)
rb=rbind(cv,fact)
boo=rb[2,]==2
rb[1,which(boo)]
tapply(cv,fact,mean)


xz=matrix(1:100,ncol=20,nrow=5,byrow=TRUE)
XZ[1,]