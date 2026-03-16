-- Create Procedure...

CREATE PROCEDURE dbo.p_customer__delete
(
    in_customer_id  CHAR(5)
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Delete...

    DELETE FROM dbo.customer
    WHERE
         customer_id = in_customer_id;
END;
$$;
