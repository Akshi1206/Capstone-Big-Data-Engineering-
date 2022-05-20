# Employee-Data-Analysis

**Problem statement:** 
You have been hired as a new data engineer at Analytixlabs. Your first major task is to work on data engineering
project for one of the big corporation’s employees data from the 1980s and 1995s. All the database of employees
from that period are provided six CSV files. In this project, you will design data model with all the tables to hold data,
import the CSVs into a SQL database, transfer SQL database to HDFS/Hive, and perform analysis using
Hive/Impala/Spark/SparkML using the data and create data and ML pipelines.

**Project Objectives:**
Generation of data model from the data provided.
Creation of database & tables in MySQL server based on the ER Diagram.
Transfer the data from MySQL to HDFS by creating of Sqoop job. 
Database creation in Hive and load data into it based onn the ER diagram.
Work on Exploratory data analysis as per the analysis requirement using Impala and Spark SQL.
Build ML Model as per the requirement.
Creation of data pipeline and ML pipe line.

The entire data is contained in the /csv folder which contains a total of 5 files:

1. titles.csv -> This file contains the different job titles of the employees.
2. employees.csv -> Contains all data related to each employee, such as employee id, name, age,sex, date of hiring, etc.
3. salaries.csv -> contains salary of each employee.
4. departments.csv -> enlists the various departments in the company.
5. dept_manager.csv -> indicates which employee manages which department.
6. dept_emp.csv -> indicates wich department each employee belongs to.

**Tech Stack:**
- MySQL 
- Linux Commands
- Sqoop
- HDFS 
- Hive 
- Impala 
- SparkSQL 
- SparkML 



 

**Run the following Commands in the given order**

Login to mysql 

show databases; 

Create tables for employee data using codes 
a. upload csv to ftp (https://npbdh.cloudloka.com/ftp)
b. run the below command to create tables and lead data into them under: source My_sql_table_create.txt

exit from mysql by using below given command: quit

create a directory in hdfs and a directory in local to store the dataset as well as tables schema which will be import from mysql by using below commands: creating directory in hdfs. hdfs dfs -mkdir Employees_dataset creating directory in local mkdir Employees_dataset_schema


change the directory to Employees_dataset  we have created: cd Employees_dataset_schema

Run the following command: sh Sqoop.sh

cd the directory back to local: cd ..

Run the command to copy the schema file to hdfs: hdfs dfs -put Employees_dataset

Run the following command to create hive table: hive -f Hive_table_create.hql

Run the following command to run the analysis on the tables we have created in hive and the save the query in Hive_table_create.hql: hive -f Hive_table_create.hql 

Open Impala and run EDA-Impala.txt file for EDA using Hive Tables

Open the  Capstone_EDA.ipynb file for running all the Spark SQL EDA 
and Open Open the  ML_Pipeline.ipynb file for running all the ML commands

