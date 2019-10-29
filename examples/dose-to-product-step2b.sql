<!-- "file": "dose-to-product-step2b.sql" -->
FUNCTION calc_rank(doseQ DECIMAL(9,3), num DECIMAL(30,12), den DECIMAL(9,3), udfs DECIMAL, formid BIGINT UNSIGNED)
RETURNS SMALLINT(5) UNSIGNED
BEGIN
	DECLARE qty DECIMAL(30,12) UNSIGNED;
	DECLARE rank SMALLINT UNSIGNED;
	DECLARE divisable BIGINT UNSIGNED;
	SET qty = calc_qty(doseQ, num, den, udfs);
	IF ( qty < 1 ) THEN
		SET rank = 3;
	ELSEIF ( ( qty % 1 ) != 0 ) THEN 
		SET rank = 2;
	ELSE 
		SET rank = 1;
	END IF;
	IF (rank != 1) THEN
		SELECT name FROM lookup WHERE valueset="NOTDIVISABLE" AND id = formid INTO divisable;
		IF ( !IsNull(divisable) ) THEN
			SET rank = 4; 
		END IF;
	END IF;
	RETURN rank;
END