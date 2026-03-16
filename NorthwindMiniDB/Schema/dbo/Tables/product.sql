-- Create Table...

CREATE TABLE dbo.product
(
    product_id              INT                 GENERATED ALWAYS AS IDENTITY,
    product_name            VARCHAR(40)         NOT NULL,
    category_id             INT                 NOT NULL,
    region_id               INT                 NULL,
    quantity_per_unit       VARCHAR(20)         NULL,
    unit_price              NUMERIC(12, 2)      NOT NULL CONSTRAINT df_product__unit_price DEFAULT 0,
    units_in_stock          INT                 NOT NULL CONSTRAINT df_product__units_in_stock DEFAULT 0,
    units_on_order          INT                 NOT NULL CONSTRAINT df_product__units_on_order DEFAULT 0,
    reorder_level           INT                 NOT NULL CONSTRAINT df_product__reorder_level DEFAULT 0,
    discontinued            BIT                 NOT NULL CONSTRAINT df_product__discontinued DEFAULT '0'::bit,

    CONSTRAINT pk_product
        PRIMARY KEY (product_id),

    CONSTRAINT ck_product__unit_price
        CHECK (unit_price >= 0),

    CONSTRAINT ck_product__units_in_stock
        CHECK (units_in_stock >= 0),

    CONSTRAINT ck_product__units_on_order
        CHECK (units_on_order >= 0),

    CONSTRAINT ck_product__reorder_level
        CHECK (reorder_level >= 0),

    CONSTRAINT fk_product__category
        FOREIGN KEY (category_id)
        REFERENCES dbo.category (category_id),

    CONSTRAINT fk_product__region
        FOREIGN KEY (region_id)
        REFERENCES dbo.region (region_id)
);


-- Create Indexes...

CREATE INDEX ix_products__category_id
    ON dbo.product (category_id ASC);

CREATE INDEX ix_products_product_name
    ON dbo.product (product_name ASC);

