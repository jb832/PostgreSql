-- Create Table...

CREATE TABLE dbo.purchase_order_detail
(
    order_id            INT             NOT NULL,
    product_id          INT             NOT NULL,
    unit_price          NUMERIC(12, 2)  NOT NULL CONSTRAINT df_order_details_unitprice DEFAULT (0),
    quantity            SMALLINT        NOT NULL CONSTRAINT DF_order_details_quantity DEFAULT (1),
    discount            REAL            NOT NULL CONSTRAINT DF_order_details_discount DEFAULT (0),

    CONSTRAINT pk_purchase_order_detail
        PRIMARY KEY (order_id, product_id),

    CONSTRAINT ck_purchase_order_detail__unit_price
        CHECK (unit_price >= 0),

    CONSTRAINT ck_purchase_order_detail__quantity
        CHECK (quantity > 0),

    CONSTRAINT ck_purchase_order_detail__discount
        CHECK (discount >= 0 and discount <= 1),

    CONSTRAINT fk_purchase_order_detail__purchase_order
        FOREIGN KEY (order_id)
        REFERENCES dbo.purchase_order (order_id),

    CONSTRAINT fk_purchase_order_detail__product
        FOREIGN KEY (product_id)
        REFERENCES dbo.product (product_id)
);


-- Create Indexes...

CREATE INDEX ix_purchase_order_detail__order_id
    ON dbo.purchase_order_detail (order_id ASC);


CREATE INDEX ix_purchase_order_detail__product_id
    ON dbo.purchase_order_detail (product_id ASC);

