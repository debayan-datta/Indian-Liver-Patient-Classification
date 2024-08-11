data<-read.csv(file.choose())
data<-data.frame(data)
head(data)


t.test(data$Sgpt-data$Sgot,alternative="two.sided")
t.test(data$TB-data$DB,alternative="two.sided")
t.test(data$ALB-data$AGR,alternative="two.sided")
t.test(data$TP-data$ALB,alternative="two.sided")




#-----CHI SQUARE TEST of INDEPENDENCE------#
values<-table(data$Gender,data$Label)
dimnames(values)<-list(c("Male","Female),c("Patient","Not Patient"))
values
chisq.test(values)


#-----------One tail test
#t.test(cars$mpg-cars$vs,alternative="less")

data$gender_catg[data$Gender=='Male']<-
data$age_catg[data$Age>15 & data$Age<=30]<-"15-30"

c1<-data$TB[which(data$Label=="2")]
c2<-data$TB[which(data$Label=="1")]
boxplot(c1,c2,main="Total Bilirubin",
	xlab="Patient or not",
	names=c("No","Yes"),outline=TRUE)

c1<-data$ALB[which(data$Label=="2")]
c2<-data$ALB[which(data$Label=="1")]
boxplot(c1,c2,main="Albumin",
	xlab="Patient or not",
	names=c("No","Yes"),outline=TRUE)

c1<-data$AGR[which(data$Label=="2")]
c2<-data$AGR[which(data$Label=="1")]
boxplot(c1,c2,main="Albumin-Globulin Ratio",
	xlab="Patient or not",
	names=c("No","Yes"),outline=FALSE)


c1<-data$Sgot[which(data$Label=="2")]
c2<-data$Sgot[which(data$Label=="1")]
boxplot(c1,c2,main="Sgot",
	xlab="Patient or not",
	names=c("No","Yes"),outline=TRUE)
