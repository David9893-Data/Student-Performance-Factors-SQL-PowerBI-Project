# **Project Overview**

### **Objective**

The objective of this project is to analyze various factors influencing student academic performance, including study habits, parental involvement, school type, and tutoring sessions. The goal is to identify trends and insights that can help improve educational outcomes and guide decision-making for educators and school administrators.

### **Context**

This dataset provides detailed information on students' study habits, parental involvement, and other key factors that can influence academic success. By analyzing this data, schools and educators can better understand the impact of these variables on student outcomes. This analysis can highlight areas where intervention may be needed, such as increased tutoring or support for students with low parental involvement, and ultimately improve student success rates.


SELECT *
FROM student_performance 

--Retrieve all students who have a high level of parental involvement
--Objective: List all students whose parental involvement is classified as "High."

SELECT * 
FROM student_performance 
WHERE Parental_Involvement = 'High';

--Find students who studied more than 20 hours per week
--Objective: Select students whose Hours_Studied is greater than 20.

Select hours_studied
from student_performance
where hours_studied > 20;

--List students who have participated in extracurricular activities
--Objective: Retrieve all students who have participated in extracurricular activities (Extracurricular_Activities = Yes).

SELECT * 
FROM student_performance 
WHERE Extracurricular_Activities = 'Yes';

--Retrieve students with an average sleep of fewer than 6 hours per night
--Objective: Identify students who sleep fewer than 6 hours per night.

Select sleep_hours 
from student_performance
where sleep_hours < 6;

--Count the number of students with access to internet at home
--Objective: Use the COUNT function to determine how many students have Internet_Access = Yes.

Select count (Internet_Access) as Internet 
from student_performance
where Internet_Access = 'Yes'

--Calculate the average exam score of students who attend public schools
--Objective: Calculate the average Exam_Score for students attending School_Type = Public.

SELECT AVG(Exam_Score) AS Avg_Exam_Score
FROM student_performance 
WHERE School_Type = 'Public';

--Find students whose final exam score is above 80 and have low parental involvement
--Objective: List students whose Exam_Score is below than 80 and Parental_Involvement = High.

Select Exam_Score,Parental_Involvement
from student_performance
where Exam_Score < 80 and Parental_Involvement = 'High';

--List students with high motivation and access to educational resources
--Objective: Retrieve students who have both Motivation_Level = High and Access_to_Resources = High.

SELECT * 
FROM student_performance 
WHERE Motivation_Level = 'High' and Access_to_Resources = 'High';

--Retrieve students who scored higher in their final exam compared to their previous scores
--Objective: Find students where Exam_Score is greater than Previous_Scores.

Select Exam_Score, Previous_Scores
from student_performance
where Exam_Score > Previous_Scores;

--Group students by their gender and calculate the average exam score for each group
--Objective: Use the GROUP BY clause to group students by Gender and calculate the average Exam_Score for each gender.

Select 
Gender,
avg (Exam_Score) as score 
from student_performance
group by Gender;

--Find the top 5 students with the highest exam scores and high parental involvement
-- Objective: Retrieve the top 5 students who have the highest Exam_Score and Parental_Involvement = High.

SELECT Exam_Score,Parental_Involvement
FROM student_performance 
WHERE Parental_Involvement = 'High'
ORDER BY Exam_Score DESC 
LIMIT 5;


--Identify factors that correlate with high exam scores
--Objective: Write a query to find students with Exam_Score > 90 and analyze patterns in their study habits, sleep hours, and parental involvement.

Select sleep_hours,Parental_Involvement, Exam_Score
from student_performance
where Exam_Score > 90;

--Calculate the percentage of students with learning disabilities who scored above 70 in the exam
--Objective: Find the percentage of students with Learning_Disabilities = Yes and Exam_Score > 70.

SELECT 
    (COUNT(CASE WHEN Exam_Score > 70 THEN 1 END) * 100.0 / COUNT(*)) AS Percentage_Above_70
FROM student_performance 
WHERE Learning_Disabilities = 'Yes';

--Analyze the impact of family income on exam performance
--Objective: Write a query to calculate the average Exam_Score for students from different family income levels (Family_Income).

select 
Family_Income,
avg(Exam_Score) as score
from student_performance
group by Family_Income;

Retrieve the students who travel more than 10 km to school and still maintain an exam score above 75

select distance_from_home,Exam_Score
from student_performance
where distance_from_home = 'Far' and Exam_Score < '75';



