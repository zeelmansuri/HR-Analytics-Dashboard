/* 🧹 Step 2: Cleaning Queries

/* 1. Remove Duplicates
DELETE FROM HR_Employees
WHERE EmployeeID NOT IN (
    SELECT MIN(EmployeeID)
    FROM HR_Employees
    GROUP BY EmployeeNumber
);

/* 2. Standardize Text Fields
UPDATE HR_Employees
SET Department = TRIM(Department);

UPDATE HR_Employees
SET Department = 'Human Resources'
WHERE Department IN ('HR','Hr','Human Resource');

/* 3. Normalize Gender
UPDATE HR_Employees
SET Gender = CASE
    WHEN Gender IN ('M','Male','male') THEN 'Male'
    WHEN Gender IN ('F','Female','female') THEN 'Female'
    ELSE 'Other'
END;

/* 4. Handle Nulls
UPDATE HR_Employees
SET Attrition = 'Unknown'
WHERE Attrition IS NULL;

UPDATE HR_Employees
SET MonthlyIncome = 0
WHERE MonthlyIncome IS NULL;

/* 5. Validate Dates & Numbers
DELETE FROM HR_Employees
WHERE Age < 18 OR Age > 70;

DELETE FROM HR_Employees
WHERE MonthlyIncome < 1000 OR MonthlyIncome > 1000000;
