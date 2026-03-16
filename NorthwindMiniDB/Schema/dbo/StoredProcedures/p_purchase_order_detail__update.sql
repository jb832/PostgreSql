-- Create Procedure...

CREATE PROCEDURE dbo.p_purchase_order_detail__update
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
    -- Update...

    UPDATE dbo.purchase_order_detail
    SET
        unit_price = in_unit_price,
        quantity = in_quantity,
        discount = in_discount

    WHERE
        purchase_order_id = in_purchase_order_id
        AND product_id = in_product_id;

    GET DIAGNOSTICS rows_affected = ROW_COUNT;
END;
$$;
