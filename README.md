# Student Performance Factors SQL & Power BI Project

## Overview

This project explores the various factors influencing student performance using SQL and Power BI.  
By analyzing the dataset, we aim to identify trends, correlations, and insights that can provide valuable information to improve student outcomes.  
The project involves data cleaning, transformation, querying, and interactive data visualization.

## Objective

- **The primary objective of this project is to analyze student performance data to uncover key factors contributing to their academic success or difficulty. The analysis focuses on:**

- **Identifying trends and patterns in student performance.**

- **Analyzing the impact of various factors such as gender, family income, parental education, and motivation.**

- **Providing actionable insights to help improve academic support strategies.**

---

## Dataset

The dataset used for this analysis contains anonymized data on student performance. Key fields include:

- **Gender**  
- **Family_Income**  
- **Parental_Education_Level**  
- **Access_to_Resources & Internet_Access**  
- **Hours_Studied, Sleep_Hours, Tutoring_Sessions**  
- **Motivation_Level, Extracurricular_Activities**  
- **School_Type, Teacher_Quality, Peer_Influence**  
- **Exam_Score** (target variable)

---

## Tools and Technologies

- **SQL (Microsoft SQL Server)** – Data cleaning, filtering, and analysis  
- **Power BI** – Interactive dashboard creation and insights visualization  
- **GitHub** – Project hosting and version control  

---

## Data Analysis (SQL Work)

- **Descriptive Analysis:**
  - Average Exam Scores by Gender
  - Study Hours and Sleep Distribution
  - Resource Access and Internet Connectivity Stats

- **Comparative Analysis:**
  - Exam Score differences by Motivation_Level
  - Score by Family_Income and Access_to_Resources
  - Correlation between Parental Education and Performance

- **Filtering & Grouping Techniques:**
  - `GROUP BY`, `CASE WHEN`, and `JOIN` used to build grouped summaries
  - Used `AVG()`, `COUNT()`, and `SUM()` to generate aggregated insights

---

## Power BI Dashboard

To visualize the SQL insights interactively, a single-page Power BI dashboard was created.  
It highlights the most influential factors on Exam Score and provides a clear, segmented view across student profiles.

### Main KPIs displayed:
- **Average Exam Score**
- **% of Students in Extracurricular Activities**
- **% of Students with Internet Access**
- **Average Study Hours**

### Key Visualizations:
- **Exam Score by Family Income and Resource Access**
- **Score by Motivation Level and Gender**
- **Parental Education Level vs Average Score**
- **Sleep Hours by Distance from Home and Gender**
- **School Type & Teacher Quality vs Exam Score**
- **Extracurricular Participation by Income Level**

---

## Key Insights

- Students with **high motivation** perform significantly better than others.
- **Internet Access** and **Parental Involvement** are strongly linked to higher scores.
- The **quality of teachers** and **type of school** impact performance, especially when combined.
- **Students far from school** tend to sleep less, especially males, which may impact results.
- **Extracurricular activities** are more common among students with medium or high family income.

---

## Conclusion

The combination of SQL and Power BI provided a clear view of the factors influencing student performance.  
These insights can support educational stakeholders in designing targeted interventions, improving outcomes, and closing performance gaps.



