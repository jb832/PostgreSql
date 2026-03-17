-- Create Procedure...

CREATE PROCEDURE dbo.p_sql_types__load()
LANGUAGE plpgsql
AS $$
BEGIN
    -- Load...

    SELECT *
    FROM dbo.sql_types;
END;
$$;
