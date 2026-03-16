-- Create Table...

CREATE TABLE dbo.sql_types
(
    id                          INT                 NOT NULL PRIMARY KEY,

    col_boolean                 BOOLEAN             NOT NULL,
    col_smallint                SMALLINT            NOT NULL,
    col_int                     INT                 NOT NULL,
    col_bigint                  BIGINT              NOT NULL,
    col_uuid                    UUID                NOT NULL,
    col_numeric                 NUMERIC(38, 8)      NOT NULL,
    col_real                    REAL                NOT NULL,
    col_float                   FLOAT               NOT NULL,
    col_date                    DATE                NOT NULL,
    col_time                    TIME                NOT NULL,
    col_timestamptz             TIMESTAMPTZ         NOT NULL,
    col_interval                INTERVAL            NOT NULL,
    col_char                    CHAR(256)           NOT NULL,
    col_varchar                 VARCHAR(256)        NOT NULL,
    col_text                    TEXT                NOT NULL,
    col_bytea                   BYTEA               NOT NULL,
    col_xml                     XML                 NOT NULL,
    col_json                    JSON                NOT NULL,
    col_jsonb                   JSONB               NOT NULL,
    col_vector32                VECTOR(3)           NOT NULL,
    col_vector16                HALFVEC(3)          NOT NULL,
    col_vector1                 BIT(3)              NOT NULL,
    col_csharpenumint           INT                 NOT NULL,
    col_smartenumint            INT                 NOT NULL
);
