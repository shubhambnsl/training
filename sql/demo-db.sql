drop database demo_database;
CREATE Database demo_database;
CREATE TABLE demo_database.Department(
    DepartmentID varchar(25) not null,
    Floor varchar(25) not null,
    CONSTRAINT pk_dept PRIMARY KEY(DepartmentID, Floor),
)ENGINE = InnoDB;

CREATE TABLE demo_database.Employee (
    ID varchar(25) not null,
    DepartmentID varchar(25),
    Floor varchar(25),
    CONSTRAINT pk_ID PRIMARY KEY(ID),
    CONSTRAINT fk_dept FOREIGN KEY(DepartmentID, Floor)
        REFRENCES Department(DepartmentID, Floor)
)Engine = InnoDB;


CREATE TABLE demo_database.Attendant(
    ID varchar(25) not null,
    DepartmentID varchar(25) not null,
    Floor varchar(25),
    CONSTRAINT pk_attendant PRIMARY KEY(ID),
    CONSTRAINT ak_attendant UNIQUE(DepartmentID, Floor),
    CONSTRAINT fk_dept FOREIGN KEY(DepartmentID, Floor)
        REFRENCES Employee(DepartmentID, Floor)
    CONSTRAINT fk_dept FOREIGN KEY(DepartmentID, Floor)
        REFRENCES Department(DepartmentID, Floor)
)Engine = InnoDB;

