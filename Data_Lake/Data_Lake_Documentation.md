# Data Lake Documentation

## Data Lake Overview

- **Data Lake Name**: tokyo-olympic-data
- **Storage Account Name**: olympicsdatahan
- **Location**: UK South

## Data Lake Structure

### Folder Structure

- **/raw-data**: Contains the raw data files extracted from the data source.
  - Example: `athletes.csv`
- **/transformed-data**: Contains the transformed data files, organized by the transformation process.
  - Example: A folder named after the original file `athletes.csv` with multiple transformed files inside.

For a detailed view of the folder structure and organization, refer to the [Data Lake Structure Documentation](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/blob/main/Data_Lake/Data_Lake_Structure.md).

## Data Ingestion

### Data Source

- **Data Source URL**: [Tokyo Olympic Data Repository](https://github.com/darshilparmar/tokyo-olympic-azure-data-engineering-project/tree/main/data)
  - The data is sourced from this GitHub repository, containing various CSV files related to the Tokyo Olympic data.

### Data Ingestion Process

1. **Extraction**: Data was extracted from the provided GitHub repository.
2. **Storage**: The extracted data was stored in the `/raw-data` folder in the Azure Data Lake.
3. **Transformation**: Data was transformed using Azure Databricks, and the results were stored in the `/transformed-data` folder.

## Data Transformation

Data transformation was performed using Azure Databricks, which processed and converted the raw data into the transformed format stored in the `/transformed-data` folder.
