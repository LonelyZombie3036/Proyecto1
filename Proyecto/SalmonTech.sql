create database SalmonTech
go

Use SalmonTech
go

create table Productos(
	ProductID varchar(20) Not Null,
	ProductName varchar(30),
	ProveedorID varchar(20),
	Precio int,
	Unidades int,
	Descontinuados int,
	unidades_Pedidas int,
	CatogoryID varchar(20),

	constraint PK_ProductID primary key(ProductID)


);

Create table Cliente(
	Nombre varchar(30),
	Apellido Varchar(30),
	Codigo_Postal varchar(30),
	Direccion varchar(40),
	ClienteID varchar(20) not null,
	Fecha_Nacimiento date,
	Ciudad_de_Origen varchar(30),
	Pais_de_Origen varchar(30),
	Telefono varchar(30),

	constraint PK_ClienteID Primary Key(ClienteID)
);

Create table Empleado(
	Nombre varchar(20),
	Apellido varchar(20),
	Fecha_contratacion date,
	Fecha_Nacimiento date,
	EmpleadoID varchar(20) not null,
	Ciudad varchar(30),
	Codigo_postal varchar(30),
	Direccion varchar(30),
	Celular varchar(20),
	Pais_de_Origen varchar(20),

	constraint PK_Empleado primary Key (EmpleadoID)
);

Create table Orden(
	OrdenID varchar(20) not null,
	fecha_de_orden date,
	Empleado_id varchar(20),
	CLienteID varchar(20),
	Direccion_de_envio varchar(30),
	Pais_de_envio varchar(20),
	Nombre_cliente varchar(20),
	Codigo_postal_envio varchar(20),
	Precio_total int,
	dia_de_envio date,
	ciudad_de_envio varchar(20)

	constraint PK_OrderID primary key(OrdenID)
);

create table Paqueteria(
	ShippingID varchar(20) not null,
	Celular varchar(20),

	constraint PK_paqueteriaID primary key(ShippingID)
);
Create table Proveedores(
	ProveedorID varchar(20) not null,
	Pagina_Web varchar(40),
	celular varchar(20),
	direccion varchar(20),
	CP varchar(20),
	Nombre_Compañia varchar(30),
	Nombre_de_contacto varchar(30),

	constraint PK_ProveedoresID primary key(ProveedorID)

);
create table Categorias(
	CategoryID varchar(20) not null,
	CetegoryName varchar(20),
	Descripcion varchar(20),
	constraint PK_cateogryID primary key(CategoryID)

);

--drop table  Orden
--go

ALTER TABLE Orden ADD FOREIGN KEY (Empleado_id) 
	REFERENCES Empleado (EmpleadoID);

ALTER TABLE Orden ADD FOREIGN KEY (CLienteID) 
	REFERENCES Cliente (ClienteID);

ALTER TABLE Orden ADD ShippingID varchar(20)

ALTER TABLE Orden ADD ProductoID varchar(20)

Alter Table Proveedores ADD Pais varchar(20)

ALTER TABLE Orden ADD CONSTRAINT FK_SHIP_ID FOREIGN KEY (shippingID) 
	REFERENCES Paqueteria(ShippingID) 

ALTER TABLE Productos ADD CONSTRAINT FK_CATID FOREIGN KEY (CatogoryID) 
	REFERENCES Categorias(CategoryID) 

ALTER TABLE Productos ADD CONSTRAINT FK_ProveedorID FOREIGN KEY (ProveedorID) 
	REFERENCES Proveedores(ProveedorID) 

ALTER TABLE Orden ADD CONSTRAINT FK_productID FOREIGN KEY (ProductoID) 
	REFERENCES Productos(ProductID) 

Alter table Productos Alter Column ProductName varchar(80)

Alter table Categorias Alter Column Descripcion varchar(180)

Alter Table Proveedores Drop COlumn CP

--Delete From Proveedores

