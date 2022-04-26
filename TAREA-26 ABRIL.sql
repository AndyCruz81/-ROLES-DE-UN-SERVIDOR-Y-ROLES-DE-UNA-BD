
--TAREA == iNVESTIGAR LOS ROLES DE UN SERVIDOR Y ROLES DE UNA BD ==

--Creamos usuarios para Northwind
use Northwind
---------------------------
--Creamos el perfil
create login NorthwindAdmin
with password = 'sistemas123'
go
--Agregar Usuario
sp_adduser NorthwindAdmin, NorthwindAdmin

sp_helplogins NorthwindAdmin
-----------------------------
--Permisos para ejecutar PROC
grant execute on Mostrar_Clientes to NorthwindAdmin
grant execute on Mostrar_Producto to NorthwindAdmin

--permisos para seleccionar una tabla en especifico
grant select on Customers to NorthwindAdmin
-----------------------------
--Quitar permisos 
Revoke select on Customers to NorthwindAdmin
-----------------------------
--Seleccionar Columnas especificas
grant select on Customers(CustomerID,CompanyName) to NorthwindAdmin
-----------------------------
--Permiso para crear tablas 
grant create table to NorthwindAdmin
-----------------------------
--Grant/Revoke/Deny (Select/ Insert/ Update/ Create/ Alter)
--on (Table/ Procedure/ Function/ Rule/ View)
--to Usuario/ Login/ Role

grant select on schema :: dbo to NorthwindAdmin
-----------------------------
deny select on Employees to NorthwindAdmin


