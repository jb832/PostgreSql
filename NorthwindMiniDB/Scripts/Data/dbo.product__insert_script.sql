-- dbo.product__insert_script.sql


INSERT INTO dbo.product (product_name,category_id,region_id,quantity_per_unit,unit_price,units_in_stock,units_on_order,reorder_level,discontinued) VALUES
	 (N'Chai',1,NULL,N'10 boxes x 20 bags',18.0000,64,0,10,false),
	 (N'Chang',1,NULL,N'24 - 12 oz bottles',19.0000,36,40,25,false),
	 (N'Aniseed Syrup',2,NULL,N'12 - 550 ml bottles',10.0000,107,70,25,false),
	 (N'Chef Anton''s Cajun Seasoning',2,NULL,N'48 - 6 oz jars',22.0000,71,0,0,false),
	 (N'Chef Anton''s Gumbo Mix',2,NULL,N'36 boxes',21.3500,18,0,0,true),
	 (N'Grandma''s Boysenberry Spread',2,NULL,N'12 - 8 oz jars',25.0000,123,0,25,false),
	 (N'Uncle Bob''s Organic Dried Pears',7,NULL,N'12 - 1 lb pkgs.',30.0000,18,0,10,false),
	 (N'Northwoods Cranberry Sauce',2,NULL,N'12 - 12 oz jars',40.0000,9,0,0,false),
	 (N'Mishi Kobe Niku',6,NULL,N'18 - 500 g pkgs.',97.0000,32,0,0,true),
	 (N'Ikura',8,NULL,N'12 - 200 ml jars',31.0000,34,0,0,false);
INSERT INTO dbo.product (product_name,category_id,region_id,quantity_per_unit,unit_price,units_in_stock,units_on_order,reorder_level,discontinued) VALUES
	 (N'Queso Cabrales',4,NULL,N'1 kg pkg.',21.0000,25,30,30,false),
	 (N'Queso Manchego La Pastora',4,NULL,N'10 - 500 g pkgs.',38.0000,89,0,0,false),
	 (N'Konbu',8,NULL,N'2 kg box',6.0000,27,0,5,false),
	 (N'Tofu',7,NULL,N'40 - 100 g pkgs.',23.2500,38,0,0,false),
	 (N'Genen Shouyu',2,NULL,N'24 - 250 ml bottles',15.5000,42,0,5,false),
	 (N'Pavlova',3,NULL,N'32 - 500 g boxes',17.4500,29,0,10,false),
	 (N'Alice Mutton',6,NULL,N'20 - 1 kg tins',39.0000,0,0,0,true),
	 (N'Carnarvon Tigers',8,NULL,N'16 kg pkg.',62.5000,42,0,0,false),
	 (N'Teatime Chocolate Biscuits',3,NULL,N'10 boxes x 12 pieces',9.2000,25,0,5,false),
	 (N'Sir Rodney''s Marmalade',3,NULL,N'30 gift boxes',81.0000,40,0,0,false);
INSERT INTO dbo.product (product_name,category_id,region_id,quantity_per_unit,unit_price,units_in_stock,units_on_order,reorder_level,discontinued) VALUES
	 (N'Sir Rodney''s Scones',3,NULL,N'24 pkgs. x 4 pieces',10.0000,3,40,5,false),
	 (N'Gustaf''s Knäckebröd',5,NULL,N'24 - 500 g pkgs.',21.0000,104,0,25,false),
	 (N'Tunnbröd',5,NULL,N'12 - 250 g pkgs.',9.0000,61,0,25,false),
	 (N'Guaraná Fantástica',1,NULL,N'12 - 355 ml cans',4.5000,20,0,0,true),
	 (N'NuNuCa Nuß-Nougat-Creme',3,NULL,N'20 - 450 g glasses',14.0000,76,0,30,false),
	 (N'Gumbär Gummibärchen',3,NULL,N'100 - 250 g bags',31.2300,15,0,0,false),
	 (N'Schoggi Schokolade',3,NULL,N'100 - 100 g pieces',43.9000,49,0,30,false),
	 (N'Rössle Sauerkraut',7,NULL,N'25 - 825 g cans',45.6000,26,0,0,true),
	 (N'Thüringer Rostbratwurst',6,NULL,N'50 bags x 30 sausgs.',123.7900,0,0,0,true),
	 (N'Nord-Ost Matjeshering',8,NULL,N'10 - 200 g glasses',25.8900,10,0,15,false);
INSERT INTO dbo.product (product_name,category_id,region_id,quantity_per_unit,unit_price,units_in_stock,units_on_order,reorder_level,discontinued) VALUES
	 (N'Gorgonzola Telino',4,NULL,N'12 - 100 g pkgs',12.5000,0,70,20,false),
	 (N'Mascarpone Fabioli',4,NULL,N'24 - 200 g pkgs.',32.0000,9,40,25,false),
	 (N'Geitost',4,NULL,N'500 g',2.5000,112,0,20,false),
	 (N'Sasquatch Ale',1,NULL,N'24 - 12 oz bottles',14.0000,111,0,15,false),
	 (N'Steeleye Stout',1,NULL,N'24 - 12 oz bottles',18.0000,20,0,15,false),
	 (N'Inlagd Sill',8,NULL,N'24 - 250 g  jars',19.0000,112,0,20,false),
	 (N'Gravad lax',8,NULL,N'12 - 500 g pkgs.',26.0000,11,50,25,false),
	 (N'Côte de Blaye',1,NULL,N'12 - 75 cl bottles',263.5000,17,0,15,false),
	 (N'Chartreuse verte',1,NULL,N'750 cc per bottle',18.0000,69,0,5,false),
	 (N'Boston Crab Meat',8,NULL,N'24 - 4 oz tins',18.4000,123,0,30,false);
