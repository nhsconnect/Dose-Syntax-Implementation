<!-- "file": "dose-to-product-step2a.sql" -->
FUNCTION calc_qty(doseQ DECIMAL(9,3), num DECIMAL(30,12), den DECIMAL(9,3), udfs DECIMAL(9,3))
RETURNS decimal(30,12)
BEGIN
	IF den = 0 THEN
		SET den = 1;
	END IF;
	IF udfs = 0 THEN 
		RETURN doseQ / ( num / den ); 
	END IF;
	RETURN ( doseQ / ( num / den ) ) / udfs;
END