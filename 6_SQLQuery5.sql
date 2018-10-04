--CHECK constraint is used to limit the range of the values, that can be eneterd for a column

--ALTER TABLE TABLE_NAME ADD CONSTRAINT CONSTRAINT_NAME CHECK BOOLEAN_EXPRESSION

--If the BOOLEAN_EXPRESSION returns true, then the CHECK constraint allows the value, otherwise it doesn't.


--ALTER TABLE tblPerson ADD AGE INT NULL

SELECT * From tblPerson


insert into tblPerson values (4, 'Nikhi','nikhil.saxena@gmil.com',1,-907)

DELETE FROM tblPerson WHere id=4

ALTER TABLE tblPerson ADD constraint CK_tblPerson_age CHECK (AGE > 0 AND AGE <150)

insert into tblPerson values (4, 'Nikhi','nikhil.saxena@gmil.com',1,-907) -- Not possible after constraint
insert into tblPerson values (4, 'Nikhi','nikhil.saxena@gmil.com',1,NULL) 
--Since AGE is a nullable column it is possible to pass null to gender as constraint doesnot return false it returns unknown