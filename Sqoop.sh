mkdir BuidingSchema

cd BuidingSchema

sqoop import-all-tables --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114248 --username anabig114248 --password Bigdata123 --compression-codec=snappy --as-avrodatafile --warehouse-dir /user/anabig114248/Employees_dataset --m 1 --driver com.mysql.jdbc.Driver
