CREATE DATABASE DB_IMP_PROJECT

CREATE TABLE Register(
	stID int   identity,
	stName varchar(50) not null,
	stFamily varchar(50) not null,
	Ncode varchar(50) not null,
	Bdate varchar(10) not null,
	Entrydate varchar(10) not null,
	FieldID int not null,

	PRIMARY KEY(stID),
	FOREIGN KEY(FieldID) references Field(FieldId)
)

CREATE TABLE Lesson(
	LID int not null identity,
	LName varchar(50) not null,
	Unit int not null,
	FieldId int, 

	PRIMARY KEY(LID),
	Foreign key (FieldID) references Field(FieldID)
)

CREATE TABLE Course(
	stID int not null,
	LID int not null,

	Primary key(stID, LID),
	Foreign key (stID) references Register(stID) ON DELETE CASCADE ON UPDATE CASCADE,
	Foreign key (LID) references Lesson(LID) ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE Prof(
	profID int not null identity Primary key,
	pName varchar(50) not null,
	degree varchar(1) not null,
)

CREATE TABLE Department(
	profID int not null,
	LID int not null,
	
	Primary key(profID, LID),
	Foreign key (profID) references Prof(profID),
	Foreign key (LID) references Lesson(LID)	
)

CREATE TABLE Field(
	fieldID int not null identity primary key,
	fieldName varchar(50) not null
)

select * from Register
select * from Lesson
select * from Course
select * from Prof
select * from Department
select * from Field


ALTER PROCEDURE SP_showInfo @tableName varchar(50)
AS
BEGIN
	
	if @tableName = 'Register'
	begin
		select * from Register
	end

	if @tableName = 'Lesson'
	begin
		select * from Lesson
	end

	else if @tableName = 'Course'
	begin
		select * from Course
	end

	else if @tableName = 'Prof'
	begin
		select * from Prof
	end

	if @tableName = 'Department'
	begin
		select * from Department
	end

	else if @tableName = 'Field'
	begin
		select * from Field
	end
END
exec SP_showInfo @tableName = 'Register'

CREATE PROCEDURE SP_registerINS @Name varchar(50), 
								@Family varchar(50),
								@Ncode varchar(50),
								@Bdate varchar(10),
								@Entrydate varchar(10),
								@FieldID int
AS
BEGIN
	
	INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID)
	VALUES(@Name, @Family, @Ncode, @Bdate, @Entrydate, @FieldID)

END


Alter PROCEDURE SP_getFieldName @stID int
AS
BEGIN
	
	select Field.fieldID 
	from Register , Field 
	where stID = @stID and Register.FieldID = Field.fieldID

END
exec SP_getFieldNAme @stID = 6



Alter VIEW vw_Computer_Lesson 
AS
Select Lesson.LID, Lesson.LName, Unit 
from Lesson
where fieldID = 1 or FieldID = 5 or FieldID = 6

Alter VIEW vw_Civil_Lesson 
AS
Select Lesson.LID, Lesson.LName, Unit 
from Lesson 
where fieldID = 2 or FieldID = 5 or FieldID = 6

Alter VIEW vw_Industrial_Lesson 
AS
Select Lesson.LID, Lesson.LName, Unit 
from Lesson 
where fieldID = 3 or FieldID = 5 or FieldID = 6

ALter VIEW vw_Science_Lesson 
As
Select Lesson.LID, Lesson.LName, Unit 
from Lesson 
where fieldID = 4 or FieldID = 5 or FieldID = 6


Alter PROCEDURE SP_showCourse @FieldID int
AS
BEGIN
	if @FieldId = 1
	begin
		select * from vw_Computer_Lesson
	end

	else if @FieldID = 2
	begin
		select * from vw_Civil_Lesson
	end

	else if @FieldID = 3
	begin
		select * from vw_Industrial_Lesson
	end

	else if @FieldID = 4
	begin
		select * from vw_Science_Lesson
	end
END
exec SP_showCourse @FieldID = 1


Alter PROCEDURE SP_SelectCourse @StID int, @LID int
AS
BEGIN
	Declare @Check_Field1 int
	Declare @Check_Field2 int
	SET @Check_Field1 = (select  FIeldID from Register where @StID = Register.stID)
	SET @Check_Field2 = (select Lesson.FieldId from Lesson where Lesson.LID = @LID)

	if @Check_Field1 != @Check_Field2
	begin
		print 'The code for the entered lesson is not correct'
	end

	else
	begin
		INSERT INTO Course Values(@StID, @LID)
	end
