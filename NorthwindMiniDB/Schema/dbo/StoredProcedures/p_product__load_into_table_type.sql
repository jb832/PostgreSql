-- Create Procedure...


-- //ResultSetTableType(1, dbo.tt_product)



CREATE PROCEDURE dbo.p_product__load_into_table_type
(
    in_product_id         INT
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
