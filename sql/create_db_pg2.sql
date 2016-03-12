-- First drop the database 
-- if database doesn't exist it will throw error
-- please ignore the error
drop database pg2;

-- Then create the database
create database pg2;

-- Create the table that stores the Paying Guest Table Data
create table pg2.pg
(
id INT AUTO_INCREMENT PRIMARY KEY,
name char(20),
addr varchar(30),
 created_on timestamp DEFAULT CURRENT_TIMESTAMP
);

-- Create the table that stores the Feature of the Paying Guest table, User can store as many as feature, a PG has
-- but the name of feature and the value can't have more then 100 character. 
-- this table refrences pg table using column pg_id
-- created_by = userid or username (db or app)
-- last_update_by = userid or username (db or app)
create table pg2.features
(
 id INT AUTO_INCREMENT PRIMARY KEY,
 feature_name varchar(100),
 value varchar(100),
 created_on timestamp DEFAULT CURRENT_TIMESTAMP,
 pg_id INT,
 FOREIGN KEY (pg_id) 
        REFERENCES pg2.pg(id)
    
);
  
  
 
    

