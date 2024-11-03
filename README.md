# End-to-End Azure Data Engineering Project

This project demonstrates a complete data engineering pipeline from an on-premises PostgreSQL database to Azure Synapse Analytics, following the Bronze-Silver-Gold data lake architecture. It includes data migration, transformation, data governance, and final analytics-ready data in Azure Synapse.
In this project, I used the following Azure services to implement a secure and robust ETL pipeline:

- **Onprem Postrgre SQL Database**
- **Azure Data Factory**
- **Azure Data Lake Gen2**
- **Azure Key Vault**
- **Databricks (with Spark)**
- **Azure Synapse Analytics**
- **Power-BI**
- **Programming Languages (SQL,Python,Pyspark)**

  ![Azurearchi](https://github.com/user-attachments/assets/80f0ad47-7ed6-4171-89d6-1ee47f4a518c)

![image](https://github.com/user-attachments/assets/8d3a1156-cc78-44e5-b546-d7403d3c9d70)

## Project Overview
In this project, I utilized the following Azure services to build a secure and efficient ETL pipeline:

- **Azure Data Factory (ADF)**: Migrates data from an on-premises PostgreSQL database to Azure.
- **Azure Key Vault**: Ensures secure storage of sensitive information like passwords.
- **Azure Databricks**: Transforms data between the Bronze, Silver, and Gold layers.
- **Azure Synapse Analytics**: Provides an analytics-ready data model with automatically updating views.
- **Azure Data Lake Gen2**: Serves as the data storage platform, organized in Bronze, Silver, and Gold layers.
- **Power BI (Optional)**: For visualizing and analyzing the data.

## Architecture
This pipeline follows the Bronze-Silver-Gold data lake model:
1. **Bronze Layer**: Raw data ingestion from the on-prem PostgreSQL database using Azure Data Factory.
2. **Silver Layer**: Data cleansing and formatting (e.g., converting datetime to date format).
3. **Gold Layer**: Final data transformation with column renaming, creating analytics-ready tables.
4. **Azure Synapse Analytics**: Creation of views for each table in the gold layer.
5.  **Power-BI**: for building reports

## Project Steps

### 1. Data Migration with Azure Data Factory
- **Source**: On-premises PostgreSQL
- **Target**: Azure Data Lake (Bronze Layer) in parquet form
- **Security**: Passwords and sensitive connection details are securely stored in **Azure Key Vault** for data governance.
- The data was migrated in raw format (parquet form) for initial storage and further transformation.

### 2. Transformation in Databricks (Silver Layer)
- Transformed datetime columns (e.g., `startdate`, `shipdate`) to a simpler date format.
- Moved the cleaned data to the Silver Layer (Delta format) in Azure Data Lake.

### 3. Additional Transformations in Databricks (Gold Layer)
- Renamed columns (e.g., `ColumnNames` to `Column_Names` for consistency).
- Stored transformed data in the Gold Layer (delta Format).

### 4. Data Presentation in Azure Synapse Analytics
- Created a **Synapse Database**.
- Built **views** for each table in the Gold Layer, enabling real-time updates based on changes in the gold tables.

## Technologies Used
- **Azure Data Factory** for data migration
- **Azure Key Vault** for secure password storage and data governance
- **Azure Databricks** (Spark) for data transformation
- **Azure Data Lake Storage** for data lake layers
- **Azure Synapse Analytics** for final data presentation
- **Power-BI** for building reports

## Programming/Scripting language Used
- **Python**
- **SQL**
- **Pyspark**