--Categorias DATOS
Insert Into Categorias(CategoryID, CetegoryName, Descripcion)
Values('BDF-59874','Motherboard','Las tarjetas madres son productos indispensables para nuestros consumidores, ya que con ellas van a poder armar su pc')

Insert Into Categorias(CategoryID, CetegoryName, Descripcion)
Values('BDF-59875','Tarjeta de Video','Las tarjetas de video son indispensables para cada gamer, aquí solo tenemos las de calidad premium.')

Insert Into Categorias(CategoryID, CetegoryName, Descripcion)
Values('BDF-59876','Memoria RAM','Son las mejores calidad-precio para que el consumidor tenga la garantía de que van a funcionar por mucho tiempo!')

--Paqueteria DATOS
Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-D','6563424009')

Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-E','6566244276')

Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-F','6569877418')

Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-G','6569321456')

Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-H','6563214565')

Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-I','6567842150')

Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-J','6563558475')

Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-K','6569663147')

Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-L','6568413663')

Insert Into Paqueteria(ShippingID,Celular)
Values('PWI-56987-M','6569984613')

--PROVEEDORES DATOS
Insert Into Proveedores(ProveedorID,Pagina_Web,celular,direccion,Nombre_Compañia, Nombre_de_contacto, Pais )
values('A-1658','can-not-tweet-this.com','6569523858','FernandoHoutlook.com','SinergySolution','Gimgoon','Japan')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Tian','SmartBytes','6562722991','CorajeAsoutlook.com','www.republiquedesmangues.fr/','Luxembourg','A-1659')

-------------------------------------------------------------------------------------------------------------
Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Doinb','FusionFix','6567895215','Panter13outlook.com','tinytuba.com/','Morcco','A-1660')
----------------------------------------
Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
Values('Iwx','FourthDimension','6562590730','TodoFulloutlook.com','weirdorconfusing.com/','Mexico','A-1661')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
Values('Crisp','ProSolutions','6563682522','Distrstlook.com','www.ebay.com','Norwayt','A-1662')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
Values('Faker','Nexxus','6566630887','Reminderoutlook.com','hastworldyet.com/','New Zeland','A-1663')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
Values('Caps','NovaSolutions','6568802280','DFYoutlook.com','pixelsfighting.com/','Wales','A-1664')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
Values('PerkZ','SKT T1','6561851226','SIdeWalksoutlook.com','oct82.com/','Netherlands Halland','A-1665')


Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
Values('Wunder','G2','6566391636','ITNoutlook.com','ww7.chilloutantgifs.com/', 'Panama','A-1685')


Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Jankops','TecnoLife','6560716012','JangarooCour.com','corndog.i/','Paraguay','A-1667')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Mikyx','DDTECH','6563722734','ALKAPONEoutlook.com','burymewithmymoney.com/','Sweden','A-1668')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('PromisQ','Fun Plus Phoneix','6566588203','HSRoutlook.com','www.staggeringbeauty.com/','Switzerland','A-1669')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Khan','DamWon','6569652743','TheHillsoutlook.com','www.everydayim.com/','Whailand','A-1670')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Mata','Splyce','6568724074','Talanoutlook.com','cat-bounce.com/','Spain' ,'A-1671')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Teddy','Griffin','6567187244','GucciManeoutlook.com','hooooooooo.com/','Venenzuela','A-1672')


Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Clid','CiaranSoul','6565821','WastedTsoutlookcom','wwwhackertypercom','Ukraine','A-1673')

Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Effort','Fnatic','6566174022','Starboyoutlook.com','nullingthevoid.com/','Turkey','A-1674')


Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Grippex','Infinity','6563324120','LITFoutlook.com','chrismckenzie.com/','Tunisia','A-1675')


Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('JackyLove','Invictus','6563351338','LTLoutlook.com','beesbeesbees.com/','Finland','A-1676')


Insert Into Proveedores(Nombre_de_contacto,Nombre_Compañia,celular,direccion,Pagina_Web, Pais,ProveedorID )
values('Doublelift','Cloud9','6564405843','CTMFoutlook.com','ihasabucket.com/','Great Britain','A-1677')

