-- Create Procedure...

CREATE PROCEDURE dbo.p_purchase_order__update
(
    in_purchase_order_id        INT,
    in_customer_id              CHAR(5),
    in_order_date               TIMESTAMPTZ,
    in_shipped_date             TIMESTAMPTZ,
    in_ship_name                VARCHAR(40),
    in_ship_address             VARCHAR(60),
    in_ship_city                VARCHAR(15),
    in_ship_postal_code         VARCHAR(10),
    in_ship_country             VARCHAR(15),
    OUT out_rows_affected       INT

)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Update...

    UPDATE dbo.purchase_order
    SET
        customer_id = in_customer_id,
        order_date = in_order_date,
        shipped_date = in_shipped_date,
        ship_name = in_ship_name,
        ship_address = in_ship_address,
        ship_city = in_ship_city,
        ship_postal_code = in_ship_postal_code,
        ship_country = in_ship_country

    WHERE
        purchase_order_id = in_purchase_order_id;

    GET DIAGNOSTICS rows_affected = ROW_COUNT;
END;
$$;
