# Data Lake Folder Structure

## Overview

This document describes the structure of the data lake used in the project. The data lake is organized into two primary folders: `raw-data` and `transformed-data`. Each folder serves a specific purpose in the data processing pipeline.

## Folder Structure

### `raw-data/`
- **Description**: Contains the raw CSV files extracted from the data source. These files are in their original form before any transformation or processing.
- **Example Content**:
  - `athletes.csv`

### `transformed-data/`
- **Description**: Contains the transformed versions of the raw data files. Each CSV file from `raw-data` has a corresponding folder with the transformed data, organized by the transformation process.
- **Structure**:
  - **Example Folder: `athletes/`**
    - **_committed_1636913761093654077**: Metadata file for a committed part of the data.
    - **_SUCCESS**: Marker file indicating successful transformation.
    - **part-00000-tid-1636913761093654077-ca8b0053-78f6-46c7-a508-6bb78f91479f-37-1-c000.csv**: The transformed data file.

## Detailed Description

### `raw-data/athletes.csv`
- **File Type**: CSV
- **Description**: Contains raw data extracted from the source about athletes. This file is used as input for the data transformation process.

### `transformed-data/athletes/`
- **Description**: Directory containing files related to the transformed `athletes.csv`.
- **Files**:
  - **_committed_1636913761093654077**: Indicates a committed part of the data transformation.
  - **_SUCCESS**: A file indicating that the transformation process for this data set was successful.
  - **part-00000-tid-1636913761093654077-ca8b0053-78f6-46c7-a508-6bb78f91479f-37-1-c000.csv**: The resulting CSV file after transformation, containing processed data ready for analysis.
