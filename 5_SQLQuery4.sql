--Cascading referential integrity constarint allows to define the actions Micrsoft SQL serer 
--should take wen a user attempts to delete or update a key to which an existing foreign keys points


--For example if you delete row with ID=1 from tblGender table, then row with ID=3 from tblPerson
--table becomes an orphan record. You will not be able to tell the Gender for this row.
--So, cascading referential integrity constraint can be used to define actions MSQL should 
--take when this happens. By default, we get an error and the DELETE or Update statement is rolledback

--Options we have 

--1. Cascade- The update is transferred to dependent table
--2. Set default
--3. Set null

