library(caTools)

# 1. After splitting the data frame into train and test sets, build a multiple logistic model
# on top of the train set for the city_temperature data frame.
# a. For this model, take AvgTemperature, Day, Month, and Year as the
# independent variable and Region as the dependent variable.
read.csv("E:/DATA ANALYST/Data Science/city_temperature.csv")->city_temperature
View(city_temperature)

sample.split(city_temperature$Region,SplitRatio = 0.7)->split_tag1
subset(city_temperature,split_tag1==T)->train
subset(city_temperature,split_tag1==F)->test
nrow(train)
nrow(test)

#LOGISTIC REGRESSION
glm(Region~ AvgTemperature+Day+Month+Year, data = train, family = "binomial")->mod_log1
predict(mod_log1, newdata = test,type = "response")->result_log1
View(result_log1)
head(result_log1)

# 2. After splitting the data frame into train and test sets, build a multiple logistic model
# on top of the train set for the Customer_Churn data frame.
# a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges
# as the independent variable and Churn as dependent variable.
read.csv("E:/DATA ANALYST/Data Science/customer_churn.csv")->Customer_Churn
View(Customer_Churn)

sample.split(Customer_Churn$Churn,SplitRatio = 0.7)->split_tag2
subset(city_temperature,split_tag2==T)->train
subset(city_temperature,split_tag2==F)->test
nrow(train)
nrow(test)

#LOGISTIC REGRESSION
glm(Churn~tenure+StreamingTV+MonthlyCharges+TotalCharges, data=train, family="binomial")->mod_log2
predict(mod_log2, newdata = test,type = "response")->result_log2
View(result_log2)
head(result_log2)


# 3. After splitting the data frame into train and test sets, build a multiple logistic model
# on top of the train set for the Pharmacovigilance_audit_Data data frame.
# a. For this model, take Gender, Age, and Patient_Id as independent variable and
# DrugId as dependent variable.
read.csv("E:/DATA ANALYST/Data Science/Pharmacovigilance_audit_Data.csv")->Pharmacovigilance_audit_Data
View(Pharmacovigilance_audit_Data)

sample.split(Pharmacovigilance_audit_Data$DrugID,SplitRatio = 0.7)->split_tag3
subset(Pharmacovigilance_audit_Data,split_tag3==T)->train
subset(Pharmacovigilance_audit_Data,split_tag3==F)->test
nrow(train)
nrow(test)

#LOGISTIC REGRESSION
glm(DrugID~Gender+Age+PatientID, data = train, family = "binomial")->mod_log3
predict(mod_log3,newdata = test)->result_log3
head(result_log3)
