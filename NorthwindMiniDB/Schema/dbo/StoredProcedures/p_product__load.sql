-- Create Procedure...


-- //ResultSetName(1, Products_Result)



CREATE PROCEDURE dbo.p_product__load
(
    in_product_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Load...

    SELECT *
    FROM dbo.v_product
    WHERE
         product_id = in_product_id;
END;
$$;
