-- Create Procedure...

CREATE PROCEDURE dbo.p_sql_types__insert
(
    in_id                      INT,

    in_col_boolean             BOOLEAN,
    in_col_smallint            SMALLINT,
    in_col_int                 INT,
    in_col_bigint              BIGINT,
    in_col_uuid                UUID,
    in_col_numeric             NUMERIC(38, 8),
    in_col_real                REAL,
    in_col_float               FLOAT,
    in_col_date                DATE,
    in_col_time                TIME,
    in_col_timestamptz         TIMESTAMPTZ,
    in_col_interval            INTERVAL,
    in_col_char                CHAR(256),
    in_col_varchar             VARCHAR(256),
    in_col_text                TEXT,
    in_col_bytea               BYTEA,
    in_col_xml                 XML,
    in_col_json                JSON,
    in_col_jsonb               JSONB,

    in_col_csharpenumint       INT,
    in_col_smartenumint        INT,

    in_col_vector32            VECTOR(3),
    in_col_vector16            HALFVEC(3),
    in_col_vector1             BIT(3)
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Insert...

    DELETE FROM dbo.sql_types;

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
    VALUES
    (
        in_id,

        in_col_boolean,
        in_col_smallint,
        in_col_int,
        in_col_bigint,
        in_col_uuid,
        in_col_numeric,
        in_col_real,
        in_col_float,
        in_col_date,
        in_col_time,
        in_col_timestamptz,
        in_col_interval,
        in_col_char,
        in_col_varchar,
        in_col_text,
        in_col_bytea,
        in_col_xml,
        in_col_json,
        in_col_jsonb,

        in_col_csharpenumint,
        in_col_smartenumint,

        in_col_vector32,
        in_col_vector16,
        in_col_vector1
    );
END;
$$;
