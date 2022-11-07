DROP PROCEDURE IF EXISTS prog6;
delimiter $
CREATE PROCEDURE prog6 (p1 int, p2 varchar(20), p3 varchar(20), p4 varchar(20), p5 varchar(20))
BEGIN
	declare exit handler for 1146 SELECT "TABLE NOT PRESENT" AS "error!";
	declare exit handler for 1062 SELECT "DATA REDUNDANCY" AS "error!";
	
	IF p1 BETWEEN 1 and 99 
		THEN
			insert into dept values (p1, p2, p3, p4, p5);
			SELECT "RECORD INSERTED" AS "SUCCESSFUL!!!";
		ELSE
			SELECT "INVALID DEPT NO" AS "FAILED";
	END IF;
END $
delimiter ;