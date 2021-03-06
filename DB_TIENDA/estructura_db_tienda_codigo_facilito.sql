USE [db_dorita]
GO
/****** Object:  Table [dbo].[ARTÍCULO]    Script Date: 08/09/2016 3:39:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARTÍCULO](
	[Id_Articulo] [int] NOT NULL,
	[Id_Proveedor] [int] NOT NULL,
	[Cod_Art] [varchar](10) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[DescripArt] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[MarcaArt] [varchar](20) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[StockArt] [numeric](4, 0) NOT NULL,
	[PrecioArt] [numeric](6, 2) NOT NULL,
 CONSTRAINT [XPKARTÍCULO] PRIMARY KEY NONCLUSTERED 
(
	[Id_Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETALLE_ENTRADA]    Script Date: 08/09/2016 3:39:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DETALLE_ENTRADA](
	[Id_Entrada] [int] NOT NULL,
	[Id_Articulo] [int] NOT NULL,
	[CantEntrada] [int] NOT NULL,
	[UnMedida] [varchar](10) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[DescripMercancia] [varchar](100) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[PaisAdquisicion] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[NombProveedor] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[NroFact] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[PrecUnitCompra] [numeric](6, 2) NOT NULL,
	[PrecImport] [numeric](6, 2) NOT NULL,
 CONSTRAINT [XPKDETALLE_ENTRADA] PRIMARY KEY NONCLUSTERED 
(
	[Id_Entrada] ASC,
	[Id_Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETALLE_SALIDA]    Script Date: 08/09/2016 3:39:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_SALIDA](
	[Id_Articulo] [int] NOT NULL,
	[Id_Salida] [int] NOT NULL,
	[CantSalida] [int] NOT NULL,
	[PUVenta] [numeric](6, 2) NOT NULL,
	[ImporteVenta] [numeric](6, 2) NOT NULL,
 CONSTRAINT [XPKDETALLE_SALIDA] PRIMARY KEY NONCLUSTERED 
(
	[Id_Articulo] ASC,
	[Id_Salida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ENTRADA]    Script Date: 08/09/2016 3:39:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ENTRADA](
	[Id_Entrada] [int] NOT NULL,
	[NroRegistro] [varchar](12) COLLATE Modern_Spanish_CI_AS NULL,
	[FechEntrada] [datetime] NULL,
	[FechFactura] [datetime] NULL,
	[TotalFOB] [numeric](8, 2) NULL,
	[Impuesto] [numeric](8, 2) NULL,
	[GIF] [numeric](8, 2) NULL,
	[TotalCompra] [numeric](8, 2) NULL,
	[FechRegistro] [datetime] NULL,
 CONSTRAINT [XPKENTRADA] PRIMARY KEY NONCLUSTERED 
(
	[Id_Entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HISTORIAL]    Script Date: 08/09/2016 3:39:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HISTORIAL](
	[Id_Historial] [int] NOT NULL,
	[Id_Articulo] [int] NULL,
	[PrecioAnterior] [numeric](6, 2) NULL,
	[PrecioActual] [numeric](6, 2) NOT NULL,
 CONSTRAINT [XPKHISTORIAL] PRIMARY KEY NONCLUSTERED 
(
	[Id_Historial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 08/09/2016 3:39:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[Id_Proveedor] [int] NOT NULL,
	[Razón_Social] [varchar](100) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[DireccionProv] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[TelfProv] [varchar](12) COLLATE Modern_Spanish_CI_AS NULL,
	[EmailProv] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechRegistro] [datetime] NULL,
 CONSTRAINT [XPKPROVEEDOR] PRIMARY KEY NONCLUSTERED 
(
	[Id_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SALIDA]    Script Date: 08/09/2016 3:39:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SALIDA](
	[Id_Salida] [int] NOT NULL,
	[NroSalida] [varchar](12) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[FechaSalida] [datetime] NOT NULL,
	[MontoTotal] [numeric](6, 2) NOT NULL,
	[FechRegistro] [datetime] NULL,
 CONSTRAINT [XPKSALIDA] PRIMARY KEY NONCLUSTERED 
(
	[Id_Salida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ARTÍCULO]  WITH CHECK ADD  CONSTRAINT [XFK_ARTICULO] FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[PROVEEDOR] ([Id_Proveedor])
GO
ALTER TABLE [dbo].[ARTÍCULO] CHECK CONSTRAINT [XFK_ARTICULO]
GO
ALTER TABLE [dbo].[DETALLE_ENTRADA]  WITH CHECK ADD  CONSTRAINT [XFK_D_ENTRADA] FOREIGN KEY([Id_Entrada])
REFERENCES [dbo].[ENTRADA] ([Id_Entrada])
GO
ALTER TABLE [dbo].[DETALLE_ENTRADA] CHECK CONSTRAINT [XFK_D_ENTRADA]
GO
ALTER TABLE [dbo].[DETALLE_ENTRADA]  WITH CHECK ADD  CONSTRAINT [XFK_D_ENTRADA_II] FOREIGN KEY([Id_Articulo])
REFERENCES [dbo].[ARTÍCULO] ([Id_Articulo])
GO
ALTER TABLE [dbo].[DETALLE_ENTRADA] CHECK CONSTRAINT [XFK_D_ENTRADA_II]
GO
ALTER TABLE [dbo].[DETALLE_SALIDA]  WITH CHECK ADD  CONSTRAINT [XFK_D_SALIDA] FOREIGN KEY([Id_Articulo])
REFERENCES [dbo].[ARTÍCULO] ([Id_Articulo])
GO
ALTER TABLE [dbo].[DETALLE_SALIDA] CHECK CONSTRAINT [XFK_D_SALIDA]
GO
ALTER TABLE [dbo].[DETALLE_SALIDA]  WITH CHECK ADD  CONSTRAINT [XFK_D_SALIDA_II] FOREIGN KEY([Id_Salida])
REFERENCES [dbo].[SALIDA] ([Id_Salida])
GO
ALTER TABLE [dbo].[DETALLE_SALIDA] CHECK CONSTRAINT [XFK_D_SALIDA_II]
GO
ALTER TABLE [dbo].[HISTORIAL]  WITH CHECK ADD  CONSTRAINT [XFK_HISTORIAL] FOREIGN KEY([Id_Articulo])
REFERENCES [dbo].[ARTÍCULO] ([Id_Articulo])
GO
ALTER TABLE [dbo].[HISTORIAL] CHECK CONSTRAINT [XFK_HISTORIAL]
GO
