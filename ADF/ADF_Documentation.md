# ADF Documentation

## Overview
This documentation provides details on the Azure Data Factory (ADF) setup for the Tokyo Olympics data project. It includes descriptions of the pipelines, linked services, datasets, and triggers used in the ETL process.

## Folder Structure
- **pipelines/**: JSON files for defining ADF pipelines.
- **linked_services/**: JSON files for connecting to data sources and sinks.
- **datasets/**: JSON files for defining data structures.
- **triggers/**: JSON files for automating pipeline execution. (Not used in this project)

## Data Factory
- **Data Factory Name**: `tokyo-olympic-han`
- **Factory JSON File**: [tokyo-olympic-han.json](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/blob/main/factory/tokyo-olympic-han.json)

## Pipeline Descriptions

### Pipeline: `Load_Olympic_Data`
- **Purpose**: Extracts data from an external source and loads it into the data lake. Data was not transformed during this step.
- **Activities**:
  - **Copy Data**: Copies data from the external source to the Data Lake.
- **Source**: [External Data Source](https://github.com/darshilparmar/tokyo-olympic-azure-data-engineering-project/tree/main/data)
- **Sink**: Data Lake Gen 2 `olympicsdatahan`, folder `raw-data`
- **Output Files**: The pipeline generates CSV files for the following datasets:
  - `Athletes`
  - `Coaches`
  - `EntriesGender`
  - `Medals`
  - `Teams`
- **Triggers**: There was no trigger for this pipeline. It ran manually when connected to the sink and source.

## Linked Services

### Linked Service: `DataLakeGen2`
- **Description**: Connects to Azure Data Lake Gen 2 where the raw Olympic data is stored.
- **Connection Details**:
  - **Type**: Azure Data Lake Gen 2

## Datasets

### Dataset: `Athletes`
- **Description**: Represents the dataset containing information about Olympic athletes.
- **Schema**:
  - **PersonName**: string (nullable)
  - **Country**: string (nullable)
  - **Discipline**: string (nullable)

### Dataset: `Coaches`
- **Description**: Represents the dataset containing information about Olympic coaches.
- **Schema**:
  - **Name**: string (nullable)
  - **Country**: string (nullable)
  - **Discipline**: string (nullable)
  - **Event**: string (nullable)

### Dataset: `EntriesGender`
- **Description**: Contains gender distribution of athletes across disciplines.
- **Schema**:
  - **Discipline**: string (nullable)
  - **Female**: integer (nullable)
  - **Male**: integer (nullable)
  - **Total**: integer (nullable)

### Dataset: `Medals`
- **Description**: Contains medal counts for each country.
- **Schema**:
  - **Rank**: integer (nullable)
  - **TeamCountry**: string (nullable)
  - **Gold**: integer (nullable)
  - **Silver**: integer (nullable)
  - **Bronze**: integer (nullable)
  - **Total**: integer (nullable)
  - **Rank by Total**: integer (nullable)

### Dataset: `Teams`
- **Description**: Contains information about teams participating in the Olympics.
- **Schema**:
  - **TeamName**: string (nullable)
  - **Discipline**: string (nullable)
  - **Country**: string (nullable)
  - **Event**: string (nullable)

## Triggers
- **Trigger Name**: None
- **Description**: The pipeline was executed manually without a trigger.

## Setup Instructions
1. Configure linked services with the appropriate connection details.
2. Deploy the `Load_Olympic_Data` pipeline and ensure it is connected to the correct source and sink.
3. Validate pipeline execution by running a test load.

## Usage Notes
- Ensure that linked services are configured correctly before running pipelines.
- Monitor pipeline runs and logs for any errors or issues.

## Troubleshooting
- **Issue**: Pipeline fails to execute.
  - **Solution**: Check the linked service connection details and ensure proper permissions are set.

## Additional Resources
- [Azure Data Factory Documentation](https://docs.microsoft.com/en-us/azure/data-factory/)
