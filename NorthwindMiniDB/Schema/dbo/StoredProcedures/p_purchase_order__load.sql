-- Create Procedure...

CREATE PROCEDURE dbo.p_purchase_order__load
(
    in_purchase_order_id    INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Load...

    SELECT
        purchase_order_id,
        customer_id,
        order_date,
        shipped_date,
        ship_name,
        ship_address,
        ship_city,
        ship_postal_code,
        ship_country

    FROM dbo.purchase_order
    WHERE
         purchase_order_id = in_purchase_order_id;
END;
$$;
