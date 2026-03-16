-- Create view...

CREATE VIEW dbo.v_product
AS
    SELECT
        product_id,
        product_name,
        category_id,
        region_id,
        quantity_per_unit,
        unit_price,
        units_in_stock,
        units_on_order,
        reorder_level,
        discontinued

    FROM dbo.product
GO
