CREATE DATABASE kudcenkat

--Renaming database
--To alter a database, once it is creaated
ALTER DATABASE kudcenkat MODIFY NAME = kudvenkat;
GO
--Alternatively, you can use system procedure
SP_RENAMEDB 'new_kudvenkat', 'kudvenkat'

--You cannot delete database if another user is using using it.
 DROP DATABASE kudvenkat

