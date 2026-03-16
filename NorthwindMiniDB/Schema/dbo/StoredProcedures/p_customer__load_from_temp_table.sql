-- Create Procedure...

-- //TempTableParameter(dbo.customer_temp_table)
-- //ResultSetName(1, Customer_LoadFromTempTable_Result)



CREATE PROCEDURE dbo.p_customer__load_from_temp_table()
LANGUAGE plpgsql
AS $$
BEGIN
    -- Load...

    SELECT
        c.customer_id,
        c.company_name,
        c.contact_name,
        t.int_data,
        t.datetime_data

    FROM dbo.customer c
    JOIN temp_table t
        ON t.customer_id = c.customer_id;

    -- Drop temp table...

    DROP TABLE IF EXISTS temp_table;
END;
$$;
