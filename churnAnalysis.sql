create database churnAnalysis;
Use churnAnalysis;
select * from customerchurn limit 10;
update customerchurn set totalcharges = ROUND(totalcharges,2);
set sql_safe_updates = 0;

#Total customers
select count(*) from customerchurn; #7032

#NUMBER OF CUSTOMER CHURN
select count(churn) as "Churn" from customerchurn where churn="Yes"; #1869
select count(churn) as "No Churn" from customerchurn where churn="No"; #5163

#CORE SERVICES CHURN
select count(*), internetservice from customerchurn where churn="Yes" group by internetservice;    #dsl-459    fiber - 1297       no - 113
select count(*), phoneservice from customerchurn where churn="Yes" group by phoneservice; # yes - 1699 no - 170
select count(*), multiplelines from customerchurn where churn="Yes" group by multiplelines; # yes - 850 no - 1019

select count(*) from customerchurn 
where PhoneService = "No" and multiplelines = "No" and Churn = "Yes"; #170
select count(*) from customerchurn 
where PhoneService = "yes" and multiplelines = "yes" and Churn = "Yes"; #850


select count(*), internetservice from customerchurn group by internetservice; #TOTAL DSL 2416, FIBER 3096 NO 1520
select count(*), internetservice from customerchurn 
where PhoneService = "No" and multiplelines = "No" and Churn = "Yes" group by internetservice; #DSL = 170 CHURNED
#170 people have churned who had no phoneservice no multiplelines and their internet service was dsl

select count(*), internetservice from customerchurn 
where PhoneService = "yes" and multiplelines = "yes" and Churn = "Yes" group by internetservice; # fiber - 767   dsl - 73   no - 10 CHURNED
select count(*), internetservice from customerchurn 
where PhoneService = "yes" and multiplelines = "no" and Churn = "Yes" group by internetservice; #dsl 216 fiber 530 no 103
select count(*), internetservice from customerchurn 
where PhoneService = "no" and multiplelines = "yes" and Churn = "Yes" group by internetservice;



select count(*) as "No sevice churn" 
from customerchurn 
where PhoneService = "No" and multiplelines = "No" and OnlineSecurity = "No" and 
OnlineBackup = "No" and DeviceProtection = "No" and TechSupport = "No" and
StreamingTV = "No" and StreamingMovies = "No" and churn = "Yes";
#There are 35 customers who churned because they were not getting any services and streaming options
