# Azure Data Engineering Project | Tokyo Olympic Data Analytics

## Project Overview
This project analyzes Tokyo Olympics 2020 data using Azure services and Power BI. The project includes data extraction, transformation, and visualization components. Below is an overview of the project's structure and key components.

## Architecture
![Project Architecture](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/blob/main/Architecture%20Diagram.png)

## Technologies Used
1. Programming languages - Python, Pyspark, Databricks Magic Command
2. Scripting languages - SQL
3. Microsoft Azure Platform
   - Azure Data Factory
   - Azure Data Lake Storage
   - Databricks
   - Azure Synapse Analytics
4. Microsoft Power BI (data visualisation tool)

## Folder Structure

- **[/ADF/](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/tree/main/ADF)**: Contains Azure Data Factory (ADF) configuration files.
  - **pipelines/**: JSON files for defining ADF pipelines.
  - **linked_services/**: JSON files for connecting to data sources and sinks.
  - **datasets/**: JSON files for defining data structures.
  - **triggers/**: JSON files for automating pipeline execution.
  - **ADF_Documentation.md**: Documentation for ADF, including pipeline descriptions, setup instructions, and other relevant details.
- **[/Data_Lake/](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/tree/main/Data_Lake)**: Contains raw and sample data used for the project.
  - **sample data/**: Includes raw dataset
- **[/Databricks/](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/tree/main/Databricks)**: Contains Databricks notebooks and configurations for advanced data processing and transformation.
- **[/Synapse_Analytics/](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/tree/main/Synapse_Analytics)**: Contains Synapse Analytics configurations and documentation.
  - **Database_Schemas/**: Includes CSV files with database schemas.
  - **Scripts/Queries/**: Contains SQL query files used for data analysis.
  - **Synapse_Analytics_Documentation.md**: Documentation for Synapse Analytics, including details on SQL queries, table schemas, and setup instructions.
- **[/Power_BI/](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/tree/main/Power_BI)**: Contains Power BI report files and related documentation.
  - **reports/**: Power BI report files in `.pbix` format.
  - **Power_BI_Documentation.md**: Documentation for Power BI, including report layout, visuals, and instructions on how to open the report.

## Additional information on Tech used

## Azure Data Factory (ADF)

- **Data Factory Name**: `tokyo-olympic-han`
- **Pipeline**: `Load_Olympic_Data`
  - **Purpose**: Extracts data from an external source and loads it into the data lake. Data was not transformed during this step.
  - **Source**: [External Data Source](https://github.com/darshilparmar/tokyo-olympic-azure-data-engineering-project/tree/main/data)
  - **Sink**: Data Lake Gen 2 `olympicsdatahan`, folder `raw-data`
  - **Output Files**: CSV files for `Athletes`, `Coaches`, `EntriesGender`, `Medals`, `Teams`
  - **Triggers**: The pipeline was executed manually without a trigger.

## Data Lake

The Data Lake component stores raw and processed data used for analytics. Key folder:

- **Folder: `sample data`**
  - **Description**: Contains raw dataset used during the ETL process and data analysis.

## Databricks

The Databricks component is used for advanced data processing and transformation. Details of the Databricks setup and any related notebooks will be provided in the Databricks folder.

## Synapse Analytics

- **Data Source**: The report uses the Synapse Data Lake database named `TokyoOlympicsDB` for data. This database was used to import and analyze data in Power BI.
- **Scripts/Queries**: SQL query files used for data analysis are stored in the Synapse_Analytics/Scripts/Queries folder.

## Power BI

- **Dashboard**: The project includes a single Power BI dashboard.
- **Visuals**: 
  - Cards displaying the number of disciplines, number of countries, and total number of athletes with breakdowns by gender.
  - Stacked Bar Chart for medal counts by country.
  - Pie Chart for medal distribution by discipline.
  - Stacked Column Chart for top 10 countries by number of athletes.
  - Clustered Column Chart for gender distribution of athletes by discipline.
  - Stacked Column Chart for disciplines with female gold medals as a percentage of total athletes.

## How to Open the Report

To view the report:
1. **Download the Report**: Download the `.pbix` file from the [reports folder](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/blob/main/Power_BI/reports/Tokyo_Olympics_Report.pbix).
2. **Open Power BI Desktop**: Launch Power BI Desktop on your computer.
3. **Open the File**: In Power BI, go to **File > Open** and select the downloaded `.pbix` file.
4. **Interact with the Report**: Once the file is opened, you can interact with the visuals and analyze the data.

## Conclusion

This project provides valuable insights into the Tokyo Olympics 2020 data through various Azure services and Power BI visualizations. The documentation includes details on ADF, Data Lake, Databricks, Synapse Analytics, and Power BI components used in the project.
