-- Create Procedure...

CREATE PROCEDURE dbo.in_customer__update
(
    in_customer_id              CHAR(5),
    in_company_name             VARCHAR(40),
    in_contact_name             VARCHAR(30),
    in_address                  VARCHAR(60),
    in_city                     VARCHAR(15),
    in_postal_code              VARCHAR(10),
    in_country                  VARCHAR(15),
    in_phone                    VARCHAR(24),
    OUT out_rows_affected       INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Update...

    UPDATE dbo.customer
    SET
        company_name = in_company_name,
        contact_name = in_contact_name,
        address = in_address,
        city = in_city,
        postal_code = in_postal_code,
        country = in_country,
        phone = in_phone
    WHERE
        customer_id = in_customer_id;

    GET DIAGNOSTICS rows_affected = ROW_COUNT;
END;
$$;