---EMPLEADOS DATOS
insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal,Pais_de_Origen, Fecha_contratacion)
values('Abby','Jhonson','10/03/1992','Amsterdam','392 Central StHartselleAL35640','6566477403','104','41575','Argentina','10/05/2010')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Ada','Martin','10/10/1983','Athens','WJames Street','6562954897','90','41919','Canada','05/10/2007')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Adele','White','10/20/1987','Baghdad','965 NE. Ann St','6560572371','24','78042','Germany','11/06/2006')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Alexa','Evans','10/12/1963','Bahgkok','587 Grove Dr','6569167976','100','33856','Germany','01/06/2012')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Bambi','Hawk','03/23/1991','Barcelona','77 Plymouth','6565502490','45','63490','Mexico','5/25/2005')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Beatrice','Becket','05/20/1974','Beijin','9846 Amherst Ave','6569990043','18','60243','Mexico','06-28-2005')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Blair','Reed','10/09/1968','Belgrade','8119 Rose Street','6566558309','63','54202','Mexico','06/09/2010')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Blake','Griffin','03/20/1991','Berlin','49 South Leatherwood Ave','6569684726','75','65095','Mexico','09/15/2010')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Bonnie','Kelly','10/06/1998','Chicago','77 East Manchester Ave','6566918625','79','62124','New Zealand','09/30/2011')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Caddence','Trumpl','03/30/1975','Caracas','7224 Taylor Drive','6560298292','46','38533','Saint Lucia','05/17/2012')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Callie','Pinkman','01/21/1997','Caireo','84 Beacon Drive','6565685973','15','60218','Argentina','07/02/2012')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Cat','Morrison','02/14/1963','Cape Town','64 Homewood Street','6569436028','69','46479','Canada','12/30/2013')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Celia','Adanson','12/19/1978','Copehhagen','8118 Euclid St','6560301973','31','48834','Saint Lucia','09/03/2014')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Jane','bennet','12/29/1955','Geneva','8772 Devonshire Drive','6564502252','86','75509','USA','04/29/2016')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('James','Davies','12/14/1975','Helsinkio','103 Johnson Street','6569765745','135','53757','USA','05/05/2016')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('John','Cook','01/03/1999','Hong Kong','532 St Margarets Ave','6563770255','179','79681','New Zealand','06/09/2016')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Josep','Lee','06/07/1964','Instabul','441 Grove St','6565208387','38','77659','USA','08/12/2016')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Mary','Walsh','05/05/1974','Jakarta','2 Rockland Drive','6565031291','59','52870','USA','03/23/2017')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Robert','Cooper','03/07/1975','La Plata','3 Silver Spear Street','6565015185','20','48723','Argentina','04/07/2017')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Sarah','Eduard','08/25/1955','Toronto','53 East Dr','6560769238','94','32279','Canada','12/20/2018')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Neo','Lburrel','11/25/1999','Karachi','8203 Mechanic St','6562801519','120','68730','New Zealand','06/21/2019')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Leson','Smith','12/24/1996','Kiev','34 Ridgewood Rd','6562954784','61','64521','USA','01/05/2009')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Nestor','Washington','05/15/1999','Lagos','77 Monroe St','6567265611','82','67657','USA','02/14/2011')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Nick','Murphy','06/22/1999','Lahore','63 Bear Hill Court','6560761106','83','38698','USA','10/20/2011')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Natasha','Michaelson','07/22/1999','Hanoi','371 Snake Hill Ave','6569832085','101','76420','New Zealand','08/15/2012')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Nicole','Gates','03/27/1999','Manila','83 Smoky Hollow','6562756867','67','36494','USA','09/21/2012')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Nishta','kellog','03/30/1994','El paso','49 Woodsman St','6564973762','85','43831','USA','02/05/2013')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Noelle','Anderson','12/19/1972','Monreal','7581 Stonybrook St','6566399210','124','38244','USA','02/20/2013')

