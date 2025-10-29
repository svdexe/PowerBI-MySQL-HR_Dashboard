# HR Analytics Dashboard

<p align="center">
  <img src="https://github.com/svdexe/PowerBI-MySQL-HR_Dashboard/blob/main/HR_dashboard_snip1.png" alt="HR Analytics Dashboard" width="800">
</p>

<p align="center">
  <img src="https://github.com/svdexe/PowerBI-MySQL-HR_Dashboard/blob/main/HR_dashboard_snip2.png" alt="HR Analytics Dashboard" width="800">
</p>

<div align="center">
  <p><i>A comprehensive HR analytics solution combining SQL data processing and Power BI visualization</i></p>
</div>

---

This project presents an HR Analytics Dashboard built using SQL for data analysis and Power BI for data visualization. The dashboard provides comprehensive insights into employee demographics, attrition, tenure, department-specific metrics, job title distribution, hiring trends, and geographical distribution.

PS: Data Migration & Pipeline Integration: Migrated HR analytics pipeline from MySQL to Databricks (Azure workspace), maintaining data integrity across 12+ analytical tables; configured SQL Warehouse connections enabling real-time dashboard updates in Power BI

## Skills Demonstrated

<table>
  <tr>
    <td><b>SQL</b></td>
    <td>Complex queries, subqueries, CASE statements, date manipulations, aggregations</td>
  </tr>
  <tr>
    <td><b>Power BI</b></td>
    <td>Interactive dashboard creation, data visualization, filtering</td>
  </tr>
  <tr>
    <td><b>Data Analysis</b></td>
    <td>Trend identification, demographic analysis, attrition analysis</td>
  </tr>
  <tr>
    <td><b>Data Cleaning</b></td>
    <td>Date standardization, outlier handling, data validation</td>
  </tr>
</table>

## Business Impact

This dashboard enables HR professionals and management to:

* **Identify** departments with high turnover rates for targeted retention strategies
* **Understand** demographic imbalances to improve diversity initiatives
* **Track** hiring trends to optimize recruitment planning
* **Analyze** geographical distribution for better resource allocation

## Dataset

The dataset used for this project is an HR employee dataset containing information about employees, their demographics, job titles, departments, hire dates, termination dates, and geographical locations. The dataset was cleaned and preprocessed using SQL queries to ensure data quality and consistency.

## SQL Data Cleaning

The SQL script `HR_Employee_MySQL_DataCleaning.sql` performs the following data cleaning and preprocessing steps:

1. Creates a new database named "projects" and switches to that database.
2. Renames the "ï»¿id" column to "emp_id" and sets its data type to VARCHAR(20).
3. Standardizes the date format for the "birthdate" and "hire_date" columns.
4. Handles invalid date values in the "termdate" column and sets the data type to DATE.
5. Adds a new column named "age" and calculates the age of each employee based on their birth date.
6. Retrieves the minimum and maximum age of employees and counts the number of employees with an age less than 18.

## SQL Data Analysis

The SQL script `HR_Employee_DataBaseQuestions.sql` answers various questions about the HR employee data using SQL queries. The questions cover the following aspects:

1. Gender breakdown of employees
2. Race/ethnicity breakdown of employees
3. Age distribution of employees
4. Number of employees working at headquarters versus remote locations
5. Average length of employment for terminated employees
6. Gender distribution across departments and job titles
7. Distribution of job titles across the company
8. Department with the highest turnover rate
9. Distribution of employees across locations by city and state
10. Company's employee count change over time based on hire and termination dates
11. Tenure distribution for each department

Each question is answered using SQL queries that filter, aggregate, and analyze the data to provide meaningful insights.

## Power BI Dashboard

<div align="center">
  <p><i>Interactive visualizations providing actionable HR insights</i></p>
</div>

The HR Analytics Dashboard, available in the `HR_Analytics_Dashboard.pdf` file, presents visualizations and insights derived from the SQL data analysis. The dashboard includes the following components:

| Component | Description |
|-----------|-------------|
| **Employee Breakdown** | Donut chart showing the gender breakdown and bar chart displaying the racial distribution of employees |
| **Employee Count** | Total number of active employees, employees at the company headquarters, and remote employees |
| **Attrition and Tenure** | Percentage of terminated employees with 7 years of tenure |
| **Age Distribution** | Stacked bar chart presenting the age distribution of employees by gender |
| **Department Insights** | Department-specific metrics, including turnover rate and average tenure of terminated employees |
| **Job Title Distribution** | Horizontal bar chart displaying the distribution of employees across different job titles |
| **Hiring Trend** | Line chart showing the company's hiring trend over time based on hire and termination dates |
| **Geographical Distribution** | Map visual representing the geographical distribution of employees across different states |

The dashboard provides filters for department and job title, allowing users to focus on specific areas of interest. The visualizations are interactive, enabling users to drill down into details and explore the data further.

## Quick Start Guide

<div align="center">
  <p><i>Follow these steps to replicate the analysis</i></p>
</div>

1. Set up a MySQL database and import the HR employee dataset.
2. Execute the `HR_Employee_MySQL_DataCleaning.sql` script to clean and preprocess the data.
3. Run the queries in the `HR_Employee_DataBaseQuestions.sql` script to generate the desired insights.
4. Connect Power BI to your MySQL database using the appropriate connection settings.
5. Open the `HR_Analytics_Dashboard.pdf` file to view the Power BI dashboard and interact with the visualizations.

## Limitations

- Some records had negative ages and these were excluded during querying (967 records). Ages used were 18 years and above.
- Some termdates were far into the future and were not included in the analysis (1599 records). The only term dates used were those less than or equal to the current date.

## Related Content

<div align="center">
  <p>For a detailed walkthrough of the SQL queries and analytical approach, check out my blog post:</p>
  <p><a href="https://medium.com/@SVD.exe/unveiling-hr-insights-an-analytics-dashboard-built-with-sql-and-power-bi-822abb6fd2dd">Unveiling HR Insights: An Analytics Dashboard Built with SQL and Power BI</a></p>
</div>

---

<div align="center">
  <p>This project is licensed under the <a href="LICENSE">MIT License</a></p>
</div>
