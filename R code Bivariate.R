#----------------PROJECT on Hepatic Data---------------------

#================ BIVARIATE ==================================
#===============================================================

#------------Divide age into multiple categories------------------------
data<-read.csv(file.choose())
data$age_catg[data$Age<=15]<-"0-15"
data$age_catg[data$Age>15 & data$Age<=30]<-"15-30"
data$age_catg[data$Age>30 & data$Age<=45]<-"30-45"
data$age_catg[data$Age>45 & data$Age<=60]<-"45-60"
data$age_catg[data$Age>60]<-"Above 60"
fix(data)

#----------------Actual response variable--------------------
data$status<-ifelse(data$Label=="1","Patient","Nonpatient")

#-----------Boxplot on diff age catg with DB -------------
c1<-data$DB[which(data$age_catg=="0-15")]
c2<-data$DB[which(data$age_catg=="15-30")]
c3<-data$DB[which(data$age_catg=="30-45")]
c4<-data$DB[which(data$age_catg=="45-60")]
c5<-data$DB[which(data$age_catg=="Above 60")]
boxplot(c1,c2,c3,c4,c5,main="Direct Bilirubin in different Ages",
	xlab="Age categories",ylab="Direct Bilirubin level",
	names=c("0-15","15-30","30-45","45-60","Above 60"),outline=FALSE)

#-----------Boxplot on diff age catg with TB -------------
c1<-data$TB[which(data$age_catg=="0-15")]
c2<-data$TB[which(data$age_catg=="15-30")]
c3<-data$TB[which(data$age_catg=="30-45")]
c4<-data$TB[which(data$age_catg=="45-60")]
c5<-data$TB[which(data$age_catg=="Above 60")]
boxplot(c1,c2,c3,c4,c5,main="Total Bilirubin in different Ages",
	xlab="Age categories",ylab="Total Bilirubin level",
	names=c("0-15","15-30","30-45","45-60","Above 60"),outline=FALSE)

#-----------Boxplot on diff age catg with Alkphos -------------
c1<-data$Alkphos[which(data$age_catg=="0-15")]
c2<-data$Alkphos[which(data$age_catg=="15-30")]
c3<-data$Alkphos[which(data$age_catg=="30-45")]
c4<-data$Alkphos[which(data$age_catg=="45-60")]
c5<-data$Alkphos[which(data$age_catg=="Above 60")]
boxplot(c1,c2,c3,c4,c5,main="Alkaline Phosphotase in different Ages",
	xlab="Age categories",ylab="Alkaline Phosphotase level",
	names=c("0-15","15-30","30-45","45-60","Above 60"),outline=FALSE)

#-----------Boxplot on diff age catg with Sgpt -------------
c1<-data$Sgpt[which(data$age_catg=="0-15")]
c2<-data$Sgpt[which(data$age_catg=="15-30")]
c3<-data$Sgpt[which(data$age_catg=="30-45")]
c4<-data$Sgpt[which(data$age_catg=="45-60")]
c5<-data$Sgpt[which(data$age_catg=="Above 60")]
boxplot(c1,c2,c3,c4,c5,main="Alamine Aminotransferase in different Ages",
	xlab="Age categories",ylab="Alamine Aminotransferase level",
	names=c("0-15","15-30","30-45","45-60","Above 60"),outline=FALSE)

#-----------Boxplot on diff age catg with Sgpt -------------
c1<-data$Sgot[which(data$age_catg=="0-15")]
c2<-data$Sgot[which(data$age_catg=="15-30")]
c3<-data$Sgot[which(data$age_catg=="30-45")]
c4<-data$Sgot[which(data$age_catg=="45-60")]
c5<-data$Sgot[which(data$age_catg=="Above 60")]
boxplot(c1,c2,c3,c4,c5,main="Aspartate Aminotransferase in different Ages",
	xlab="Age categories",ylab="Aspartate Aminotransferase",
	names=c("0-15","15-30","30-45","45-60","Above 60"),outline=FALSE)

#-----------Boxplot on diff age catg with TP -------------
c1<-data$TP[which(data$age_catg=="0-15")]
c2<-data$TP[which(data$age_catg=="15-30")]
c3<-data$TP[which(data$age_catg=="30-45")]
c4<-data$TP[which(data$age_catg=="45-60")]
c5<-data$TP[which(data$age_catg=="Above 60")]
boxplot(c1,c2,c3,c4,c5,main="Total Proteins in different Ages",
	xlab="Age categories",ylab="Total Proteins level",
	names=c("0-15","15-30","30-45","45-60","Above 60"),outline=FALSE)

#-----------Boxplot on diff age catg with ALB -------------
c1<-data$ALB[which(data$age_catg=="0-15")]
c2<-data$ALB[which(data$age_catg=="15-30")]
c3<-data$ALB[which(data$age_catg=="30-45")]
c4<-data$ALB[which(data$age_catg=="45-60")]
c5<-data$ALB[which(data$age_catg=="Above 60")]
boxplot(c1,c2,c3,c4,c5,main="Albumin in different Ages",
	xlab="Age categories",ylab="Albumin level",
	names=c("0-15","15-30","30-45","45-60","Above 60"),outline=FALSE)

