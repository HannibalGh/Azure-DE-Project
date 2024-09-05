# Power BI Documentation

## Overview

This documentation provides details on the Power BI reports created for analyzing the Tokyo Olympic data. The reports include various visuals that offer insights into athlete distribution, medal counts, and gender representation across different disciplines and countries.

## Report Location

The Power BI report can be accessed [here](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/blob/main/Power_BI/reports/Tokyo_Olympics_Report.pbix).

## Visualizations

The Power BI report is organized as follows:

### Top Row
1. **Cards**:
   - **Number of Disciplines**: Displays the total number of disciplines.
   - **Number of Countries**: Shows the total number of countries.
   - **Total Number of Athletes**: Indicates the total number of athletes.
   - **Number of Males and Females**: Displays the number of male and female athletes.
   - **Interactivity**: The values in these cards dynamically update based on the disciplines or countries selected in the other visuals on the report.

### Second Row
1. **Medal Counts by Country**:
   - **Type**: Stacked Bar Chart
   - **Description**: Shows the total number of gold, silver, and bronze medals won by each country.

2. **Medal Distribution by Discipline**:
   - **Type**: Pie Chart
   - **Description**: Breaks down the distribution of medals (gold, silver, bronze) across various disciplines.

3. **Top 10 Countries by Number of Athletes**:
   - **Type**: Stacked Column Chart
   - **Description**: Lists the top 10 countries with the highest number of athletes participating in the Olympics.

### Third Row
1. **Gender Distribution of Athletes by Discipline**:
   - **Type**: Clustered Column Chart
   - **Description**: Provides the distribution of male and female athletes across different disciplines.

2. **Disciplines with Female Gold Medals as a Percentage of Total Athletes**:
   - **Type**: Stacked Column Chart
   - **Description**: Shows the percentage of female gold medals relative to the total number of athletes in each discipline.

## Interactivity

- **Dynamic Updates**: The cards at the top of the dashboard will update based on selections made in the visuals below. For example, selecting a specific discipline or country in any visual will adjust the card values to reflect data specific to that selection.

## Data Source

- **Data Source Name**: TokyoOlympicsDB
- **Connection**: The report is connected
