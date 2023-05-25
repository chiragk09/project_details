use STDdetails;

select * from STDdetails;

create PROC project
AS
BEGIN
	select * from STDdetails;

	BEGIN
		UPDATE STDdetails SET PERCENTAGES='90%' WHERE StudentID=8;
	END;

	BEGIN
		ALTER TABLE STDdetails ADD PERCENTAGES VARCHAR(20);
	END;
	
	BEGIN
		ALTER TABLE STDdetails DROP COLUMN PERCENTAGE;
	END;

	BEGIN
		INSERT INTO STDdetails(StudentID,Name,Age,City,SchoolName,PERCENTAGES) VALUES(10,'Dakshat',12,'vashi','Chirag School','70%');
	END;

	BEGIN
		DELETE FROM STDdetails WHERE Name='Prachi';
	END
END
