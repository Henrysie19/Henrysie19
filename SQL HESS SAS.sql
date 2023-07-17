USE [HESS SAS]

-- Importamos las tablas de software de la empresa

-- Seleccionar las tablas a utilizar
Select *
from dbo.contrimarginalDL

Select *
From dbo.ventas2022_2023DL

-- Crear una tabla que contenga todos las columnas que necesito

CREATE TABLE [dbo].[DL](
	[Codigo] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Cantidad Caja] [float] NULL,
	[Cantidad Blister] [float] NULL,
	[Cantidad Unidad] [float] NULL,
	[Venta Bruta] [money] NULL,
	[Descuento] [money] NULL,
	[Devoluci�n] [money] NULL,
	[Venta Neta] [money] NULL,
	[Iva] [money] NULL,
	[Venta Neta+Iva] [money] NULL,
	[Costo] [money] NULL,
	[Bonificaci�n] [money] NULL,
	[Rentabilidad] [money] NULL,
	[Porcentaje Rentabilidad] [float] NULL,
	[Porcentaje Contribuci�n] [float] NULL,
	[Fecha Movimiento] [datetime] NULL,
	[C�digo Producto] [nvarchar](255) NULL,
	[Vendedor] [nvarchar](255) NULL,
	[Nombre Cliente] [nvarchar](255) NULL,
	[Apellido Cliente] [nvarchar](255) NULL,
	[Grupo I] [nvarchar](255) NULL,
	[Grupo II] [nvarchar](255) NULL,
	[Tipo Venta] [nvarchar](255) NULL
) ON [PRIMARY]
GO

-- Ordenar la nueva tabla por fecha

SELECT * FROM dbo.DL ORDER BY [Fecha Movimiento]

---- Insertar los que necesita la nueva Tabla dbo.DL con la tabla dbo.contrimarginal y completarla con una Inner Join de la tabla
--dbo.ventas2022_2023

INSERT INTO dbo.DL (Codigo,
		Nombre,
		[Cantidad Caja],
		[Cantidad Blister],
		[Cantidad Unidad],
		[Venta Bruta],
		Descuento,
		Devoluci�n,
		[Venta Neta],
		Iva,
		[Venta Neta+Iva],
		Costo,
		Bonificaci�n,
		Rentabilidad,
		[Porcentaje Rentabilidad],
		[Porcentaje Contribuci�n], 
		[Fecha Movimiento],
		[C�digo Producto],
		Vendedor,
		[Nombre Cliente],
		[Apellido Cliente],
		[Grupo I],
		[Grupo II],
		[Tipo Venta])
	SELECT Codigo,
		Nombre,
		[Cantidad Caja],
		[Cantidad Blister],
		[Cantidad Unidad],
		[Venta Bruta],
		Descuento,
		Devoluci�n,
		[Venta Neta],
		Iva,
		[Venta Neta+Iva],
		Costo,
		Bonificaci�n,
		Rentabilidad,
		[Porcentaje Rentabilidad],
		[Porcentaje Contribuci�n],
		[Fecha Movimiento],
		[C�digo Producto],
		Vendedor,
		[Nombre Cliente],
		[Apellido Cliente],
		[Grupo I],
		[Grupo II],
		[Tipo Venta]
		FROM dbo.contrimarginalDL 
		INNER JOIN dbo.ventas2022_2023DL on Codigo = [C�digo Producto]
		
------------------------------------------------------------------------------------------------------

		---- Debemos realizar el mismo ejercicio para otra de las sedes de la empresa 
		--Pero esta Se llamar� FL

Select *
from dbo.contrimarginalDL

Select *
From dbo.ventas2022_2023FL


CREATE TABLE [dbo].[FL](
	[Codigo] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Cantidad Caja] [float] NULL,
	[Cantidad Blister] [float] NULL,
	[Cantidad Unidad] [float] NULL,
	[Venta Bruta] [money] NULL,
	[Descuento] [money] NULL,
	[Devoluci�n] [money] NULL,
	[Venta Neta] [money] NULL,
	[Iva] [money] NULL,
	[Venta Neta+Iva] [money] NULL,
	[Costo] [money] NULL,
	[Bonificaci�n] [money] NULL,
	[Rentabilidad] [money] NULL,
	[Porcentaje Rentabilidad] [float] NULL,
	[Porcentaje Contribuci�n] [float] NULL,
	[Fecha Movimiento] [datetime] NULL,
	[C�digo Producto] [nvarchar](255) NULL,
	[Vendedor] [nvarchar](255) NULL,
	[Nombre Cliente] [nvarchar](255) NULL,
	[Apellido Cliente] [nvarchar](255) NULL,
	[Grupo I] [nvarchar](255) NULL,
	[Grupo II] [nvarchar](255) NULL,
	[Tipo Venta] [nvarchar](255) NULL
) ON [PRIMARY]
GO


INSERT INTO [dbo].[FL] (Codigo,
		Nombre,
		[Cantidad Caja],
		[Cantidad Blister],
		[Cantidad Unidad],
		[Venta Bruta],
		Descuento,
		Devoluci�n,
		[Venta Neta],
		Iva,
		[Venta Neta+Iva],
		Costo,
		Bonificaci�n,
		Rentabilidad,
		[Porcentaje Rentabilidad],
		[Porcentaje Contribuci�n], 
		[Fecha Movimiento],
		[C�digo Producto],
		Vendedor,
		[Nombre Cliente],
		[Apellido Cliente],
		[Grupo I],
		[Grupo II],
		[Tipo Venta])
	SELECT Codigo,
		Nombre,
		[Cantidad Caja],
		[Cantidad Blister],
		[Cantidad Unidad],
		[Venta Bruta],
		Descuento,
		Devoluci�n,
		[Venta Neta],
		Iva,
		[Venta Neta+Iva],
		Costo,
		Bonificaci�n,
		Rentabilidad,
		[Porcentaje Rentabilidad],
		[Porcentaje Contribuci�n],
		[Fecha Movimiento],
		[C�digo Producto],
		[Grupo I],
		[Grupo II],
		[Tipo Venta],
		[Nombre Cliente],
		[Apellido Cliente],
		[Vendedor]
		FROM dbo.contrimarginalDL 
		INNER JOIN dbo.ventas2022_2023FL on Codigo = [C�digo Producto]

