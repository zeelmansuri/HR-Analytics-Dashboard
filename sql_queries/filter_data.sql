/* 👥 Analyzing Employee Headcount and Demographics

/* Count employees by department
SELECT Department, COUNT(*) AS EmployeeCount
FROM HR_Employees
GROUP BY Department
ORDER BY EmployeeCount DESC;

/* Gender distribution
SELECT Gender, COUNT(*) AS Count
FROM HR_Employees
GROUP BY Gender;

/* Age band distribution
SELECT CF_age_band, COUNT(*) AS Count
FROM HR_Employees
GROUP BY CF_age_band
ORDER BY CF_age_band;

/* 💼 Attrition & Retention

/* Attrition count by department
SELECT Department, COUNT(*) AS AttritionCount
FROM HR_Employees
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY AttritionCount DESC;

/* Attrition rate by job role
SELECT JobRole,
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
       COUNT(*) AS TotalEmployees,
       (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS AttritionRate
FROM HR_Employees
GROUP BY JobRole
ORDER BY AttritionRate DESC;

/* Average years at company for current employees
SELECT AVG(YearsAtCompany) AS AvgYearsAtCompany
FROM HR_Employees
WHERE Attrition = 'No';


/* 💰 Compensation & Performance

/* Average monthly income by department
SELECT Department, AVG(MonthlyIncome) AS AvgIncome
FROM HR_Employees
GROUP BY Department
ORDER BY AvgIncome DESC;


/* Top 10 highest paid employees
SELECT EmployeeID, EmployeeNumber, JobRole, MonthlyIncome
FROM HR_Employees
ORDER BY MonthlyIncome DESC
LIMIT 10;

/* Salary hike distribution
SELECT PercentSalaryHike, COUNT(*) AS Count
FROM HR_Employees
GROUP BY PercentSalaryHike
ORDER BY PercentSalaryHike;

/* 📈 Engagement & Satisfaction

/*Job satisfaction by department
SELECT Department, AVG(JobSatisfaction) AS AvgJobSatisfaction
FROM HR_Employees
GROUP BY Department
ORDER BY AvgJobSatisfaction DESC;

/* Work‑life balance scores
SELECT WorkLifeBalance, COUNT(*) AS Count
FROM HR_Employees
GROUP BY WorkLifeBalance;

/* Environment satisfaction by job role
SELECT JobRole, AVG(EnvironmentSatisfaction) AS AvgEnvSatisfaction
FROM HR_Employees
GROUP BY JobRole
ORDER BY AvgEnvSatisfaction DESC;

/* 🚀 Career Progression

/* Average years since last promotion by department
SELECT Department, AVG(YearsSinceLastPromotion) AS AvgYearsSincePromotion
FROM HR_Employees
GROUP BY Department
ORDER BY AvgYearsSincePromotion;

/* Employees with high overtime
SELECT EmployeeID, EmployeeNumber, Department, JobRole, OverTime
FROM HR_Employees
WHERE OverTime = 'Yes';
