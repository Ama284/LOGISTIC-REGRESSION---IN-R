library(caTools)

# 1. After splitting the data frame into train and test sets, build a simple logistic model on
# top of the train set for the city_temperature data frame.
# a. For this model, take AvgTemperature as the independent variable and Region
# as the dependent variable.
read.csv("E:/DATA ANALYST/Data Science/city_temperature.csv")->city_temperature
View(city_temperature)

sample.split(city_temperature$Region,SplitRatio = 0.7)->split_tag1
subset(city_temperature,split_tag1==T)->train
subset(city_temperature,split_tag1==F)->test
nrow(train)
nrow(test)

#LOGISTIC REGRESSION
glm(Region~AvgTemperature, data = city_temperature,family = "binomial")->log_mod1
View(log_mod1)
summary(log_mod1)

 
# 2. After splitting the data frame into train and test sets, build a simple logistic model on
# top of the train set for the Customer_Churn data frame.
# a. For this model, take Monthly Charges as the independent variable and Churn
# as dependent variable.
read.csv("E:/DATA ANALYST/Data Science/customer_churn.csv")->customer_churn
View(customer_churn)

sample.split(customer_churn$Churn,SplitRatio = 0.7)->split_tag2
subset(customer_churn,split_tag2==T)->train
subset(customer_churn,split_tag2==F)->test
nrow(train)
nrow(test)

#LOGISTIC REGRESSION
glm(Churn~MonthlyCharges, data = customer_churn,family = "binomial")->log_mod2
View(log_mod2)
summary(log_mod2)

 
# 3. After splitting the data frame into train and test sets, build a simple logistic model on
# top of the train set for the Pharmacovigilance_audit_Data data frame.
# a. For this model, take Age as independent variable and DrugId as dependent variable.
read.csv("E:/DATA ANALYST/Data Science/Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

sample.split(Pharmacovigilance_audit_Data$DrugID,SplitRatio = 0.7)->split_tag3
subset(Pharmacovigilance_audit_Data,split_tag3==T)->train
subset(Pharmacovigilance_audit_Data,split_tag3==F)->test
nrow(train)
nrow(test)

#LOGISTIC REGRESSION
glm(DrugID~Age, data = Pharmacovigilance_audit_Data,family = "binomial")->log_mod3
View(log_mod3)
summary(log_mod3)
