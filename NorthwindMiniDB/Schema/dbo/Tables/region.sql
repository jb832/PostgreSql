-- Create Table...

CREATE TABLE dbo.region
(
    region_id               INT             NOT NULL,
    region_description      VARCHAR(50)     NOT NULL,

    CONSTRAINT pk_region
        PRIMARY KEY (region_id)
);


-- Create Indexes...

CREATE UNIQUE INDEX ux_region__region_description
    ON dbo.region (region_description ASC);