insert into Empleado(Nombre, Apellido, Fecha_Nacimiento, Ciudad, Direccion, Celular, EmpleadoID, Codigo_postal, Pais_de_Origen, Fecha_contratacion)
values('Norah','Bramson','03/20/1991','Buenos Aires','225 Marsh Street','6562226572','142','53882','Argentina','04/22/2019')

--PRODUCTOS DATOS
insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16987','KAM1-I ECS Socket AM1 AMD Mini ITX','A-1673',689.23,54,0,5,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16988','Tarjeta Madre A68MDE Biostar Socket FM2+ AMD Micro ATX','A-1674', 814.80,	0,1,7,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16989','H110M-E/M.2 Asus Socket 1151 Intel H110 Micro ATX','A-1675',1284.99 ,20,0,9,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16990','Tarjeta Madre B450M DS3H Gigabyte Socket AM4 AMD B450 Micro ATX','A-1660',1559.23 ,20,0,3,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16991','Tarjeta Madre Gigabyte B360M DS3H Intel B360 Micro ATX','A-1661',1792.48 ,38,0,10,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16992','Tarjeta Madre Asus TUF B360M-E Gaming Socket 1151-V2 Intel B360 Micro ATX / DDR4 ','A-1662',1895.86 ,0,1,12,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16993','Tarjeta Madre H170GT3 Biostar Socket 1151 Intel H170 Micro ATX','A-1663',2031.55 ,22,0,11,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16994','Gigabyte B365 M AORUS ELITE / RGB FUSION 2.0 / Intel B365 Micro ATX' ,'A-1664',2049.00 ,30,0,10,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16995','Tarjeta Madre X370 Taichi Asrock Socket AM4 AMD X370 ATX ','A-1665',4838.99 ,1,0,11,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16996','Tarjeta Madre Gigabyte X570 GAMING X AMD Ryzen 3ra Gen. AM4 ATX','A-1666',3976.09 ,5,0,12,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16997','Gigabyte X470 AORUS GAMING 5 AM4 ATX','A-1672',5726.34 ,5,0,6,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16998','Tarjeta Madre ASUS ROG Strix Z370-I Gaming Intel Z370 Mini ITX','A-1673',4384.00,1,0,6,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-16999','Tarjeta Madre Asus Prime X570-PRO AMD Ryzen 3ra Gen. AM4 ATX','A-1674',5505.75 ,5,0,6,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17000','Tarjeta Madre Asus ROG Crosshair VII Hero AMD Ryzen AM4 ATX / X470','A-1675',6003.39,	1,0,6,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17001','Tarjeta Madre Gigabyte X399 Aorus Extreme Socket TR4 AMD X399 E-ATX / DDR4' ,'A-1676',9299.00 ,3,0,6,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17002','Asus ROG Maximus XI Extreme Intel 1151v2 / Z390 / ATX' ,'A-1677',11930.30 ,0,1,5,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17003','Tarjeta Madre ROG CROSSHAIR VIII Formula ASUS Socket AM4 AMD X570 ATX','A-1658', 16599.00 ,3,0,5,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17004','MSI MEG X570 Godlike / AMD Ryzen / AM4 / ATX / X570 / RGB Mystic Light','A-1659',15091.60,1,0,5,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17005','Tarjeta Madre Asus ROG STRIX X570-F Gaming AMD Ryzen 3ra Gen. AM4 ATX / X570' ,'A-1660', 6596.48 ,3,0,5,'BDF-59874')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17010','Tarjeta de video Radeon RX560 4GB GDDR5 Gigabyte OC Mini / GV-RX560OC-4GD','A-1669', 3160.27,	59,0,3,'BDF-59875')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17011','Tarjeta de video Radeon RX 570 4GB GDDR5 / Sapphire Pulse ITX /','A-1670'	,3099.00 ,7,0,4,'BDF-59875')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17012','Tarjeta de video Radeon RX570 4GB GDDR5 / Sapphire Pulse /','A-1671'	,4999.00 ,195,0,5,'BDF-59875')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17013','Tarjeta de video NVIDIA GeForce GTX 1650 4GB GDDR5 / EVGA XC','A-1672',3976.09 ,48,0,2,'BDF-59875')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17014','Tarjeta de video Radeon RX590 8GB GDDR5 / Sapphire Nitro Edición Especial AMD' ,'A-1673',5950.36, 0,1,7,'BDF-59875')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17015','Tarjeta de video NVIDIA GeForce GTX 1060 3GB GDDR5 HDMI/DVI/DP PNY','A-1674'	,5097.84 ,0,1,6,'BDF-59875')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17016','Tarjeta de video NVIDIA GeForce GTX 1660 6GB GDDR5','A-1675',5607.72 ,8,0,5,'BDF-59875')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17031','Memoria RAM 4GB DDR4 GEIL Evo Potenza 2400Mhz Negra / GAPB44GB2400C16S','A-1673',610.84 ,0,0,5,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17032','Memoria RAM DDR4 8GB 2400MHz Blackpcs Negro MD22402-8GB','A-1674'	,629.00,27,0,4,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17033','Memoria RAM XPG GAMER Flame DDR4 8GB 2666MHz 1X8 AX4U266638G19-SBF','A-1667',810.99 ,221,0,4,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17034','Memoria RAM Sodimm DDR4 XPG Flame 4GB 2400Mhz / AX4S2400W4G15-SBF','A-1668'	,794.40,16,0,3,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17035','Memoria RAM DDR4 8GB 2666MHz Gigabyte Memory / 1x8GB / GP-GR26C16S8K1HU408','A-1669',1018.76,	48,0,3,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17036','Memoria RAM DDR4 8GB 2666MHz Adata XPG Gammix D30 1x8GB Roja ','A-1670',1202.31 ,65,0,1,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17037','Memoria RAM 8GB DDR4 TeamGroup T-Force Delta RGB 2400Mhz Negra ',	'A-1671', 1222.71 ,	20,	0,2,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17038','Memoria RAM DDR4 8GB 2400MHz Kingston Hyper X Fury RGB 1 Modulo','A-1672',949.00 ,32,0,14,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17039','Memoria RAM DDR4 8GB 3000MHz Corsair LPX 1 Modulo Negro / CMK8GX4M1D3000C16','A-1673'	,1221.71 ,2,0,13,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17040','Memoria RAM DDR4 8GB 3000MHz XPG D41 RGB TUF ALLIANCE - Aura Sync - 1X8GB Negra','A-1674', 1324.69 ,32,0,12,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17041','Memoria RAM Kingston Hyper X Fury 8GB DDR4 3200Mhz / Roja / HX432C18FR2/8','A-1675',1385.87 ,0,1,11,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17042','Memoria Ram Gskill Ddr4 8GB Ripjaws V Red 2666mhz / F4-2666C15S-8GVB','A-1676',998.78 ,7,0,10,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17043','Memoria RAM 8GB DDR4 GEIL Evo Potenza 2400Mhz Negra / GAPB48GB2400C16S','A-1677', 1630.62 ,0,1,9,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17044','Memoria RAM DDR4 8GB 3000MHz XPG D60G RGB - Aura Sync - 1X8GB','A-1658'	,1273.69 ,96,0,7,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17045','Memoria RAM DDR4 8GB 3200MHz XPG Spectrix D80 Enfriamiento liquido RGB 1x8GB / Roja','A-1659'	,1630.00, 14,0,8,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17046','Memoria RAM DDR4 8GB 2400MHz Patriot Viper Elite Gris','A-1660',1120.73 ,3,0,5,'BDF-59876')

