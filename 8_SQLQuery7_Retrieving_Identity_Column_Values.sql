--How to get the last generated identity column value

--SCOPE_IDENTITY() - Same session and same scope

-- @@identity - Same session and across any scope

-- IDENT_CURRENT('TableName')- Specific table across any session and any scope

CREATE TABLE TEST1
(
ID INT IDENTITY(1,1),
value nvarchar(50)
)

CREATE TABLE TEST2
(
ID INT IDENTITY(1,1),
value nvarchar(50)
)

INSERT INTO TEST1 values('JOHN5')

SELECT * FROM TEST1
SELECT SCOPE_IDENTITY()
SELECT  @@identity
SELECT IDENT_CURRENT('TEST2')

CREATE Trigger trForInsert on Test1 for Insert
as
Begin
INSERT INTO Test2 values('YYYYY')
End


--DROP Trigger trForInsert

INSERT INTO TEST1 values('JOHN5')
SELECT * FROM TEST1
SELECT * FROM TEST2
SELECT SCOPE_IDENTITY()
SELECT  @@identity

INSERT INTO TEST2 values('JOHN6')