CREATE TABLE Department(
    DepartmentID varchar(25) not null,
    Floor varchar(25) not null,
    CONSTRAINT pk_dept PRIMARY KEY(DepartmentID, Floor),
)ENGINE = InnoDB;

CREATE TABLE Employee (
    ID varchar(25) not null,
    DepartmentID varchar(25),
    Floor varchar(25),
    CONSTRAINT pk_ID PRIMARY KEY(ID),
    CONSTRAINT fk_dept FOREIGN KEY(DepartmentID, Floor)
        REFRENCES Department(DepartmentID, Floor)
)Engine = InnoDB;


CREATE TABLE Attendant(
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