insert into Productos(ProductID,ProductName,ProveedorID, Precio, Unidades, Descontinuados, unidades_Pedidas, CatogoryID)
values('B-17047','Memoria RAM DDR4 8GB 3466MHz Kingston Hyper X Fury RGB 1 Modulo Negro','A-1667', 1149.00,	39,0,15,'BDF-59876')

--DATOS CLIENTE
Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Juan','Macias','32573','Valle del sol 578','CLIE-19987','05/20/1999','Chihuahua','Mexico','6562009494')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Anthony','Aguilar','76652','2137 Hondo Ave' ,'CLIE-19988','03/15/1989','Dallas','USA','6562009495')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Alfredo' ,'Bautista' ,'76621','Calle del Barco, 23-3','CLIE-19989','01/03/1994','Madrid','España','6562009496')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Juan','Vázquez' ,'1012','Av Sur 2, Caracas 1014','CLIE-19990','08/22/1997','Caracas','Venezuela','6562009497')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Gregorio','Bermudez','15063','Jirón Ica 844','CLIE-19991','03/25/1985','Lima','Peru','6562009498')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Angel','Rosales','1900','José E. Echeverría 1299-1199','CLIE-19992','12/24/1995','Plata','Argentina','6562009499')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Cesar','Moises','32580','San Antonio Abad 285 Algarín','CLIE-19993','11/05/1996','Chiapas','Mexico','6562009500')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Humberto','Betancourt','76625','2011 Viscount Ave','CLIE-19994','10/30/1999','El paso','USA','6562009501')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Guajardo','del toro','28042','Calle del Barco','CLIE-19995','09/25/1991','Sevilla','España','6562009502')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Mundo','Jadilson','1011','Avenida Sur 2, Caracas 1014','CLIE-19996','08/06/1992','Caracas','Venezuela','6562009503')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Roberto','Diaz','15062','Sancho de Rivera 1215','CLIE-19997','05/20/2000','Lima','Peru','6562009504')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Alejandro','Bolaños','1901','Luis Agote 2825','CLIE-19998','03/15/1990','Buenos Aires','Argentina','6562009505')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Manrique','Salvador','32890','Torres Sur 625','CLIE-19999','02/03/1994','Juarez','Mexico','6562009506')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Manuel','Bautista' ,'76632','2218 Arroyo Ave','CLIE-20000','08/22/1998','Utah','USA','6562009507')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Guillermina','Aldrete','28013','Calle de la Madera, 32-42','CLIE-20001','03/25/1986','Madrid','España','6562009508')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Maria','Saenz','1012','Avenida Lecuna, Caracas 1010','CLIE-20002','12/24/1996','Caracas','Venezuela','6562009509')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Cristina','Villalobos','15063','Alameda Monserrate, Sancho de Rivera','CLIE-20003','12/05/1996','Lima','Peru','6562009510')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Brandon','Granados','1709','Avenida das Nações, Via L 4 Sul s/n - DF','CLIE-20004','10/30/2000','Rio de Janeiro','Brasil','6562009511')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Carlos','Ochoa','32678','Calle Siete 81, Independencia','CLIE-20005','09/25/1992','Sonora','Mexico','6562009512')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Guillermo','Ochoa','76823','5323 Harry Hines Blvd','CLIE-20006','09/06/1992','Dallas','USA','6562009513')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Cristiano','Ronaldo','32566','Calz. Sta. Cruz, San Simón','CLIE-20007','05/20/2000','Chihuahua','Mexico','6562009514')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Israel','Gimenez','76921','7000-7298 Fillmore Dr','CLIE-20008','03/15/1990','New Mexico','USA','6562009515')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Renato','Ibarra','32750','Av. Río Churubusco, Gral Anaya','CLIE-20009','02/03/1994','CDMX','Mexico','6562009516')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Giovani','Santos','76610','2311 Langdon Ave','CLIE-20010','08/22/1998','El paso','USA','6562009517')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Henry','Martin','15062','Jr. Guillermo Dansey 390','CLIE-20011','03/25/1986','Nasca','Peru','6562009518')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Alan' ,'Pulido','15061','Jr. Presbítero García Villón N° 671','CLIE-20012','12/24/1996','Cusco','Peru','6562009519')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Ignacio','Abate','1805','Octogonal 05 - DF, 70660-080','CLIE-20013','12/05/1996','Brasilia','Brasil','6562009520')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Andrea','Rabito','32698','Vasco de Quiroga 15, Belisario','CLIE-20014','10/30/2000','Camargo','Mexico','6562009521')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Karamoko','Cisse','76420','2314 Brookfield Ave','CLIE-20015','09/25/1992','Santa Cruz','USA','6562009522')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Radamel','Falcao','32540','Av de Las Fuentes, Fuentes','CLIE-20016','09/06/1992','Queretaro','Mexico','6562009523')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Andres','Iniestra','76722','8850 N Stemmons Fwy','CLIE-20017','05/20/2001','Pima','USA','6562009524')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Juan','Arango','32478','Pueblo San Andrés Totoltepec','CLIE-20018','04/11/1994','Michoacan','Mexico','6562009525')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Gareth','Bale','76235','2411 Shorecrest Dr','CLIE-20019','05/30/1999','Navajo','USA','6562009526')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Patricio','Caicedo','15061','Av. República de Venezuela 1062','CLIE-20020','05/14/1988','Cusco','Peru','6562009527')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Jose','Cabo','15059','Av. Arica 601, Cercado de Lima 15083','CLIE-20021','06/16/1997','Bagua','Peru','6562009528')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Antonio','Cabral','1705','Asa Norte, Brasília - DF, 70757-120','CLIE-20022','03/19/1990','Florianopolis','Brasil','6562009529')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Abraham','Carnicero','32986','Canal de Miramontes 3011, Coapa','CLIE-20023','07/20/1988','chetumal','Mexico','6562009530')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Ramon','Carranza','76623','2335 Burbank St','CLIE-20024','09/20/1990','pinal','USA','6562009531')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Santos','Salustiano','32547','Av. H. Escuela Naval Militar S/N','CLIE-20025','06/06/1996','Villahermosa','Mexico','6562009532')