INSERT INTO dbo.product (product_name,category_id,region_id,quantity_per_unit,unit_price,units_in_stock,units_on_order,reorder_level,discontinued) VALUES
	 (N'Jack''s New England Clam Chowder',8,NULL,N'12 - 12 oz cans',9.6500,85,0,10,false),
	 (N'Singaporean Hokkien Fried Mee',5,NULL,N'32 - 1 kg pkgs.',14.0000,26,0,0,true),
	 (N'Ipoh Coffee',1,NULL,N'16 - 500 g tins',46.0000,17,10,25,false),
	 (N'Gula Malacca',2,NULL,N'20 - 2 kg bags',19.4500,27,0,15,false),
	 (N'Rogede sild',8,NULL,N'1k pkg.',9.5000,5,70,15,false),
	 (N'Spegesild',8,NULL,N'4 - 450 g glasses',12.0000,95,0,0,false),
	 (N'Zaanse koeken',3,NULL,N'10 - 4 oz boxes',9.5000,36,0,0,false),
	 (N'Chocolade',3,NULL,N'10 pkgs.',12.7500,15,70,25,false),
	 (N'Maxilaku',3,NULL,N'24 - 50 g pkgs.',20.0000,10,60,15,false),
	 (N'Valkoinen suklaa',3,NULL,N'12 - 100 g bars',16.2500,65,0,30,false);
INSERT INTO dbo.product (product_name,category_id,region_id,quantity_per_unit,unit_price,units_in_stock,units_on_order,reorder_level,discontinued) VALUES
	 (N'Manjimup Dried Apples',7,NULL,N'50 - 300 g pkgs.',53.0000,20,0,10,false),
	 (N'Filo Mix',5,NULL,N'16 - 2 kg boxes',7.0000,38,0,25,false),
	 (N'Perth Pasties',6,NULL,N'48 pieces',32.8000,0,0,0,true),
	 (N'Tourtière',6,NULL,N'16 pies',7.4500,21,0,10,false),
	 (N'Pâté chinois',6,NULL,N'24 boxes x 2 pies',24.0000,115,0,20,false),
	 (N'Gnocchi di nonna Alice',5,NULL,N'24 - 250 g pkgs.',38.0000,21,10,30,false),
	 (N'Ravioli Angelo',5,NULL,N'24 - 250 g pkgs.',19.5000,36,0,20,false),
	 (N'Escargots de Bourgogne',8,NULL,N'24 pieces',13.2500,62,0,20,false),
	 (N'Raclette Courdavault',4,NULL,N'5 kg pkg.',55.0000,79,0,0,false),
	 (N'Camembert Pierrot',4,NULL,N'15 - 300 g rounds',34.0000,19,0,0,false);
INSERT INTO dbo.product (product_name,category_id,region_id,quantity_per_unit,unit_price,units_in_stock,units_on_order,reorder_level,discontinued) VALUES
	 (N'Sirop d''érable',2,NULL,N'24 - 500 ml bottles',28.5000,113,0,25,false),
	 (N'Tarte au sucre',3,NULL,N'48 pies',49.3000,17,0,0,false),
	 (N'Vegie-spread',2,NULL,N'15 - 625 g jars',43.9000,24,0,5,false),
	 (N'Wimmers gute Semmelknödel',5,NULL,N'20 bags x 4 pieces',33.2500,22,80,30,false),
	 (N'Louisiana Fiery Hot Pepper Sauce',2,NULL,N'32 - 8 oz bottles',21.0500,76,0,0,false),
	 (N'Louisiana Hot Spiced Okra',2,NULL,N'24 - 8 oz jars',17.0000,4,100,20,false),
	 (N'Laughing Lumberjack Lager',1,NULL,N'24 - 12 oz bottles',14.0000,52,0,10,false),
	 (N'Scottish Longbreads',3,NULL,N'10 boxes x 8 pieces',12.5000,6,10,15,false),
	 (N'Gudbrandsdalsost',4,NULL,N'10 kg pkg.',36.0000,26,0,15,false),
	 (N'Outback Lager',1,NULL,N'24 - 355 ml bottles',15.0000,15,10,30,false);
INSERT INTO dbo.product (product_name,category_id,region_id,quantity_per_unit,unit_price,units_in_stock,units_on_order,reorder_level,discontinued) VALUES
	 (N'Flotemysost',4,NULL,N'10 - 500 g pkgs.',21.5000,26,0,0,false),
	 (N'Mozzarella di Giovanni',4,NULL,N'24 - 200 g pkgs.',34.8000,14,0,0,false),
	 (N'Röd Kaviar',8,NULL,N'24 - 150 g jars',15.0000,101,0,5,false),
	 (N'Longlife Tofu',7,NULL,N'5 kg pkg.',10.0000,4,20,5,false),
	 (N'Rhönbräu Klosterbier',1,NULL,N'24 - 0.5 l bottles',7.7500,125,0,25,false),
	 (N'Lakkalikööri',1,NULL,N'500 ml',18.0000,57,0,20,false),
	 (N'Original Frankfurter grüne Soße',2,NULL,N'12 boxes',13.0000,32,0,15,false);
