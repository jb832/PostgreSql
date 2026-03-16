-- Create Procedure...

CREATE PROCEDURE dbo.p_customer__insert
(
    in_customer_id          CHAR(5),
    in_company_name         VARCHAR(40),
    in_contact_name         VARCHAR(30),
    in_address              VARCHAR(60),
    in_city                 VARCHAR(15),
    in_postal_code          VARCHAR(10),
    in_country              VARCHAR(15),
    in_phone                VARCHAR(24),
    OUT out_rows_affected   INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Insert...

    INSERT INTO dbo.customer
    (
        customer_id,
        company_name,
        contact_name,
        address,
        city,
        postal_code,
        country,
        phone
    )
    VALUES
    (
        in_customer_id,
        in_company_name,
        in_contact_name,
        in_address,
        in_city,
        in_postal_code,
        in_country,
        in_phone
    );

    GET DIAGNOSTICS rows_affected = ROW_COUNT;
END;
$$;
