# Azure Data Engineer Project - Olympics Data Analytics

Welcome to the Olympics Data Engineering project on Azure! This project is designed to showcase how various Azure services can be utilized to ingest, store, transform, and analyze Olympics-related data. We have employed the following Azure services to achieve these goals:

## Table of Contents
- [Introduction-to-Tools](#introduction-to-tools)
- [About-Project](#about-project)
- [Architecture](#architecture)
- [Structure](#structure)
- [Prerequisites](#prerequisites)
- [Usage](#usage)


# Introduction-to-Tools
- **Azure Data Factory (ADF)**: Used for data ingestion, Azure Data Factory allows us to efficiently collect data from various sources and move it to the desired destination. In this project, ADF is responsible for bringing in Olympics data from external sources.

- **Azure Data Lake Storage Gen2**: This is where the ingested data is stored. Azure Data Lake Storage Gen2 provides a scalable and secure platform for storing large volumes of data. It enables us to manage, access, and analyze data effectively.

- **Azure Databricks**: For data transformation, we leverage Azure Databricks with PySpark. Databricks provides a collaborative environment for data engineers and data scientists to work together on big data projects. In our project, we use PySpark to clean, reshape, and process the raw Olympics data into a more usable format.

- **Azure Synapse Analytics**: To gain valuable insights from the transformed data, we utilize Azure Synapse Analytics. It allows us to run SQL queries on the data warehouse to extract meaningful information. This is where we uncover trends, patterns, and insights related to the Olympics data.

# About-Project

To get started with this project, follow these steps:

1. **Data Ingestion**: Use Azure Data Factory to configure data ingestion from your chosen data sources. Define the data movement and transformation activities required to bring the Olympics data into the Azure ecosystem.

2. **Data Storage**: The ingested data will be stored in Azure Data Lake Storage Gen2. Set up the appropriate folder structure and permissions to organize and secure your data.

3. **Data Transformation**: Utilize Azure Databricks with PySpark for data transformation. Cleanse, preprocess, and reshape the data as necessary to prepare it for analysis.

4. **Analytics**: Write SQL queries using Azure Synapse Analytics to gain insights from the transformed data. Identify trends, statistics, and patterns related to the Olympics data.

# Architecture

<img width="1156" alt="Screenshot 2023-08-13 at 7 51 38 PM" src="https://github.com/chdl17/Olympics-DE-Project/assets/120616550/356e8929-5782-47ec-b1d7-e8917bfba580">

# Structure

```
- data_ingestion/
  - ADF_pipelines/
    - ...
- data_storage/
  - olympics_data/
    - raw/
    - transformed/
- data_transformation/
  - Databricks_notebooks/
    - ...
- analytics/
  - Synapse_SQL_scripts/
    - ...
- README.md
```

# Prerequisites

- Azure subscription: Ensure you have an active Azure subscription to provision the required services.
- Access to Azure Portal: You'll need access to the Azure portal to create and manage resources.
- Data Sources: Identify the external sources from which you'll be ingesting Olympics data.

# Usage

1. **Data Ingestion**: Configure and run the ADF pipelines to ingest the Olympics data into Azure Data Lake Storage Gen2.

![alt text](./img/data_ingestion.jpg "Data Ingestion Flow")

2. **Data Transformation**: Execute the PySpark notebooks in Azure Databricks to perform data transformation tasks.

![alt text](./img/spark.jpg "Databricks Code")

3. **Analytics**: Use Azure Synapse Analytics to execute SQL scripts in order to derive insights from the transformed data.

![alt text](./img/synapse.jpg "Azure Synapse")