-- Create Procedure...

CREATE PROCEDURE dbo.p_purchase_order_detail__delete
(
    in_purchase_order_id    INT,
    in_product_id           INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Delete...

    DELETE FROM dbo.purchase_order_detail
    WHERE
         purchase_order_id = in_purchase_order_id
        AND product_id = in_product_id;
END;
$$;
