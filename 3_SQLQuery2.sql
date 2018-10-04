ALTER table ForeignKeyTable add constraint ForeignKeyTable_ForeignKeyColumn_FK
FOREIGN KEY(ForeignKeyColumn) references PrimaryKeyTable (PrimaryKeyColumn)

CREATE DATABASE DBLearning
use DBLearning
CREATE TABLE tblPerson
(
ID INT Primary key, -- By default primary keys are not null
Name nvarchar(50),
Email nvarchar(50),
GenderId INT
)

CREATE TABLE tblGender
(
ID int NOT NULL Primary KEY,
Gender nvarchar(50) NOT NUll
)

ALTER TABLE tblPerson add constraint tblPerson_GenderId_FK
FOREIGN KEY(GenderId) references tblGender (ID) 

--A FOREIGN KEY constraint does not have to be linked only to a PRIMARY KEY constraint in another table;
-- it can also be defined to reference the columns of a UNIQUE constraint in another table.