/* 🏗️ Step 1: Create Table in MySQL
CREATE TABLE HR_Employees (
    EmployeeID INT PRIMARY KEY,
    EmpNo INT,
    EmployeeNumber INT,
    Attrition VARCHAR(10),
    CF_attrition_label VARCHAR(50),
    CF_age_band VARCHAR(20),
    Department VARCHAR(50),
    EducationField VARCHAR(50),
    Gender VARCHAR(10),
    JobRole VARCHAR(100),
    MaritalStatus VARCHAR(20),
    OverTime VARCHAR(10),
    Over18 CHAR(1),
    TrainingTimesLastYear INT,
    Age INT,
    CF_attrition_count INT,
    CF_attrition_counts INT,
    CF_attrition_rate DECIMAL(5,2),
    CF_currentEmployee VARCHAR(10),
    DailyRate DECIMAL(10,2),
    DistanceFromHome INT,
    Education INT,
    EmployeeCount INT,
    EnvironmentSatisfaction INT,
    HourlyRate DECIMAL(10,2),
    JobInvolvement INT,
    JobLevel INT,
    JobSatisfaction INT,
    MonthlyIncome DECIMAL(10,2),
    MonthlyRate DECIMAL(10,2),
    NumCompaniesWorked INT,
    PercentSalaryHike DECIMAL(5,2),
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

/* Load all data in table
LOAD DATA INFILE 'C:/Users/lenovo/Desktop/HR_DATA.csv'
INTO TABLE Employees
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
