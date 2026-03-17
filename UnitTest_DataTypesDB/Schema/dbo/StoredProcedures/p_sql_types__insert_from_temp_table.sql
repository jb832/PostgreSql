-- Create Procedure...

CREATE PROCEDURE dbo.p_sql_types__insert_from_temp_table()

LANGUAGE plpgsql
AS $$
BEGIN
    -- Insert...

    INSERT INTO dbo.sql_types
    (
        id,

        col_boolean,
        col_smallint,
        col_int,
        col_bigint,
        col_uuid,
        col_numeric,
        col_real,
        col_float,
        col_date,
        col_time,
        col_timestamptz,
        col_interval,
        col_char,
        col_varchar,
        col_text,
        col_bytea,
        col_xml,
        col_json,
        col_jsonb,

        col_csharpenumint,
        col_smartenumint,

        col_vector32,
        col_vector16,
        col_vector1
    )
    SELECT
        id,

        col_boolean,
        col_smallint,
        col_int,
        col_bigint,
        col_uuid,
        col_numeric,
        col_real,
        col_float,
        col_date,
        col_time,
        col_timestamptz,
        col_interval,
        col_char,
        col_varchar,
        col_text,
        col_bytea,
        col_xml,
        col_json,
        col_jsonb,

        col_csharpenumint,
        col_smartenumint,

        col_vector32,
        col_vector16,
        col_vector1

        FROM temp_table;
END;
$$;
