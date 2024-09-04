# Synapse Analytics Documentation

## Overview

This documentation provides an overview of the SQL queries used in the Synapse Analytics workspace for analyzing the Tokyo Olympic data. The queries are organized within the `Scripts/Queries` folder and are designed to extract insights related to athlete distribution, medal counts, and gender representation across different disciplines and countries.

## Folder Structure

- **Scripts/Queries**: This folder contains all the SQL query files used in the Synapse Analytics environment. Each query focuses on a specific aspect of the Olympic data analysis. You can access the folder [here](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/tree/main/Synapse_Analytics/Scripts/Queries).

## Table Creation

All tables used in these queries were manually created using the Synapse Analytics UI. No automated scripts were employed for table creation; only the SQL queries listed below were executed in Synapse Analytics. The following section outlines the table schemas used in these queries.

## Table Information

The following are the main tables used in the SQL queries:

### 1. **Athletes**

- **Columns**:
  - `PersonName` (varchar, 8000): Name of the athlete.
  - `Country` (varchar, 8000): Country the athlete represents.
  - `Discipline` (varchar, 8000): The discipline (sport) the athlete participates in.

### 2. **Coaches**

- **Columns**:
  - `Name` (varchar, 8000): Name of the coach.
  - `Country` (varchar, 8000): Country the coach represents.
  - `Discipline` (varchar, 8000): The discipline (sport) the coach is associated with.
  - `Event` (varchar, 8000): The specific event the coach is responsible for.

### 3. **EntriesGender**

- **Columns**:
  - `Discipline` (varchar, 8000): The discipline (sport) being referred to.
  - `Female` (bigint): The number of female participants in the discipline.
  - `Male` (bigint): The number of male participants in the discipline.
  - `Total` (bigint): The total number of participants in the discipline.

### 4. **Medals**

- **Columns**:
  - `Rank` (bigint): The rank of the country based on medal counts.
  - `TeamCountry` (varchar, 8000): The country that won the medals.
  - `Gold` (bigint): Number of gold medals won.
  - `Silver` (bigint): Number of silver medals won.
  - `Bronze` (bigint): Number of bronze medals won.
  - `Total` (bigint): Total medals won (gold, silver, bronze).
  - `Rank_by_Total` (bigint): The rank of the country based on total medals.

### 5. **Teams**

- **Columns**:
  - `TeamName` (varchar, 8000): The name of the team.
  - `Discipline` (varchar, 8000): The discipline (sport) the team is involved in.
  - `Country` (varchar, 8000): The country the team represents.
  - `Event` (varchar, 8000): The specific event the team participates in.

## SQL Queries

The following SQL query files are located in the `Scripts/Queries` folder:

### 1. **Disciplines with Female Gold Medals as a Percentage of Total Athletes.sql**

- **Description**: This query calculates the percentage of female gold medals relative to the total number of athletes in each discipline.
- **Usage**: Useful for understanding gender representation and success in specific disciplines.

### 2. **Gender Distribution of Athletes by Discipline.sql**

- **Description**: This query provides the distribution of male and female athletes across different disciplines.
- **Usage**: Helps in visualizing the gender balance in various sports disciplines.

### 3. **Medal Counts by Country.sql**

- **Description**: This query lists the total number of gold, silver, and bronze medals won by each country.
- **Usage**: Allows for a comparative analysis of countries based on their medal counts.

### 4. **Medal Distribution by Discipline.sql**

- **Description**: This query breaks down the distribution of medals (gold, silver, bronze) across various disciplines.
- **Usage**: Helps in identifying which disciplines had the highest medal distribution.

### 5. **Top 10 Countries by Number of Athletes.sql**

- **Description**: This query identifies the top 10 countries with the highest number of athletes participating in the Olympics.
- **Usage**: Provides insights into the scale of participation by different countries.

## Execution and Visualization

To execute these queries, simply run them in the Synapse Analytics workspace. The results can be visualized in **Microsoft Power BI** by connecting Power BI to your Synapse workspace or exporting the results to a format compatible with Power BI.

### Example: Visualizing Medal Counts by Country

1. **Run the Query**: Execute the `Medal Counts by Country.sql` query in Synapse Analytics.
2. **Export Results**: Export the query results as a CSV or connect directly to Synapse from Power BI.
3. **Create Visualization**: In Power BI, create a bar chart to visualize the total number of gold, silver, and bronze medals won by each country.

### Example: Visualizing Gender Distribution by Discipline

1. **Run the Query**: Execute the `Gender Distribution of Athletes by Discipline.sql` query.
2. **Load into Power BI**: You can import the query results into Power BI to create a pie chart that displays the percentage of male and female athletes in each discipline.
3. **Visualization**: Use the pie chart to represent gender balance within each discipline visually.

## Conclusion

These queries provide valuable insights into the performance and participation of countries and athletes in the Tokyo Olympics. The SQL scripts are straightforward to run and can be easily integrated with Power BI for dynamic visualizations.

You can access the query files here: [Queries Folder](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/tree/main/Synapse_Analytics/Scripts/Queries).
