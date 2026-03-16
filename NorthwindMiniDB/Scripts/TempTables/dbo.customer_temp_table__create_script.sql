-- Create Temp Table...


-- //TempTable(dbo.customer_temp_table)



CREATE TABLE temp_table
(
    customer_id     NCHAR(5)        NOT NULL PRIMARY KEY,
    IntData         INT             NOT NULL,
    DateTimeData    TIMESTAMPTZ     NOT NULL
);
