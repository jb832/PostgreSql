-- Create Procedure...

CREATE PROCEDURE dbo.p_purchase_order_detail__insert
(
    in_purchase_order_id        INT,
    in_product_id               INT,
    in_unit_price               NUMERIC(12, 2),
    in_quantity                 SMALLINT,
    in_discount                 REAL,
    OUT out_rows_affected       INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Insert...

    INSERT INTO dbo.purchase_order_detail
    (
        purchase_order_id,
        product_id,
        unit_price,
        quantity,
        discount
    )
    VALUES
    (
        in_purchase_order_id,
        in_product_id,
        in_unit_price,
        in_quantity,
        in_discount
    );

    GET DIAGNOSTICS out_rows_affected = ROW_COUNT;
END;
$$;
