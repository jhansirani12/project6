use finalproject;
show tables;
select * from 6thweek;

-- 1. Show all hired applicants
SELECT company, jobtitle, Location, salary
FROM 6thweek
WHERE hired = 'Yes';

-- 2. Count of applicants by company
SELECT company, COUNT(*) AS total_applicants
FROM 6thweek
GROUP BY company
ORDER BY total_applicants DESC;

-- 3. Average salary by industry
SELECT Industry, AVG(salary) AS avg_salary
FROM 6thweek
WHERE salary IS NOT NULL
GROUP BY Industry;

-- . Platforms with most applications
SELECT appliedplatform, COUNT(*) AS total_applications
FROM 6thweek
GROUP BY appliedplatform
ORDER BY total_applications DESC;

-- 5. Average years of experience by hiring status
SELECT HiringStatus, AVG(YearsofExperience) AS avg_experience
FROM 6thweek
GROUP BY HiringStatus;

-- . Find the top 5 job titles with the highest average salary
SELECT jobtitle, ROUND(AVG(salary), 2) AS avg_salary
FROM 6thweek
WHERE salary IS NOT NULL
GROUP BY jobtitle
ORDER BY avg_salary DESC
LIMIT 5;


