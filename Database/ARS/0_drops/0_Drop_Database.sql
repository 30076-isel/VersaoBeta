USE master

IF( EXISTS(SELECT * 
FROM master.dbo.sysdatabases 
WHERE name = 'IMHU_ARS'))
BEGIN
	DROP DATABASE IMHU_ARS;
END

GO