library(caTools)

# 1. After splitting the data frame into train and test sets, build a multiple logistic model
# on top of the train set for the city_temperature data frame.
# a. For this model, take AvgTemperature, Day, Month, and Year as the
# independent variable and Region as the dependent variable.
# b. Now analyze the null deviance and residual deviance.
read.csv("E:/DATA ANALYST/Data Science/city_temperature.csv")->city_temperature
View(city_temperature)
sample.split(city_temperature$Region,SplitRatio = 0.7)->split_tag1
subset(city_temperature,split_tag1==T)->train
subset(city_temperature,split_tag1==F)->test
nrow(train)
nrow(test)

#LOGISTIC REGRESSION
glm(Region~ AvgTemperature+Day+Month+Year, data = city_temperature,family = "binomial")->log_mod1
summary(log_mod1)


# 2. After splitting the data frame into train and test sets, build a multiple logistic model
# on top of the train set for the Customer_Churn data frame.
# a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges
# as the independent variable and Churn as dependent variable.
# b. After training, analyze the null deviance and residual deviance.
read.csv("E:/DATA ANALYST/Data Science/customer_Churn.csv")->customer_Churn
View(customer_Churn)

glm(Churn~tenure+StreamingTV+MonthlyCharges+TotalCharges, data = customer_Churn, family = "binomial")->log_mod2
summary(log_mod2)


# 3. After splitting the data frame into train and test sets, build a multiple logistic model
# on top of the train set for the Pharmacovigilance_audit_Data data frame.
# a. For this model, take Gender, Age, and Patient_Id as independent variable and
# DrugId as dependent variable.
# b. Now analyze the null deviance and residual deviance.
read.csv("E:/DATA ANALYST/Data Science/Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

glm(DrugID~Gender+Age+PatientID, data = Pharmacovigilance_audit_Data,family = "binomial")->log_mod3
summary(log_mod3)
