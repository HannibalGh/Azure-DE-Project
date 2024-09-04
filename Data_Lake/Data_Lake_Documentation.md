# Data Lake Documentation

## Introduction

This document provides detailed information about the configuration, setup, and management of the Azure Data Lake used in this project. It includes details on security configurations, access control, and other relevant considerations for managing the data stored in the lake.

## Data Lake Overview

- **Data Lake Name**: tokyo-olympic-data
- **Storage Account Name**: olympicsdatahan
- **Location**: uksouth
- **Public Accessibility**: This container is publicly accessible.

## Data Source

The data used in this project is sourced from:
- **Repository**: [Tokyo Olympic Azure Data Engineering Project - Data](https://github.com/darshilparmar/tokyo-olympic-azure-data-engineering-project/tree/main/data)

## Folder Structure

Refer to the [Data Lake Structure Documentation](https://github.com/HannibalGh/Azure-DE-Project-Tokyo-Olympic-Data-Analytics/blob/main/Data_Lake/Data_Lake_Structure.md) for detailed information on the folder organization and file naming conventions.

## Security and Access Control

### Access Control

- **Access Levels**: The data lake has public accessibility. Ensure to review and manage permissions based on project requirements and security best practices.
- **Authentication Methods**: Authentication to the data lake is managed through Azure Active Directory (AAD) or Shared Access Signatures (SAS) as required for secure access.

### Security Configurations

- **Encryption**: Data is encrypted using Azure Storage Service Encryption (SSE) for data at rest and HTTPS for data in transit.
- **Firewall Rules**: There are no specific firewall rules as the container is publicly accessible. Review and adjust based on security policies if needed.
- **Compliance**: Ensure compliance with relevant data protection regulations and internal security policies.

## Data Management

### Data Ingestion

- **Sources**: Data is ingested from various sources into the data lake.
- **Ingestion Process**: Data is ingested using Azure Data Factory (ADF) for automated data pipelines.

### Data Transformation

- **Tools**: Data transformation is performed using Azure Databricks.
- **Processes**: Data transformation scripts and processes are designed to clean and process raw data into a usable format.

### Data Storage

- **Retention Policies**: Data retention policies ensure data is stored as long as needed for analysis and reporting. Archive or delete data as per the project's data lifecycle requirements.
- **Data Lifecycle**: Data flows from ingestion to transformation and then is stored in the appropriate folders for analysis and visualization.

