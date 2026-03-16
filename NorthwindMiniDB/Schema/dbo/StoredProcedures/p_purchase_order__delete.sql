-- Create Procedure...

CREATE PROCEDURE dbo.p_purchase_order__delete
(
    in_purchase_order_id    INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Delete...

    DELETE FROM dbo.purchase_order
    WHERE
         purchase_order_id = in_purchase_order_id;
END;
$$;
