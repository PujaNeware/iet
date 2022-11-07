DROP PROCEDURE IF EXISTS prog7;
delimiter $$
CREATE PROCEDURE prog7(in p1 int)

BEGIN
	DECLARE flag bool DEFAULT false;
	SELECT TRUE INTO flag FROM dept WHERE deptno = p1;
	
	if flag THEN
		DELETE FROM dept WHERE deptno = p1;
		SELECT "Record deleted" R1;
	ELSE
		SELECT "Record not found" R2;
	END IF;
END $$
delimiter ;