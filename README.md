# College Rating Data Pipeline (Batch) with GCP

## Project Overview
This project focuses on building a complete data pipeline for processing and analyzing college rating data. It covers the end-to-end workflow from data ingestion to visualization, demonstrating key data engineering concepts and best practices.

## Pipeline Workflow

The project consists of the following steps:
1. Dataset Selction
2. Set up Terraform for building up infrastructure and automatically set up Google Cloud environment
3. Set up Kestra for orchestration
4. Data Movement to Data Lake (BigQuery)
5. Data Transformation for Analytics with dbt and spark
6. Dashboard & Data Visualization

### 1. Dataset Selection

Select Institution-level data files for 1996-97 through 2022-23 containing aggregate data for each institution. Includes information on institutional characteristics, enrollment, student aid, costs, and student outcomes. To understand the comprehensive performance of each college in this dataset

### 2. Set up Terraform for building up infrastructure and automatically set up Google Cloud environment

Terraform will be used to set up GCS and BigQuery.
1. Create a google cloud service account for Terraform to login to my google cloud
2. Download Terraform from [Terraform Official Website][https://developer.hashicorp.com/terraform/install]
3. Add the terraform.exe file path into the environment path so that cmd/git bash terminal can recognize terraform
4. Construct main.tf, variables.tf and output.tf files
    - main.tf
      * This is the primary Terraform configuration file.
      * It defines the resources we want to create in Google Cloud, such as GCS buckets and BigQuery datasets, and also specifies the provider configuration.
      * Essentially, this file tells Terraform what to build and how to connect to GCP.
    - variables.tf
      * This file declares input variables used in main.tf.
      * It allows us to parameterize our configuration, so you can easily change values like project ID, bucket name, region, or dataset name without modifying the main configuration.
      * We can set default values here or override them using a terraform.tfvars file or command-line flags.
    - output.tf
      * This file defines outputs that Terraform will display after applying the configuration.
      * Typical outputs include bucket name, bucket URL, dataset ID, dataset location, project ID, etc.
      * Outputs are useful for sharing important resource information with other scripts, dashboards, or team members.
5. Run terraform init, terraform plan, terraform apply, or terraform destory if you want to delete the services you created in Google Cloud
   * terraform init – Initializes the project, downloads required providers, and prepares the working directory.
   * terraform plan – Shows a preview of the changes Terraform will make (resources to add, change, or destroy) without actually applying them.
   * terraform apply – Applies the configuration and actually creates, updates, or deletes resources as defined in your Terraform files.

### 3. Set up Kestra for orchestration

### 4. Data Movement to Data Lake (Google Cloud Bucket)

### 5. Data Transformation for Analytics with dbt and spark

Apply data transformations and aggregations in the warehouse to make the data suitable for analysis and dashboarding.

### 6. Dashboard & Data Visualization

Build an interactive dashboard using PowerBI to visualize insights such as:

1. Top-ranked colleges

2. Tuition fees vs. student satisfaction

3. Graduation rates vs. employment rates

## Tech Stack

* Infrastructure: Terraform
* Orchestration: Kestra
* Data Storage: Google Cloud Storage (Datalake)
* Data Processing: Python (Pandas, PySpark), SQL
* ETL & Data Pipeline: dbt
* Data Warehouse: Google BigQuery
* Dashboard: Power BI

## How to Run the Project
1. Clone the repository:
```
git clone https://github.com/your-username/college-rating-pipeline.git  
cd college-rating-pipeline 
```

2. Set up the environment:
```
pip install -r requirements.txt
```  
3. Run the ETL pipeline:
```
python src/etl_pipeline.py  
```
4. Start the dashboard
```
streamlit run src/dashboard.py  
```
## Future Improvements


Author
Ximin Zhao – Data Engineer | GitHub: xzhao76