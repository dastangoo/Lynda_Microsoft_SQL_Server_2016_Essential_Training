CREATE TABLE JSONtest (
  JsonData nvarchar(2000)
)  

ALTER TABLE JSONtest
ADD CONSTRAINT [Check JSON]
CHECK ( ISJSON( JsonData )> 0 )

