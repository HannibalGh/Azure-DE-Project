# Tokyo Olympics 2020 Data Analysis Project

## Overview
This project analyzes data from the Tokyo Olympics 2020, focusing on athlete performance, medal distribution, and gender representation. The analysis is performed using Azure Data Factory (ADF) for ETL processes and Power BI for data visualization.

## Project Structure

- **/ADF**: Contains Azure Data Factory configurations.
  - **pipelines/**: JSON files defining ADF pipelines.
  - **linked_services/**: JSON files for linked services.
  - **datasets/**: JSON files for datasets.
  - **triggers/**: JSON files for triggers.
  - **ADF_Documentation.md**: Documentation on ADF pipelines, linked services, datasets, and triggers.

- **/Power_BI**: Contains Power BI report files and related documentation.
  - **reports/**: Power BI report files in `.pbix` format.
  - **Power_BI_Documentation.md**: Instructions on opening and using Power BI reports.

- **/Synapse_Analytics**: Contains Synapse Analytics SQL queries and database schema documentation.
  - **Scripts/Queries/**: SQL queries for data analysis.
  - **Database_Schemas/**: Database schema documentation for Synapse Analytics tables.
  - **Synapse_Documentation.md**: Documentation on Synapse Analytics setup, queries, and data sources.

## Data Sources

- **Data Source**: Synapse Data Lake database named `TokyoOlympicsDB`.
- **External Data Source**: [External Data Source](https://github.com/darshilparmar/tokyo-olympic-azure-data-engineering-project/tree/main/data)

## Setup Instructions

### Azure Data Factory (ADF)
1. Configure the ADF pipelines using the JSON files in `/ADF/pipelines/`.
2. Set up linked services and datasets using the JSON files in `/ADF/linked_services/` and `/ADF/datasets/`.
3. Refer to the `ADF_Documentation.md` for detailed setup instructions.

### Power BI
1. Download the `.pbix` file from `/Power_BI/reports/`.
2. Open the file in Power BI Desktop as described in `Power_BI_Documentation.md`.
3. Interact with the report and visualizations.

### Synapse Analytics
1. Use the SQL queries from `/Synapse_Analytics/Scripts/Queries/` to analyze data.
2. Refer to `Synapse_Documentation.md` for details on table schemas and data sources.

## Data Visualizations
The Power BI report includes various visuals such as:
- Cards for key metrics (e.g., number of disciplines, countries, and athletes).
- Charts for medal counts, distribution by discipline, and gender distribution.

## Notes
- The Azure Data Factory and resources may be deleted as part of project closure. Please refer to the project documentation for any final data extraction or validation.

## Additional Resources
- [Azure Data Factory Documentation](https://docs.microsoft.com/en-us/azure/data-factory/)
- [Power BI Documentation](https://docs.microsoft.com/en-us/power-bi/)
- [Azure Synapse Analytics Documentation](https://docs.microsoft.com/en-us/azure/synapse-analytics/)

## License
Specify the license for your project if applicable.

## Contact
Provide contact information if users have questions or need support.

