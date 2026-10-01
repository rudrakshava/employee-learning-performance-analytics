CREATE TABLE employee_training (
    Employee_ID VARCHAR(10),
    Employee_Name VARCHAR(100),
    Department VARCHAR(50),
    Location VARCHAR(50),
    Job_Level VARCHAR(50),
    Training_Name VARCHAR(100),
    Training_Category VARCHAR(50),
    Training_Date DATE,
    Training_Hours INT,
    Completion_Status VARCHAR(30),
    Score INT,
    Performance_Rating INT
);

SELECT *
FROM employee_training;

SELECT Completion_Status, COUNT(*) AS Employee_Count
FROM employee_training
GROUP BY Completion_Status;

SELECT Department,
       AVG(Score) AS Average_Score,
       AVG(Performance_Rating) AS Average_Performance_Rating
FROM employee_training
GROUP BY Department;

SELECT Training_Category,
       SUM(Training_Hours) AS Total_Training_Hours
FROM employee_training
GROUP BY Training_Category;

SELECT Department,
       COUNT(*) AS Total_Employees,
       AVG(Score) AS Average_Score
FROM employee_training
GROUP BY Department
ORDER BY Average_Score DESC;

SELECT *
FROM employee_training
WHERE Completion_Status <> 'Completed';

SELECT *
FROM employee_training
WHERE Score = 0
   OR Performance_Rating < 1
   OR Performance_Rating > 5;