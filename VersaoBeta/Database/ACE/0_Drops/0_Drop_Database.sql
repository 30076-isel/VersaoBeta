USE master

IF( EXISTS(SELECT * 
FROM master.dbo.sysdatabases 
WHERE name = 'IMHU_ACE'))
BEGIN
	DROP DATABASE IMHU_ACE;
END

GO