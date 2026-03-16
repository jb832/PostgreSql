-- dbo.region__merge_script.sql


-- //Enumeration(dbo.region_Enumeration, CSharpEnum, Region, Schema)



MERGE INTO dbo.region AS tgt
USING (VALUES
-----------------------------
--  region_id
--          region_description
-----------------------------
(   1,      'Eastern'),
(   2,      'Western'),
(   3,      'Northern'),
(   4,      'Southern')
)
AS src (region_id, region_description)
ON
    tgt.region_id = src.region_id
WHEN MATCHED THEN
    UPDATE SET
        region_description = src.region_description
WHEN NOT MATCHED BY TARGET THEN
    INSERT (region_id, region_description)
    VALUES (region_id, region_description);
--
-- DO NOT DELETE!!!
--
