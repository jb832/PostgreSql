-- Create Table...

CREATE TABLE dbo.customer
(
    customer_id         CHAR(5)         NOT NULL,
    company_name        VARCHAR(40)     NOT NULL,
    contact_name        VARCHAR(30)     NULL,
    address             VARCHAR(60)     NULL,
    city                VARCHAR(15)     NULL,
    postal_code         VARCHAR(10)     NULL,
    country             VARCHAR(15)     NULL,
    phone               VARCHAR(24)     NULL,

    CONSTRAINT pk_customer
        PRIMARY KEY (customer_id)
);


-- Create Indexes...

CREATE INDEX ix_customer__city
    ON dbo.customer (city ASC);

CREATE INDEX ix_customer__company_name
    ON dbo.customer (company_name ASC);

CREATE INDEX ix_customer__postal_code
    ON dbo.customer (postal_code ASC);

