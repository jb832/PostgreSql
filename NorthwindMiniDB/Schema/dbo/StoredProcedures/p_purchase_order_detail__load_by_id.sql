-- Create Procedure...

CREATE PROCEDURE dbo.p_purchase_order_detail__load_by_id
(
    in_purchase_order_id    INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Load...

    SELECT
        purchase_order_id,
        product_id,
        unit_price,
        quantity,
        discount
    FROM dbo.purchase_order_detail
    WHERE
         purchase_order_id = in_purchase_order_id;
END;
$$;
