drop database pg1;
create database pg1;
CREATE TABLE pg1.pg(
   id INT AUTO_INCREMENT PRIMARY KEY,
   has_food bool,
   has_laundary bool,
   has_airconditioner bool,
   Level_of_furnshing int,
   has_tv bool,
   has_internet bool,
   has_waterheater bool,
   name char(20),
   address varchar(30),
   rent int,
   distance_from_work int
);
