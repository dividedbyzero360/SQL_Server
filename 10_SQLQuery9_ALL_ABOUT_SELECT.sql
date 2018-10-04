SELECT * FROM tblPerson

SELECT DISTINCT CITY FROM tblPerson

SELECT DISTINCT Name, CITY FROM tblPerson  -- it means selecting distinct Name and City 


SELECT * FROM tblPerson WHERE CITY <> 'LONDON'

SELECT * FROM tblPerson WHERE CITY != 'LONDON'


SELECT * FROM tblPerson WHERE GenderId IN (1,2)

SELECT * FROM tblPerson WHERE AGE Between 20 and 25 --inclusive

SELECT * FROM tblPerson WHERE CITY LIKE 'L%'

SELECT * FROM tblPerson WHERE Email LIKE '%@%'

SELECT * FROM tblPerson WHERE Email NOT LIKE '%@%'

SELECT * FROM tblPerson WHERE Email LIKE '_@_.com' --ex a@a.com

SELECT * FROM tblPerson WHERE Name LIKE '[MSW]%' -- []-> Any character with in the brackets
SELECT * FROM tblPerson WHERE Name LIKE '[^MSW]%' 

SELECT * FROM tblPerson Order by Name desc, AGE ASC

SELECT TOP 2 * from tblPerson

SELECT TOP 50 Percent * from tblPerson



SELECT * FROM tblPerson Order by AGE DESC

SELECT top 7 * FROM tblPerson Order by AGE DESC