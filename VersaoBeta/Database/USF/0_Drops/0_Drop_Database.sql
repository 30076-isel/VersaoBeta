USE master

IF( EXISTS(SELECT * 
FROM master.dbo.sysdatabases 
WHERE name = 'IMHU_USF'))
BEGIN
	DROP DATABASE IMHU_USF
END

GO