use akshialabs;


CREATE TABLE titles(
title_id varchar(10) ,
title varchar(25)  
 
)ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location '/user/anabig114248/Employees_dataset/Titles'
TBLPROPERTIES (
'avro.schema.url'='hdfs:///user/anabig114248/Employees_dataset_schema/Titles.avsc');



create table employees(

emp_no int ,
emp_title_id varchar(10)  ,
birth_date varchar(15) ,
first_name varchar(20) ,
last_name varchar(20)  ,
sex varchar(2)  ,
hire_date varchar(15) ,
no_of_projects int  ,
last_performance_rating varchar(4) ,
left_ tinyint ,
last_date varchar(15)

)ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location '/user/anabig114248/Employees_dataset/employees'
TBLPROPERTIES (
'avro.schema.url'='hdfs:///user/anabig114248/Employees_dataset_schema/employees.avsc');



create table salaries(

emp_no int ,
salary int 
 

)ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location '/user/anabig114248/Employees_dataset/salaries'
TBLPROPERTIES (
'avro.schema.url'='hdfs:///user/anabig114248/Employees_dataset_schema/salaries.avsc');


create table departments(

dept_no varchar(10) ,
dept_name varchar(30)

)ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location '/user/anabig114248/Employees_dataset/departments'
TBLPROPERTIES (
'avro.schema.url'='hdfs:///user/anabig114248/Employees_dataset_schema/departments.avsc');



create table dept_emp(
emp_no int ,
dept_no varchar(10)
 
)ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location '/user/anabig114248/Employees_dataset/dept_emp'
TBLPROPERTIES (
'avro.schema.url'='hdfs:///user/anabig114248/Employees_dataset_schema/dept_emp.avsc');


create table dept_manager(
dept_no varchar(10),
emp_no int 

 
)ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location '/user/anabig114248/Employees_dataset/dept_manager'
TBLPROPERTIES (
'avro.schema.url'='hdfs:///user/anabig114248/Employees_dataset_schema/dept_manager.avsc');