-- QUESTIONS

-- 1) What is gender breakdown of the employees in the company?
SELECT gender,count(*) AS count
FROM hr
WHERE age >= 18 and termdate = '0000-00-00'
GROUP BY gender;

-- 2) What is the race ethinicity breakdown of the employees in the company?
SELECT race,count(*) AS count
FROM hr
WHERE age >= 18 and termdate = '0000-00-00'
GROUP BY race
ORDER BY count(*) DESC;

-- 3) What is the age distribution of employees in the company ?
SELECT 
	min(age) AS Youngest,
    max(age) AS Oldest
FROM hr
WHERE age >= 18 and termdate = '0000-00-00'; 

SELECT 
	CASE
		WHEN age >= 18 and age <= 24 THEN "18-24"
        WHEN age >= 25 and age <= 34 THEN "25-34"
        WHEN age >= 35 and age <= 44 THEN "35-44"
        WHEN age >= 45 and age <= 54 THEN "45-54"
        WHEN age >= 55 and age <= 64 THEN "55-64"
        ELSE '65+' 
        END AS age_group,
        count(*) as count
	FROM hr
    GROUP BY age_group
    ORDER BY age_group;
        
        
SELECT 
	CASE
		WHEN age >= 18 and age <= 24 THEN "18-24"
        WHEN age >= 25 and age <= 34 THEN "25-34"
        WHEN age >= 35 and age <= 44 THEN "35-44"
        WHEN age >= 45 and age <= 54 THEN "45-54"
        WHEN age >= 55 and age <= 64 THEN "55-64"
        ELSE '65+' 
        END AS age_group,gender,
        count(*) as count
	FROM hr
    GROUP BY age_group,gender
    ORDER BY age_group,gender;
        
-- 4) How many employees work at headquaters versus remote location?
SELECT location,count(*) as count
FROM hr
WHERE age >= 18 and termdate = '0000-00-00'
GROUP BY location;

        
-- 5) Ehat is the average length of employment for employees who have been terminated?
SELECT round(avg(datediff(termdate,hire_date))/365,2) AS `Avg_Employee_Duration(yrs)`
FROM hr
WHERE termdate <= current_date() and termdate <> '0000-00-00' and age >= 18;
        
-- 6) How does gender Distribution vary across departments for job titles?
SELECT department,gender,count(*) as count FROM hr
WHERE age >= 18 AND termdate = '0000-00-00'
GROUP BY department,gender
ORDER BY department,gender;        
        
        
-- 7) What is the distribution of job titles across the company ?
SELECT jobtitle,COUNT(*) AS count
FROM hr
WHERE age >= 18 and termdate = '0000-00-00'
GROUP BY jobtitle
ORDER BY count DESC;


-- 8. Which department has the highest turnover rate?
SELECT  department,
	total_count,
    terminated_count,
    terminated_count/total_count AS termination_rate
FROM (
	SELECT department,COUNT(*) AS total_count,
    SUM(CASE WHEN termdate <> '0000-00-00' AND termdate <= curdate() THEN 1 ELSE 0 END) AS terminated_count
    FROM hr
    WHERE age >= 18
    GROUP BY department
	) AS subquery
    ORDER BY termination_rate DESC;

-- 9. What is the distribution of employees across locations by city and state?
SELECT location_state,COUNT(*) AS count
FROM hr
WHERE age >= 18 AND termdate = '0000-00-00'
GROUP BY location_state
ORDER BY count DESC;


-- 10. How has the company's employee count changed over time based on hire and term dates?
SELECT 
	year,
    hires,
    terminations,
    hires - terminations AS net_change,
    round((hires - terminations)/hires *100,2) AS `net_%_change`
FROM(
	SELECT
		YEAR(hire_date) AS year,
        count(*) AS hires,
        SUM(CASE WHEN termdate <> '0000-00-00' AND termdate <= curdate() THEN 1 ELSE 0 END) AS terminations
        FROM hr
        WHERE age >= 18
        GROUP BY YEAR(hire_date)
    ) AS subquery
ORDER BY year ASC;


-- 11. What is the tenure distribution for each department?
SELECT department,round(avg(datediff(termdate,hire_date)/365),0) AS Average_tenure
FROM hr
WHERE termdate <= curdate() AND termdate <> '0000-00-00' AND age >= 18
GROUP BY department;

