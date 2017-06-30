CREATE TABLE Inventory 
(    
  [InventoryID] int NOT NULL PRIMARY KEY CLUSTERED   
  , [ItemName] nvarchar(100) NOT NULL  
  , [ValidFrom] datetime2 (2) GENERATED ALWAYS AS ROW START  
  , [ValidTo] datetime2 (2) GENERATED ALWAYS AS ROW END  
  , PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo)  
 )    
 WITH (SYSTEM_VERSIONING = ON); 