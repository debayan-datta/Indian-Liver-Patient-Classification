#HEPATIC DATA

import pandas as pd
data=pd.read_csv("Indian Liver Patient Dataset.csv")

#=============UNIVARIATE==========================================
#Adding new column for 0 and 1 0:Patient 1:NonPatient
status=[]
for row in data['Label']:
    if row==2:
        status.append(1)
    else:
        status.append(0)
data['Status']=status
data.head(10)


#Pie chart for Gender
import matplotlib.pyplot as plt
male=0;female=0
for row in data['Gender']:
    if row=='Female': 
        female+=1
    else:
        male+=1
freq=[male,female]
labels = ['Male','Female']
col = ['blue','pink']
slice_dis = (0, 0)
plt.pie(freq, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=180)
plt.axis('equal')
plt.title("Distribution of the genders")
plt.show()


#Pie chart for age categories
age=[0,0,0,0,0]
for row in data['Age']:
    if row<=15:
        age[0]+=1
    elif row>15 and row<=30:
        age[1]+=1
    elif row>30 and row<=45:
         age[2]+=1
    elif row>45 and row<=60:
         age[3]+=1
    else:
        age[4]+=1

labels = ['Below 15','15-30','30-45','45-60','Above 60']
col = ['red','yellow','orange','blue','green']
slice_dis = (0.02,0.02,0.02,0.02,0.02)
plt.pie(age, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=180)
plt.axis('equal')
plt.title("Distribution of different ages")
plt.show()

#Describing the data
import pandas as pd
df1=data[['TB','DB','Alkphos','Sgpt']]
df1.describe()
df2=data[['Sgot','TP','ALB','AGR']]
df2.describe()


#Pie chart for Total Bilirubin
#Normal Range 0.1 to 1.2
tb=[0,0]
for row in data['TB']:
    if row>=0.1 and row<=1.2:
        tb[0]+=1
    else:
        tb[1]+=1
labels = ['Normal','High']
col = ['orange','red']
slice_dis = (0.02,0.02)
plt.pie(tb, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=270)
plt.axis('equal')
plt.title("Distribution of different levels of Total Bilirubin")
plt.show()


#Pie chart for Direct Bilirubin
#Normal Range 0 to 0.3
db=[0,0]
for row in data['DB']:
    if row>0.3:
        db[0]+=1
    else:
        db[1]+=1
labels = ['Normal','High']
col = ['orange','red']
slice_dis = (0.02,0.02)
plt.pie(db, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=270)
plt.axis('equal')
plt.title("Distribution of different levels of Direct Bilirubin")
plt.show()

#Pie chart for Alkaline Phosphatase
#Normal Range to  44 to 147
alkphos=[0,0]
for row in data['Alkphos']:
    if row>=44 and row<=147:
        alkphos[0]+=1
    else:
        alkphos[1]+=1
labels = ['Normal','High']
col = ['orange','red']
slice_dis = (0.02,0.02)
plt.pie(alkphos, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=180)
plt.axis('equal')
plt.title("Distribution of different levels of Alkaline Phosphatase")
plt.show()

#Pie chart for Alamine Aminotransferase
#Normal Range to  4 to 36
sgpt=[0,0]
for row in data['Sgpt']:
    if row>=4 and row<=36:
        sgpt[0]+=1
    else:
        sgpt[1]+=1
labels = ['Normal','High']
col = ['orange','red']
slice_dis = (0.02,0.02)
plt.pie(sgpt, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=90)
plt.axis('equal')
plt.title("Distribution of different levels of Alamine Aminotransferase")
plt.show()
 

#Pie chart for Aspartate Aminotransferase
#Normal Range to  8 to 33
sgot=[0,0]
for row in data['Sgot']:
    if row>=4 and row<=36:
        sgot[0]+=1
    else:
        sgot[1]+=1
labels = ['Normal','High']
col = ['orange','red']
slice_dis = (0.02,0.02)
plt.pie(sgot, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=90)
plt.axis('equal')
plt.title("Distribution of different levels of Aspartate Aminotransferase")
plt.show()


#Pie chart for Total Protein in Liver
#Normal Range to  6 to 8.3
tp=[0,0,0]
for row in data['TP']:
    if row<6:
        tp[0]+=1
    elif row>=6 and row<=8.3:
        tp[1]+=1
    else:
        tp[2]+=1
labels = ['Low','Normal','High']
col = ['green','orange','red']
slice_dis = (0.02,0.02,0.02)
plt.pie(tp, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=180)
plt.axis('equal')
plt.title("Distribution of different levels of Total Protein in Liver")
plt.show()

#Pie chart for Albumin
#Normal Range to  3.4 to 5.4
alb=[0,0,0]
for row in data['ALB']:
    if row<3.4:
        alb[0]+=1
    elif row>=3.4 and row<5.4:
        alb[1]+=1
    else:
        alb[2]+=1
labels = ['Low','Normal','High']
col = ['green','orange','red']
slice_dis = (0.02,0.02,0.02)
plt.pie(alb, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=135)
plt.axis('equal')
plt.title("Distribution of different levels of Albumin")
plt.show()

#Pie chart for Albumin/Globulin Ratio
#Normal Range to  1-2
agr=[0,0]
for row in data['AGR']:
    if row>=1 and row<=2:
        agr[0]+=1
    else:
        agr[1]+=1
labels = ['Normal','Low']
col = ['orange','green']
slice_dis = (0.02,0.02)
plt.pie(agr, explode=slice_dis, labels=labels, colors=col,
        autopct='%1.2f%%', startangle=90)
plt.axis('equal')
plt.title("Distribution of different levels of Albulin-Globulin Ratio")
plt.show()






#=========================BIVARIATE====================================
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

plt.scatter(data['ALB'],data['AGR'],alpha=0.4)
plt.xlabel("Albumin")
plt.ylabel('Albumin-Globulin Ratio')
plt.title("Scatter plot between Albumin and Alb-Glb Ratio")
plt.show()
pearsons_coeff = np.corrcoef(data['ALB'],data['AGR'])
print("The pearson's coeffient of the x and y inputs are: \n" ,pearsons_coeff)

plt.scatter(data['Sgot'],data['Sgpt'],alpha=0.4)
plt.xlabel('Aspartate Aminotransferase')
plt.ylabel('Alamine Aminotransferase')
plt.title("Scatter plot between Sgot and Sgpt")
plt.show()

plt.scatter(data['TB'],data['DB'],alpha=0.4)
plt.xlabel('Total Bilirubin')
plt.ylabel('Direct Bilirubin')
plt.title("Scatter plot between TB and DB")
plt.show()


#---------Regression line-----------

import matplotlib.pyplot as plt
from scipy import stats

x = data['TP']
y = data['ALB']

slope, intercept, r, p, std_err = stats.linregress(x, y)

def myfunc(x):
  return slope * x + intercept

mymodel = list(map(myfunc, x))

plt.scatter(x, y,alpha=0.6)
plt.ylabel("Albumin")
plt.xlabel("Total Protein")

plt.title("Regression Line between TP and ALB")
plt.plot(x, mymodel)
plt.show()

print("Slope of the Regression Line:      ",slope)
print("Intercept of the Regression Line:  ",intercept)
print("Coefficient of Determination:      ",r**2)
print("Standard error of estimated slope: ",std_err)
print("p-value:                           ",p)

'''The p-value for a hypothesis test whose null hypothesis is that the slope is zero, 
using Wald Test with t-distribution of the test statistic.

Standard error of the estimated slope (gradient), 
under the assumption of residual normality.'''




































































