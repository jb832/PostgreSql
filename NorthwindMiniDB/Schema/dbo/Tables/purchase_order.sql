-- Create Table...

CREATE TABLE dbo.purchase_order
(
    order_id                INT             NOT NULL GENERATED ALWAYS AS IDENTITY,
    customer_id             NCHAR(5)        NULL,
    order_date              TIMESTAMPTZ     NULL,
    shipped_date            TIMESTAMPTZ     NULL,
    ship_name               VARCHAR(40)     NULL,
    ship_address            VARCHAR(60)     NULL,
    ship_city               VARCHAR(15)     NULL,
    ship_postal_code        VARCHAR(10)     NULL,
    ship_country            VARCHAR(15)     NULL,

    CONSTRAINT pk_purchase_order
        PRIMARY KEY (order_id),

    CONSTRAINT fk_purchase_order__customer
        FOREIGN KEY (customer_id)
        REFERENCES dbo.customer (customer_id)
);

-- Create Indexes...

CREATE INDEX ix_purchase_order_customer_id
    ON dbo.purchase_order (customer_id ASC);

