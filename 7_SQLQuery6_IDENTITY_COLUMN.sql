CREATE TABLE tblPerson1
(
ID INT primary key identity(1,1),
Name nvarchar(50)
)

Insert into tblPerson1 values ('John')
Insert into tblPerson1 values (3,'Johnny')--An explicit value for the identity column in table 'tblPerson1' can only be specified when a column list is used and IDENTITY_INSERT is ON.

SET IDENTITY_INSERT tblPerson1 ON

Insert into tblPerson1 (ID, Name) values (3,'Johnny')

SET IDENTITY_INSERT tblPerson1 OFF -- or the below insert statement wont work
Insert into tblPerson1 (Name) values ('Johnny')

DELETE FROM tblPerson1 -- Does not reset the IDENTITY COLUMN values
DBCC CHECKIDENT(tblPerson1,RESEED,0)

Insert into tblPerson1 (Name) values ('Johnny')

SELECT * FROM tblPerson1