END
exec SP_SelectCourse @stID = 2, @LID = 49

INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('Ahmad', 'omidi', '123456', '1370', '1390', 1)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('sara', 'mahmodi', '653721', '1371', '1391', 3)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('yasaman', 'nouri', '0238238', '1374', '1393',1 )
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('mahdie', 'salami', '1238232', '1375', '1392', 3)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('farzane', 'kalami', '12123134', '1377', '1396',4 )
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('fereydoun', 'rezaei', '5472352', '1377', '1395', 2)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('forogh', 'pourbala', '5552522', '1377', '1395', 1)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('shiva', 'sadeghi', '2435255', '1376', '1394', 2)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('sirvan', 'hasan nezhad', '24354325', '1370', '1390',4 )
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('samira', 'mostafavi', '69655658', '1371', '1391',3 )
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('safa', 'reza zadeh', '656858343', '1374', '1394', 3)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('asghar', 'asghar nezhad', '24735555', '1374', '1394',4 )
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('akbar', 'fadavi', '68682526', '1374', '1394', 4)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('ahad', 'razavi', '656723789', '1377', '1395', 3)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('abbas', 'shafie', '9794468', '1376', '1395', 1)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('reza', 'reza talab', '2465775', '1376', '1395',2 )
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('arash', 'bahre kazemi', '24523577', '1377', '1396',2 )
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('amir', 'amirpour', '75346346', '1377', '1396', 1)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('mahmod', 'talebi', '57474366', '1378', '1397', 1)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('mahsa', 'kazem pour', '6732354', '1379', '1397', 4)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('samad', 'marfavi', '334356574', '1379', '1397', 3)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('nima', 'nouri', '23545436', '1378', '1395', 3)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('mahdi', 'solh talab', '46562346', '1377', '1395', 2)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('afsane', 'mohammadi', '47475434', '1377', '1395', 2)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('sina', 'maleki', '8567675454', '1372', '1392', 4)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('raha', 'Azad', '575752335', '1377', '1395', 3)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('shima', 'shamin pour', '575353534', '1370', '1395', 1)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('sima', 'zad mosa', '12322424','1374', '1393', 1)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('mostafa', 'asad pour', '02024942', '1375', '1395', 3)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('sattar', 'nategh', '02924824924', '1376', '1396',2 )
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('jalal', 'jahromi', '2324324', '1376', '1395', 4)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('jaber', 'beygi', '24242435', '1374', '1396', 3)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('joneyd', 'mashhadi', '47547445', '1374', '1393', 2)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('parvane', 'kisomi', '265657', '1374', '1393', 1)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('parvin', 'taleb nezhad', '069878557', '1375', '1394', 4)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('fateh', 'sadeghi', '6865847357', '1375', '1394',2 )
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('nategh', 'rezaei', '13356547', '1378', '1396', 2)
INSERT INTO Register(stName, stFamily, Ncode, Bdate, Entrydate, FieldID) VALUES('sadegh', 'reza zadeh', '68568376', '1378', '1397',2 )


ALTER PROCEDURE SP_DeleteStudent @stID int
As
Begin

DELETE FROM Register
WHERE stID = @stID

End

Alter PROC SP_ShowTables @TableID int
AS
BEGIN
	
	if @TableID = 1
	begin
		select * from Register
	end

	if @TableID = 2
	begin
		select * from Lesson
	end

	else if @TableID = 3
	begin
		select * from Course
	end

	if @TableID = 4
	begin
		select * from Prof
	end

	if @TableID = 5
	begin
		select * from Department
	end

	if @TableID = 6
	begin
		select * from Field
	end

END
exec SP_ShowTables @TableID=2

ALTER PROCEDURE SP_showCourse @FieldID int
AS
BEGIN
	if @FieldId = 1
	begin
		select * from vw_Computer_Lesson
	end

	else if @FieldID = 2
	begin
		select * from vw_Civil_Lesson
	end

	else if @FieldID = 3
	begin
		select * from vw_Industrial_Lesson
	end

	else if @FieldID = 4
	begin
		select * from vw_Science_Lesson
	end
END

ALTER PROCEDURE SP_Delete_Course @stID int ,@LID int 
AS
BEGIN
	
	Declare @check_course int
	SET @check_course = (select  stId from Course where stID = @stID and LID = @LID)
	if @check_course is null
	begin
		print 'this lesson code is not correct!'
	end

	else
	begin
	delete from Course
	where Course.stID = @stID and Course.LID = @LID
	end
END
Exec SP_Delete_Course @stID =3, @LID =47