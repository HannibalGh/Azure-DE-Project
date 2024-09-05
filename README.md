# Project Overview

This project involves analyzing Tokyo Olympics 2020 data using Azure services and Power BI. The project includes data extraction, transformation, and visualization components. Below is an overview of the project's structure and key components.

## Folder Structure

- **/Power_BI/reports/**: Contains Power BI report files in `.pbix` format.
- **/ADF/**: Contains Azure Data Factory (ADF) configuration files.
  - **pipelines/**: JSON files for defining ADF pipelines.
  - **linked_services/**: JSON files for connecting to data sources and sinks.
  - **datasets/**: JSON files for defining data structures.
  - **triggers/**: JSON files for automating pipeline execution.
  - **ADF_Documentation.md**: Documentation for ADF, including pipeline descriptions, setup instructions, and other relevant details.
- **/Synapse_Analytics/**: Contains Synapse Analytics configurations and documentation.
  - **Database_Schemas/**: Includes CSV files with database schemas.
  - **Scripts/Queries/**: Contains SQL query files used for data analysis.
  - **Synapse_Analytics_Documentation.md**: Documentation for Synapse Analytics, including details on SQL queries, table schemas, and setup instructions.
- **/Data_Lake/**: Contains raw and sample data used for the project.
  - **sample data/**: Includes sample datasets for demonstration purposes.
- **/Databricks/**: Contains Databricks notebooks and configurations for advanced data processing and transformation.
- **README.md**: Main documentation file for the project.

## Data Lake

The Data Lake component of the project stores raw and processed data used for analytics. The key folder in this repository is:

- **Folder: `sample data`**
  - **Description**: Contains sample datasets used for demonstrating the ETL process and data analysis. This folder serves as a reference for the types of data being handled.

## Databricks

The Databricks component is used for advanced data processing and transformation. Details of the Databricks setup and any related notebooks will be provided in the Databricks folder.

## Azure Data Factory (ADF)

- **Data Factory Name**: `tokyo-olympic-han`
- **Pipeline**: `Load_Olympic_Data`
  - **Purpose**: Extracts data from an external source and loads it into the data lake. Data was not transformed during this step.
  - **Source**: [External Data Source](https://github.com/darshilparmar/tokyo-olympic-azure-data-engineering-project/tree/main/data)
  - **Sink**: Data Lake Gen 2 `olympicsdatahan`, folder `raw-data`
  - **Output Files**: CSV files for `Athletes`, `Coaches`, `EntriesGender`, `Medals`, `Teams`
  - **Triggers**: None; the pipeline was executed manually.

## Power BI

The Power BI reports visualize key metrics related to athletes, medals, and gender distribution across different countries and disciplines. The report is located in the `/Power_BI/reports/` folder and is saved as `Tokyo_Olympics_Report.pbix`.

### How to Open the Report
1. **Download the Report**: Download the `.pbix` file from the `/Power_BI/reports/` folder.
2. **Open Power BI Desktop**: Launch Power BI Desktop on your computer.
3. **Open the File**: In Power BI, go to **File > Open** and navigate to the downloaded `.pbix` file.
4. **Interact with the Report**: Once the file is opened, you can interact with the various visuals and analyze the data.

## Synapse Analytics

Synapse Analytics is used for querying and analyzing the Olympic data. The SQL queries and table schemas are documented in the `/Synapse_Analytics/` folder.

### Synapse Analytics Documentation
- **Path**: `/Synapse_Analytics/Synapse_Analytics_Documentation.md`
- **Contents**: Details on SQL queries, table schemas, and how to use Synapse Analytics for data analysis.

## Conclusion

This project demonstrates a comprehensive approach to analyzing Olympic data using Azure services and Power BI. The provided documentation covers the setup and usage of each component involved in the ETL process and data visualization.

