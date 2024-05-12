# HR Analytics Dashboard

![HR Analytics Dashboard](D:\SQL\SQL_Portfolio_HerData\HR_dashboard_snip1.png)

This project presents an HR Analytics Dashboard built using SQL for data analysis and Power BI for data visualization. The dashboard provides comprehensive insights into employee demographics, attrition, tenure, department-specific metrics, job title distribution, hiring trends, and geographical distribution.

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

The HR Analytics Dashboard, available in the `HR_Analytics_Dashboard.pdf` file, presents visualizations and insights derived from the SQL data analysis. The dashboard includes the following components:

1. **Employee Breakdown**: Donut chart showing the gender breakdown and bar chart displaying the racial distribution of employees.
2. **Employee Count**: Total number of active employees, employees at the company headquarters, and remote employees.
3. **Attrition and Tenure**: Percentage of terminated employees with 7 years of tenure.
4. **Age Distribution**: Stacked bar chart presenting the age distribution of employees by gender.
5. **Department Insights**: Department-specific metrics, including turnover rate and average tenure of terminated employees.
6. **Job Title Distribution**: Horizontal bar chart displaying the distribution of employees across different job titles.
7. **Hiring Trend**: Line chart showing the company's hiring trend over time based on hire and termination dates.
8. **Geographical Distribution**: Map visual representing the geographical distribution of employees across different states.

The dashboard provides filters for department and job title, allowing users to focus on specific areas of interest. The visualizations are interactive, enabling users to drill down into details and explore the data further.

## Usage

To run the SQL scripts and explore the HR Analytics Dashboard:

1. Set up a MySQL database and import the HR employee dataset.
2. Execute the `HR_Employee_MySQL_DataCleaning.sql` script to clean and preprocess the data.
3. Run the queries in the `HR_Employee_DataBaseQuestions.sql` script to generate the desired insights.
4. Open the `HR_Analytics_Dashboard.pdf` file to view the Power BI dashboard and interact with the visualizations.

## License

This project is licensed under the [MIT License](LICENSE).

## Conclusion

The HR Analytics Dashboard project demonstrates the power of combining SQL for data analysis and Power BI for data visualization. By leveraging these tools, HR managers and executives can gain valuable insights into employee demographics, attrition, tenure, department-specific metrics, job title distribution, hiring trends, and geographical distribution. The insights obtained from this project can support data-driven decision-making and help optimize workforce management strategies to drive business success.

Feel free to explore the SQL scripts and the Power BI dashboard to dive deeper into the HR analytics insights. If you have any questions or suggestions for improvement, please feel free to reach out.

Happy analyzing!
