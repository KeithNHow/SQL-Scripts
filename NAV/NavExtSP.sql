USE master
EXEC sp_addextendedproc xp_ndo_enumusersids, 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Binn\xp_ndo_x64.dll'
GO

GRANT EXECUTE
ON [xp_ndo_enumusersids]
TO PUBLIC
GO

USE master
EXEC sp_addextendedproc xp_ndo_enumusergroups, 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Binn\xp_ndo_x64.dll'
GO

GRANT EXECUTE
ON [xp_ndo_enumusergroups]
TO PUBLIC
GO