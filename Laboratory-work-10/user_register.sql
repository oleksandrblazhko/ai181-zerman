CREATE OR REPLACE FUNCTION user_register(
	password varchar
)
	RETURNS BOOLEAN
AS $$
BEGIN
	IF NOT EXISTS ( SELECT FROM UserPassCombo WHERE pass = password)
		THEN RETURN true;
	ELSE
		RAISE NOTICE 'Passname = % INCORRECT!',password;
		RETURN false;
	END IF;
END;
$$ LANGUAGE plpgsql;
