create database churnAnalysis;
update customerchurn set totalcharges = ROUND(totalcharges,2);
set sql_safe_updates = 0;
Use churnAnalysis;


select * from customerchurn limit 10;


#Total customers
select count(*) from customerchurn; #7032

#NUMBER OF CUSTOMER CHURN
select count(churn) as "Churn" from customerchurn where churn="Yes"; #1869
select count(churn) as "No Churn" from customerchurn where churn="No"; #5163



select SeniorCitizen, churn, count(*) from customerchurn group by SeniorCitizen, churn;   #churn (no): senior-0 = 4497 senior- 1 = 666, churn (yes) senior - 0 = 1393 senior- 1= 476
select Partner, churn, count(*) from customerchurn group by Partner, churn;  #churn (no): partner-yes = 2724 partner- no = 2439, churn (yes) partner  -yes = 669 partner- no= 1200 
select Dependents, churn, count(*) from customerchurn group by Dependents, churn; #churn(no): dependents-yes=1773 dependents-no=3390,churn(yes): dependents-yes=326  dependents-no=1543



#CORE SERVICES CHURN
select count(*), internetservice, churn from customerchurn group by internetservice, churn;    #churn:yes dsl-459 fiber-1297 no-113  churn:no dsl-1957 fiber-1799 no-1407
select count(*), phoneservice, churn from customerchurn group by phoneservice, churn; # chrun: yes yes - 1699 no - 170    chrun: no yes - 4653 no - 510
select count(*), multiplelines, churn from customerchurn group by multiplelines, churn; # churn: yes  yes - 850 no - 1019    churn: no  yes - 2117 no - 3046

/*
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
*/

/*Additional Services*/
select count(*), OnlineSecurity, churn from customerchurn group by OnlineSecurity, churn;  #churn:yes  yes-295 no-1574    churn:no  yes-1720 no-3443
select count(*), OnlineBackup, churn from customerchurn group by OnlineBackup, churn;  #churn:yes  yes-523 no-1346    churn:no  yes-1902 no-3261
select count(*), DeviceProtection, churn from customerchurn group by DeviceProtection, churn;  #churn:yes  yes-545 no-1324    churn:no  yes-1873 no-3290
select count(*), TechSupport, churn from customerchurn group by TechSupport, churn;  #churn:yes  yes-310 no-1559    churn:no  yes-1730 no-3433

/*Streaming Services*/
select count(*), StreamingTV, churn from customerchurn group by StreamingTV, churn;  #churn:yes  yes-814 no-1055    churn:no  yes-1889 no-3274

select count(*), StreamingMovies, churn from customerchurn group by StreamingMovies, churn;    #churn:yes  yes-818 no-1051    churn:no  yes-1913 no-3250

#There are 35 customers who churned because they were not getting any services and streaming options


/*Billing & Contract*/
select count(*), Contract, churn from customerchurn group by Contract, churn;  #chrun: yes Month-to-month-1655 One year- 166 Two year- 48 churn:no Month-to-month-2220 One year- 1306 Two year-1637
select count(*), PaperlessBilling, churn from customerchurn group by PaperlessBilling, churn; #churn:yes  yes-1400 no-469    churn:no  yes-2768 no-2395
select count(*), PaymentMethod, churn from customerchurn group by PaymentMethod, churn; #chrun: yes Electronic check- 1071 Mailed check-308 Bank transfer (automatic)- 258 Credit card (automatic)- 232
																						#churn:no Electronic check- 1294 Mailed check-1296 Bank transfer (automatic)- 1284 Credit card (automatic)- 1289

                                                                                        
#Revenue and Customer value
SELECT Churn, round((avg(tenure)),2) FROM customerchurn GROUP BY Churn; #churn:yes - 17.98   churn:no - 37.65
SELECT Churn, round((AVG(MonthlyCharges)),2) FROM customerchurn GROUP BY Churn; #churn:yes - 74.44   churn:no - 61.31
SELECT Churn, round((AVG(TotalCharges)),2) FROM customerchurn GROUP BY Churn; #churn:yes -  1531.61  churn:no - 2555.2


