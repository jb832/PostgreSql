-- Create Procedure...

CREATE PROCEDURE dbo.p_sql_types__delete()
LANGUAGE plpgsql
AS $$
BEGIN
    -- Delete all rows...

    DELETE FROM dbo.sql_types;
END;
$$;
