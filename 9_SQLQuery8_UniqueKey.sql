--We use UNIQUE constraint to enforce uniqueness of a column ie the column should not allow any duplicate values.
--We can add a Unique constraint by

--Alter table Table_NAME
--ADD Constraint Constraint_name Unique(Column_Name)


--Both primary key and unique key are used to enforce, the uniqueness of a column
--.So, when do you choose one over the other?

--A table can have, only one primary key. If you want to 
--enforce uniqueness on 2 or more columns, then we use unique
--key constraint.

--What is the difference between Primary Key constraint
--and Unique key constraint?

--1. A table can have only one primary key, but more than one 
--unique key.
--2. Primay key does not allow nulls, where as unique key allows one null

SELECT * FROM tblPerson

INSERT INTO tblPerson (ID,name ) values (5,'Manish')
INSERT INTO tblPerson (ID,name ) values (6,'Shanty')

ALTER TABLE tblPerson ADD Constraint UK_tblPerson_Email Unique(Email) -- Can't create a unique key constraint if there are already duplicates in the record


