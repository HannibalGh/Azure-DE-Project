# Power BI Documentation

## Overview

This documentation provides an overview of the Power BI report for the Tokyo Olympics 2020 data analysis. The report visualizes key metrics related to athletes, medals, and gender distribution across different countries and disciplines.

## Data Source

- **Data Source**: The report uses the Synapse Data Lake database named `TokyoOlympicsDB` for data. This database was used to import and analyze data in Power BI.

## Folder Structure

- **Reports Folder**: The Power BI report is saved in `.pbix` format and can be accessed [here](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/blob/main/Power_BI/reports/Tokyo_Olympics_Report).

## Report Layout and Visuals

### Top Cards

At the top of the report, there are interactive cards displaying the following key metrics:
1. **Number of Disciplines**
2. **Number of Countries**
3. **Total Number of Athletes**
   - Separate numbers for **Male Athletes** and **Female Athletes**.

> **Interactivity**: The values on these cards dynamically change based on the selected disciplines or countries in the visuals below, providing real-time insights into the selected data.

### Visuals

1. **Medal Counts by Country** (Stacked Bar Chart)
   - Displays the total medal count (Gold, Silver, Bronze) for each country.

2. **Medal Distribution by Discipline** (Pie Chart)
   - Shows the distribution of medals across different disciplines.

3. **Top 10 Countries by Number of Athletes** (Stacked Column Chart)
   - Highlights the top 10 countries with the highest number of participating athletes.

4. **Gender Distribution of Athletes by Discipline** (Clustered Column Chart)
   - Breaks down the number of male and female athletes across various disciplines.

5. **Disciplines with Female Gold Medals as a Percentage of Total Athletes** (Stacked Column Chart)
   - Shows disciplines with the highest percentage of female gold medalists relative to the total number of athletes in that discipline.