#-----------Boxplot on diff age catg with AGR -------------
c1<-data$AGR[which(data$age_catg=="0-15")]
c2<-data$AGR[which(data$age_catg=="15-30")]
c3<-data$AGR[which(data$age_catg=="30-45")]
c4<-data$AGR[which(data$age_catg=="45-60")]
c5<-data$AGR[which(data$age_catg=="Above 60")]
boxplot(c1,c2,c3,c4,c5,main="Albumin-Globulin Ratio in different Ages",
	xlab="Age categories",ylab="Albumin-Globulin Ratio level",
	names=c("0-15","15-30","30-45","45-60","Above 60"),outline=FALSE)

#----------------------------------------------------------------------------

#================100% Stacked Bar charts========================

#-----Gender Distribution by liver patient or not--------------
data$status<-ifelse(data$Label=="1","Patient","Nonpatient")
counts<-table(data$status,data$Gender)
counts
barplot(prop.table(counts, 2),main="Gender Distribution",
	xlab="Gender",col=c("red","grey"),legend=c("patient","Nonpatient")
	,args.legend=list(bty="n",horiz=TRUE)) 

#-----A/G Ratio by liver patient or not-------------------
data$proteinlvl<-ifelse(data$AGR<1.1,"Low","Normal")
head(data)
counts1<-table(data$status,data$proteinlvl)
counts1
barplot(prop.table(counts1, 2),main="Alb-Glb Ratio Distribution",
	xlab="Protein levels",col=c("red","grey"),legend=c("patient","Nonpatient")
	,args.legend=list(bty="n",horiz=TRUE)) 


#-----Direct Bilirubin Distribution by liver patient or not-------------
data$dblvl<-ifelse(data$DB<=0.3,"Normal","High")
head(data)
counts2<-table(data$status,data$dblvl)
counts2
barplot(prop.table(counts2, 2),main="Direct Bilirubin Distribution",
	xlab="DB levels",col=c("red","grey"),legend=c("patient","Nonpatient")
	,args.legend=list(bty="n",horiz=TRUE)) 

#-----Total Bilirubin Distribution by liver patient or not-------------
data$tblvl<-ifelse(data$TB<1.2,"Normal","High")
head(data)
counts2<-table(data$status,data$tblvl)
counts2
barplot(prop.table(counts2, 2),main="Total Bilirubin Distribution",
	xlab="TB levels",col=c("red","grey"),legend=c("patient","Nonpatient")
	,args.legend=list(bty="n",horiz=TRUE)) 

#-----Albumin  by liver patient or not-------------------
data$alblvl<-ifelse(data$ALB<3.4,"Low", "Normal")
head(data)
counts1<-table(data$status,data$alblvl)
counts1
barplot(prop.table(counts1, 2),main="Albumin Distribution",
	xlab="Albumin levels",col=c("red","grey"),legend=c("patient","Nonpatient")
	,args.legend=list(bty="n",horiz=TRUE)) 

#-----Total Proteins by liver patient or not-------------------
data$tplvl<-ifelse(data$TP<6,"Low", ifelse(data$TP<8.3,"Normal","High"))
head(data)
counts1<-table(data$status,data$tplvl)
counts1
barplot(prop.table(counts1, 2),main="Total Protein Distribution",
	xlab="TP levels",col=c("red","grey"),legend=c("patient","Nonpatient")
	,args.legend=list(bty="n",horiz=TRUE)) 


#-----SGOT Distribution by liver patient or not-------------
data$sgotlvl<-ifelse(data$Sgot<36,"Normal","High")
head(data)
counts2<-table(data$status,data$sgotlvl)
counts2
barplot(prop.table(counts2, 2),main="Aspartate Aminotransferase Distribution",
	xlab="Sgot levels",col=c("red","grey"),legend=c("patient","Nonpatient")
	,args.legend=list(bty="n",horiz=TRUE)) 

#-----SGPT Distribution by liver patient or not-------------
data$sgptlvl<-ifelse(data$Sgpt<36,"Normal","High")
head(data)
counts2<-table(data$status,data$sgptlvl)
counts2
barplot(prop.table(counts2, 2),main="Alamine Aminotransferase Distribution",
	xlab="Sgpt levels",col=c("red","grey"),legend=c("patient","Nonpatient")
	,args.legend=list(bty="n",horiz=TRUE)) 

#-----ALKPHOS Distribution by liver patient or not-------------
data$alkphoslvl<-ifelse(data$Alkphos<147,"Normal","High")
head(data)
counts2<-table(data$status,data$alkphoslvl)
counts2
barplot(prop.table(counts2, 2),main="Alkaline Phosphotase Distribution",
	xlab="Alkphos levels",col=c("red","grey"),legend=c("patient","Nonpatient")
	,args.legend=list(bty="n",horiz=TRUE)) 




#=======================
