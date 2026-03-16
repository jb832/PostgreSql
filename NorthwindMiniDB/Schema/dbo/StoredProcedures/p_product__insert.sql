-- Create Procedure...

CREATE PROCEDURE dbo.p_product__insert
(
    in_product_name             VARCHAR(40),
    in_category_id              INT,
    in_region_id                INT,
    in_quantity_per_unit        VARCHAR(20),
    in_unit_price               NUMERIC(12, 2),
    in_units_in_stock           INT,
    in_units_on_order           INT,
    in_reorder_level            INT,
    in_discontinued             BIT,
    OUT out_rows_affected       INT,
    OUT out_product_id          INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Insert...

    INSERT INTO dbo.product
    (
        product_name,
        category_id,
        region_id,
        quantity_per_unit,
        unit_price,
        units_in_stock,
        units_on_order,
        reorder_level,
        discontinued
    )
    VALUES
    (
        in_product_name,
        in_category_id,
        in_region_id,
        in_quantity_per_unit,
        in_unit_price,
        in_units_in_stock,
        in_units_on_order,
        in_reorder_level,
        in_discontinued
    );

    GET DIAGNOSTICS out_rows_affected = ROW_COUNT;
    out_product_id := lastval();
END;
$$;
