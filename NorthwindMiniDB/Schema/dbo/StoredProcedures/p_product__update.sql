-- Create Procedure...

CREATE PROCEDURE dbo.p_product__update
(
    in_product_id               INT,
    in_product_name             VARCHAR(40),
    in_category_id              INT,
    in_region_id                INT,
    in_quantity_per_unit        VARCHAR(20),       -- Nullable
    in_unit_price               NUMERIC(12, 2),
    in_units_in_stock           INT,
    in_units_on_order           INT,
    in_reorder_level            INT,
    in_discontinued             BIT,
    OUT out_rows_affected       INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Update...

    UPDATE dbo.product
    SET
        product_name = in_product_name,
        category_id = in_category_id,
        region_id = in_region_id,
        quantity_per_unit = in_quantity_per_unit,
        unit_price = in_unit_price,
        units_in_stock = in_units_in_stock,
        units_on_order = in_units_on_order,
        reorder_level =in_reorder_level,
        discontinued = in_discontinued
    WHERE
        product_id = in_product_id;

    GET DIAGNOSTICS rows_affected = ROW_COUNT;
END;
$$;
