-- Create Procedure...


-- //ResultSetLike(1, Products_Result)
-- //ResultSetLike(2, Products_Result)
-- //ResultSetLike(3, Products_Result)



CREATE PROCEDURE dbo.p_product__load_3x
(
    in_product_id           INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Load ResultSet 1...

    IF (in_product_id >= 5 AND in_product_id <= 8)
    THEN
        IF (in_product_id = 5)
        THEN
            SELECT *
            FROM dbo.v_product
            WHERE
                 product_id = in_product_id;
        ELSE
            SELECT *
            FROM dbo.v_product
            WHERE
                 product_id = in_product_id;
        END IF;
    ELSIF (in_product_id = 20)
    THEN
        SELECT *
        FROM dbo.v_product
        WHERE
             product_id = in_product_id;
    ELSE
        SELECT *
        FROM dbo.v_product
        WHERE
             product_id = in_product_id;
    END IF;

    -- Load ResultSet 2...

    SELECT *
    FROM dbo.v_product
    WHERE
         product_id = in_product_id;

    -- Load ResultSet 3...

    IF (in_product_id = 20)
    THEN
        SELECT *
        FROM dbo.v_product
        WHERE
             product_id = in_product_id;
    ELSE
        SELECT *
        FROM dbo.v_product
        WHERE
             product_id = in_product_id;
    END IF;

    RETURN 54321;
END;
$$;
