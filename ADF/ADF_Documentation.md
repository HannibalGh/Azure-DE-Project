# ADF Documentation

## Overview
This documentation provides details on the Azure Data Factory (ADF) setup for the Tokyo Olympics data project. It includes descriptions of the pipelines, linked services, datasets, and triggers used in the ETL process.

## Folder Structure
- **pipelines/**: JSON files for defining ADF pipelines.
- **linked_services/**: JSON files for connecting to data sources and sinks.
- **datasets/**: JSON files for defining data structures.
- **triggers/**: JSON files for automating pipeline execution (Note: No triggers folder in the current setup).
- **factory/**: JSON file containing the ADF factory configuration.

## Data Factory
- **Data Factory Name**: `tokyo-olympic-han`

### Factory Configuration
The ADF factory is configured with the following JSON file:
- **File Name**: `tokyo-olympic-han.json`
- **File Location**: [[tokyo-olympic-han.json](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/blob/main/ADF/factory/tokyo-olympic-han.json)

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
  - **Connection String**: [Connection string details]

## Datasets

### Dataset: `Athletes`
- **Description**: Represents the dataset containing information about Olympic athletes.
- **Schema**:
  - **Athlete_ID**: Integer, unique identifier for each athlete.
  - **Name**: String, name of the athlete.
  - **Country**: String, country of the athlete.

### Dataset: `Coaches`
- **Description**: Represents the dataset containing information about Olympic coaches.
- **Schema**:
  - **Coach_ID**: Integer, unique identifier for each coach.
  - **Name**: String, name of the coach.
  - **Country**: String, country of the coach.
  - **Discipline**: String, discipline the coach is associated with.

### Dataset: `EntriesGender`
- **Description**: Contains gender distribution of athletes across disciplines.
- **Schema**:
  - **Discipline**: String, the discipline.
  - **Female**: Integer, number of female athletes.
  - **Male**: Integer, number of male athletes.
  - **Total**: Integer, total number of athletes.

### Dataset: `Medals`
- **Description**: Contains medal counts for each country.
- **Schema**:
  - **Rank**: Integer, rank of the country based on medal count.
  - **TeamCountry**: String, the country.
  - **Gold**: Integer, number of gold medals.
  - **Silver**: Integer, number of silver medals.
  - **Bronze**: Integer, number of bronze medals.
  - **Total**: Integer, total number of medals.

### Dataset: `Teams`
- **Description**: Contains information about teams participating in the Olympics.
- **Schema**:
  - **TeamName**: String, name of the team.
  - **Discipline**: String, the discipline.
  - **Country**: String, the country.
  - **Event**: String, the event.

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
