--ALTER TABLE TABLE_NAME ADD CONSTRAINT CONSTRAINT_NAME 
--DEFAULT DEFAULT_VALUE FOR EXISTING_COLUMN_NAME

--ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATA_TYPE NULL|NOT NULL
--CONSTRAINT {CONSTRAINT_NAME} DEFAULT DEFAULT_VALUE

--ALTER TABLE TABLE_NAME DROP CONSTRAINT CONSTRAINT_NAME

use DBLearning
Insert into tblPerson (ID, NAme, Email) values (1,'Wastabir','wastabir.alam@gmail.com')

Insert into tblGender values (1,'Male'), (2,'Female'),(3,'UnKnown')

ALTER TABLE tblPerson ADD CONSTRAINT DF_GenderID 
DEFAULT 3 FOR GenderId

Insert into tblPerson (ID, NAme, Email) values (2,'Racktim','racktim.dutta@gmail.com')  -- GenderID default value
Insert into tblPerson (ID, NAme, Email,GenderId) values (3,'Satyajeet','Satyajeet.dowra@gmail.com',NULL) -- GenderID null

SELECT * FROM tblPerson
SELECT * FROM tblGender
