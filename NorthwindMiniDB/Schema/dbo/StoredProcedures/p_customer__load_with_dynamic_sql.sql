-- Create Procedure...


-- //ResultSetTableType(1, dbo.tt_customer)



CREATE PROCEDURE dbo.p_customer__load_with_dynamic_sql
(
    in_customer_id      CHAR(5)
)
LANGUAGE plpgsql
AS $$
DECLARE
    query_string varchar(200);
BEGIN

    query_string := 'select * from dbo.customer where customer_id = ''' + in_customer_id + '''';

    -- Load...

    -- //DynamicSql(dbo.tt_customer)
    RETURN QUERY EXECUTE query_string;

END;
$$;
