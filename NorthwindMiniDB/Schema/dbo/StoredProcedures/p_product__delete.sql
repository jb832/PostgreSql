-- Create Procedure...

CREATE PROCEDURE dbo.p_product__delete
(
    in_product_id   INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Delete...

    DELETE FROM dbo.product
    WHERE
         product_id = in_product_id;
END;
$$;
