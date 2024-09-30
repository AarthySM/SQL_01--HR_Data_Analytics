
# Human Resource Data Analysis Project

## Project Overview

This project involves the analysis of a *Human Resource dataset* using SQL queries to derive meaningful insights about employee demographics, salary distribution, departmental compositions, performance scores, and more. The dataset contains information about employees, including their salary, department, performance, employment status, and other attributes. The goal of this project is to use SQL to query, aggregate, and analyze the data to provide useful information for HR management and decision-making.

## Key Objectives
- Retrieve, filter, and sort employee data.
- Calculate key statistics such as average, minimum, and maximum salary.
- Group data by relevant categories such as department, gender, and performance score.
- Analyze employee distribution and composition by department and gender.
- Identify top and bottom earners in the organization.
- Explore relationships between employee performance, salary, and department.
- Derive insights into departmental salary averages and identify outliers.

## SQL Techniques Used

### 1. *Data Retrieval:*
   - Basic SELECT queries to retrieve specific employee details such as employee names, IDs, salary, and department.
   - Retrieve multiple columns for comprehensive employee information.

### 2. *Filtering Data:*
   - Filter employees based on active status or salary ranges.
   - Apply multiple conditions (AND/OR) to filter data by employment status and performance score.

### 3. *Sorting Data:*
   - Sort employees by salary in descending order to find top earners.
   - Sort by hire date to analyze seniority.
   - Sort by department and salary for hierarchical insights.

### 4. *Grouping Data:*
   - Group employees by department to calculate the total number of employees in each department.
   - Group by gender and performance score to identify employee counts in each category.

### 5. *Aggregation Functions:*
   - Use AVG(), MAX(), and MIN() functions to calculate average salary, highest salary, and lowest salary respectively.
   - Group by department to find the highest and lowest salaries within each department.

### 6. *Percentage Calculations:*
   - Calculate the percentage of employees based on gender, department, and employment status.

### 7. *Limiting Results:*
   - Use the LIMIT clause to retrieve the top and bottom 5 salaries.
   - Identify the top 5 employees based on lateness in the last 30 days.

### 8. *Subqueries:*
   - Use subqueries to identify departments with high average salaries (greater than $50,000).
   - Find departments with more than 50 employees.
   - Find employees whose salary exceeds the department average.

## Key Insights

- *Employee Distribution*: Analyzed the number of employees by department, gender, and employment status.
- *Salary Analysis*: Identified employees earning between $40,000 and $60,000, as well as the top and bottom earners.
- *Performance Scores*: Grouped employees by performance to assess the distribution of performance ratings.
- *Departmental Analysis*: Found departments with high average salaries and large teams.
- *Late Arrivals*: Discovered employees who had the highest number of days late in the last 30 days.

## Conclusion

This project demonstrates the power of SQL for querying and analyzing large datasets. By applying various SQL techniques such as filtering, sorting, grouping, and aggregation, I derived actionable insights from the Human Resource dataset that could assist in making data-driven HR decisions.
