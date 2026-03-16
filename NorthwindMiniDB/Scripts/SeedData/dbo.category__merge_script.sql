-- dbo.category__merge_script.sql


-- //Enumeration(dbo.category_Enumeration, SmartEnum, Category, Database)



MERGE INTO dbo.category AS tgt
USING (VALUES
-----------------------------------------------
--  category_id                      description
--          category_name
-----------------------------------------------
(   1,      'Beverages',            'Soft drinks, coffees, teas, beers, and ales'),
(   2,      'Condiments',           'Sweet and savory sauces, relishes, spreads, and seasonings'),
(   3,      'Confections',          'Desserts, candies, and sweet breads'),
(   4,      'DairyProducts',        'Milk, Cheese, Butter'),
(   5,      'Grains',               'Breads, crackers, pasta, and cereal'),
(   6,      'Meat',                 'Prepared meats, Pork, Chicken, and Turkey'),
(   7,      'Produce',              'Dried fruit and bean curd'),
(   8,      'Seafood',              'Seaweed and fish')
)
AS src (category_id, category_name, description)
ON
    tgt.category_id = src.category_id
WHEN MATCHED THEN
    UPDATE SET
        category_name = src.category_name,
        description = src.description
WHEN NOT MATCHED BY TARGET THEN
    INSERT (category_id, category_name, description)
    VALUES (category_id, category_name, description);
--
-- DO NOT DELETE!!!
--
