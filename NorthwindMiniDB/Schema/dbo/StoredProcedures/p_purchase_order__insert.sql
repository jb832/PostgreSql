-- Create Procedure...

CREATE PROCEDURE dbo.p_purchase_order__insert
(
    in_customer_id              CHAR(5),
    in_order_date               TIMESTAMPTZ,
    in_shipped_date             TIMESTAMPTZ,
    in_ship_name                VARCHAR(40),
    in_ship_address             VARCHAR(60),
    in_ship_city                VARCHAR(15),
    in_ship_postal_code         VARCHAR(10),
    in_ship_country             VARCHAR(15),
    OUT out_rows_affected       INT,
    OUT out_purchase_order_id   INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Insert...

    INSERT INTO dbo.purchase_order
    (
        customer_id,
        order_date,
        shipped_date,
        ship_name,
        ship_address,
        ship_city,
        ship_postal_code,
        ship_country
    )
    VALUES
    (
        in_customer_id,
        in_order_date,
        in_shipped_date,
        in_ship_name,
        in_ship_address,
        in_ship_city,
        in_ship_postal_code,
        in_ship_country
    );

    GET DIAGNOSTICS out_rows_affected = ROW_COUNT;
    out_purchase_order_id := lastval();
END;
$$;
