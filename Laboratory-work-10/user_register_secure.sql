CREATE OR REPLACE FUNCTION isPasswordCorrect(password varchar) RETURNS BOOLEAN AS $$
BEGIN
	-- VARIANT #9
	-- N1 17
	-- N2 4
	-- N3 2
	-- N4 2
	-- N5 2
	RETURN regexp_like(password,'(?=\S{17,})(?=.*[0-9]{4})(?=.*[a-z]{2})(?=.*[A-Z]{2})(?=.*[!@#$%^&*]{2})');
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION user_register_secure(
	password varchar
)
	RETURNS BOOLEAN
AS $$
BEGIN
	IF NOT EXISTS ( SELECT FROM UserPassCombo WHERE pass = password) THEN
		IF NOT isPasswordCorrect(password) THEN 
			RETURN false;
		ELSE RETURN true;
		END IF;	
	ELSE
		RETURN false;
	END IF;
END;
$$ LANGUAGE plpgsql;