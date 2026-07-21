# Churn-Analysis

Businesses always face an issue in customer retention mostly because they dont know what they are doing wrong and because of that many customers leave. Customers are humans and human demands never ends same. 

Customers leave mostly of poor services, bugs, high cost, or simply because they got bored. Here comes the most important part of business to not let the customer go. 

To understand the problems of the customers, businesses need to know why they are leaving, where the business is making mistake either their costs are not effective, services, payment methods are not efficient or they are not giving them something new to excite. 

**Customers may leave because of:**
1. Poor Onboarding
2. Cost
3. Poor Support and Services
4. Presence of bugs
5. High loading / refresh rate
6. Low Engagement
7. Competition in market
8. Complex Structure
9. System Failures
10. No Commitments

**Key Points**
1. High Churn in less than 6 months is because of Onboarding Issues
2. Month to month churn occurs because of commitment issues
3. Churn can be because of high monthly charges.
4. Few Services will lead to low engagement
   and many more



**DataSet**

CustomerChurn.csv files contain the data of the customers, their payment methods, cost, tenure, services, etc which I have grouped in categories like:
  
*Customer Profile*
- CustomerID
- Gender
- SeniorCitizen
- Partner
- Dependents

*Core Services*
- PhoneService
- MultipleLines
- InternetService

*Additional Services*
- OnlineSecurity
- OnlineBackup
- DeviceProtection
- TechSupport

*Streaming Services*
- StreamingTV
- StreamingMovies

*Terms*
- Contract
- PaperlessBilling
- PaymentMethod

*Revenue*
- Tenure
- MonthlyCharges
- TotalCharges

*Churn*
- Churn



**Process**

1. Figure out the problem
   
   I have figured out the problem faced by the businesses most often is customer retention, many customers leave a business/ brand for some reasons every day, but it becomes a problem when businesses dont know what issues the customers are facing and what should they do to keep the customers from leaving.
   To solve it we will analyze the dataset of an organization and see why customers leave and how to keep other customers from leaving.

3. Gather data set
   
   I have taken the dataset from kaggle and set up the enviornment.

4. Creating Business Questions
   
   *Primary Question-*
   
     i) Why customers are leaving and how can we keep them?

    ii) Which customers we can save first?

   *Secondary Question-*

   i) What should be avoided?

   ii) Who is most likely to churn and when?

   iii) What happens because of high churn rate?

5. Data Cleaning
   
   This dataset has been cleaned and validated, the missing values and duplicate values have been treated and the data types and values has been fixed. Tenure was calculated wrong which has been fixed.

7. Exploratory Data Analysis (EDA)

   Have analyzed all aspects of the company like Customer Churn, Customer Profile, Contract Type, Internet Service, Phone Service, Multiple Lines, Additional Services, Streaming Services, Payment Methods, Paperless Billing, Customer Tenure, and Monthly Charges on basis of churn having cutomers who remained and who churned both.L

8. Dahboard Development
   
   In this step, I have created an interactive dashboard which has KPI Cards, Slicers, Customer Profile Analysis, Contract Analysis, Internet Service Analysis, Phone Service Distribution Analysis, Multiplelines Distribution Analysis, Additional Services Analysis, Streaming Services Analysis, Paperless Billing Analysis, and Payment Methods Analysis.
   Different types of graphs have been create to showcase the analysis in an easy understandable form to help in decision making and progress of our company.

9. Analysis

    Got my observations from the charts analyzed them got information from them with proof and recommeded the steps which can be taken to reduce the churn rate of company in the specific aspects of the company.
   These has been recorded up in a separate clean file which includes the charts name, observations, insights and recommendations for each affect separately and for all together which are affecting the company.
   Mentioned the points to which are affecting the whole company most and the concerns regarding the specific aspects of company which are deriving most of the churn rate.

10. Reporting

    Have reported this whole process and analysis in 3 different forms:
    1. a readme containg whole process followed
    2. a pdf having separate and combined analysis with observations, insights and recommendations
    3. a ppt to showcase the analysis and insights we got in a precise manner


**Key Insights**

- Overall customer churn rate is 26.58%, meaning approximately 1 in 4 customers leave the company.
- Customers on Month-to-Month contracts show the highest churn.
- Fiber Optic customers represent the largest churn segment among internet service types.
- Customers with shorter tenure are significantly more likely to churn.
- Customers without Online Security, Online Backup, Device Protection, and Tech Support consistently show higher churn.
- Electronic Check users have higher churn compared to other payment methods.

  
**Business Recommendations**

- Develop targeted retention campaigns for Month-to-Month customers.
- Investigate the reasons behind higher churn among Fiber Optic customers.
- Strengthen customer engagement during the early months of the customer lifecycle.
- Promote value-added services such as Online Security and Tech Support where appropriate.
- Review the Electronic Check payment experience and evaluate improvements.


**Key Learnings**

Through this whole project, I gained practical experience in:
- Data does not answer business questions by itself, I had written many queries programs but these alone are not able to answer the business questions asked
- I also spent a significant amount of time trying to get results from rows of SQL commands. Once I visualized that cleaned modified data in Power BI, identifying trends, comparisons, and customer behavior became much more effective.
- Learned that just because the two variables are associated, it does not mean one causes the other. Recommendations should be based on evidence from the data rather than assumptions or things we just know but have no proof about.
- This project taught me that data analysis is rarely simple or straight. I refined my questions, redesigned visuals, and revisited my interpretations multiple times in this project before arriving at meaningful conclusions.
- My biggest mistake was to try combining many variables together resulting into complex analyses. I later realized that simple visuals and focused analyses are more valuable for the business.


Done by - 

   Jyotsana
   
   Data Analyst | SQL | Power BI | Python | Excel
   
   Github - https://github.com/Jyotsana1107/
   
   LinkedIn - www.linkedin.com/in/jyotsanaanand11
