-- Create Procedure...


-- //ResultSetName(1, Customer_Load_Result)



CREATE PROCEDURE dbo.p_customer__load
(
    in_customer_id  CHAR(5)
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Load...

    SELECT
        customer_id,
        company_name,
        contact_name,
        address,
        city,
        postal_code,
        country,
        phone

    FROM dbo.customer
    WHERE
         customer_id = in_customer_id;
END;
$$;
