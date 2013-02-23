declare @TableName varchar(100) = 'Country'
SELECT 'Insert into ' so.name, sc.name, st.name, sc.length
, Case when sc.status = 0x80 then 'Y' else 'N' END as IsIdent
, ColOrder
FROM sysobjects so
INNER JOIN syscolumns sc
  ON so.id= sc.id 
INNER JOIN systypes st
  ON sc.xtype = st.xusertype 
WHERE so.Name = @TableName
ORDER BY ColOrder