Insert into Cliente(Nombre, Apellido, Codigo_Postal, Direccion, ClienteID, Fecha_Nacimiento, Ciudad_de_Origen, Pais_de_Origen, Telefono)
Values('Sevilla','Salvador','76325','1519 Viceroy Dr','CLIE-20026','08/30/1999','Apache','USA','6562009533')

---ORDENES DATOS
insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/01/2019','101','CLIE-20026',' Fuentes Brotantes','Mexico','Sevilla','32540',610.84 ,'10/05/2019','Queretaro','B-17031', 'ORD-1547')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/02/2019','90','CLIE-20017','8850 N Stemmons Fwy','USA','Andres','76722',629.00 ,'10/06/2019','Pima','B-17032','ORD-1548')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values(	'10/03/2019','24','CLIE-20018','Totoltepec ','Mexico','Juan ','32478',810.99 ,'10/07/2019','Michoacan','B-17033','ORD-1549')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/04/2019','100','CLIE-20019','2411 Shorecrest Dr','USA','Gareth','76235',794.40 ,'10/08/2019','Navajo','B-17034','ORD-1550')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values(	'10/05/2019','45','CLIE-20020','Av.República de Venezuela 1062','Peru','Patricio','15061',1018.76 ,'10/09/2019','Cusco','B-17035','ORD-1551')


insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values(	'10/06/2019','18','CLIE-20021','Av. Arica 601, Cercado','Peru','Jose','15059', 1202.31 ,'10/09/2019','Bagua','B-17036','ORD-1552')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/07/2019','63','CLIE-20022','Asa Norte, Brasília','Brasil','Antonio','1705', 1222.71,	'10/10/2019','Florianopolis','B-17037','ORD-1553')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/08/2019','75','CLIE-20023','Canal de Miramontes','Mexico','Abraham','32986', 949.00 ,'10/11/2019','chetumal','B-17038','ORD-1554')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/09/2019','79','CLIE-20024','2335 Burbank St','USA','Ramon','76623', 1221.71 ,'10/12/2019','pinal','B-17039','ORD-1555')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/10/2019','46','CLIE-20025','Av. H. Escuela Naval Militar','Mexico','Santos','32547', 1324.69,'10/13/2019','Villahermosa','B-17040','ORD-1556')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/11/2019','15','CLIE-20026','1519 Viceroy Dr','USA','Sevilla','76325', 1385.87 ,'10/14/2019','Apache','B-17041','ORD-1557')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/12/2019','69','CLIE-20002','Avenida Lecuna','Venezuela','Maria','1012', 998.78 ,'10/15/2019','Caracas','B-17042','ORD-1558')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/01/2020','31','CLIE-20003','Alameda Monserrate','Peru','Cristina','15063', 1630.62, '10/05/2019','Lima','B-17043','ORD-1559')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/02/2020','86','CLIE-20004','Avenida das Nações, Via','Brasil','Brandon','1709', 1273.69 ,'10/06/2019','Rio de Janeiro','B-17044','ORD-1560')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values(	'10/04/2020','79','CLIE-20006','5323 Harry Hines Blvd','USA','Guillermo','76823', 1120.73,'10/08/2019','Dallas','B-17046','ORD-1562')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values(	'10/05/2020','38','CLIE-20007','Calz. Sta. Cruz, San Simón','Mexico','Cristiano','32566', 1149.00,'10/09/2019','Chihuahua','B-17047','ORD-1563')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/06/2020','59','CLIE-20008','7000-7298 Fillmore Dr','USA','Israel','76921', 3160.27,'10/09/2019','New Mexico','B-17010','ORD-1564')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/07/2020','20','CLIE-20009','Av. Río Churubusco, Gral Anaya','Mexico','Renato','32750', 3099.00,'10/10/2019','CDMX','B-17011','ORD-1565')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values(	'10/08/2020','94','CLIE-20010','2311Langdon Ave','USA','Giovani','76610', 4999.00 ,'10/11/2019','El paso','B-17012','ORD-1566')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/09/2020','20','CLIE-20011','Jr. Guillermo Dansey 390','Peru','Henry','15062', 3976.09 ,'10/12/2019','Nasca','B-17013','ORD-1567')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/10/2020','61','CLIE-20012','Jr. Presbítero García Villón','Peru','Alan','15061', 5950.36 ,'10/13/2019','Cusco','B-17014','ORD-1568')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/11/2020','82','CLIE-20013','Octogonal 05 - DF','Brasil','Ignacio','1805', 5097.84 ,'10/14/2019','Brasilia','B-17015','ORD-1569')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values(	'10/12/2020','83','CLIE-20014','Vasco de Quiroga 15, Belisario','Mexico','Andrea','32698', 5607.72 ,'10/15/2019','Camargo','B-17016','ORD-1570')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/01/2021','101','CLIE-20015','2314 Brookfield Ave','USA','Karamoko','76420', 689.23,'	10/05/2019','Santa Cruz','B-16987','ORD-1571')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/02/2021','67','CLIE-19987','Valle del sol 578','Mexico','Juan','32573', 814.80,'10/06/2019','Chihuahua','B-16988','ORD-1572')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/03/2021','85','CLIE-19988','2137 Hondo Ave',	'USA','Anthony','76652', 1284.99,'10/07/2019','Dallas','B-16989','ORD-1573')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/04/2021','24','CLIE-19989','Calle del Barco, 23-3','España','Alfredo','76621', 1559.23,'10/08/2019','Madrid','B-16990','ORD-1574')

insert into Orden(fecha_de_orden, Empleado_id, CLienteID, Direccion_de_envio, Pais_de_envio, Nombre_cliente, Codigo_postal_envio, Precio_total, dia_de_envio, ciudad_de_envio, ProductoID,OrdenID)
values('10/05/2021','69','CLIE-19990','Av Sur 2, Caracas 1014','Venezuela','Juan','1012', 1792.48 ,'10/09/2019','Caracas','B-16991','ORD-1575')