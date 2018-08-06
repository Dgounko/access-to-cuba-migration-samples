USE [master]
GO
/****** Object:  Database [northwind_export_nospaces]    Script Date: 8/6/2018 4:07:45 PM ******/
CREATE DATABASE [northwind_export_nospaces]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'northwind_export_nospaces', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\northwind_export_nospaces.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'northwind_export_nospaces_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\northwind_export_nospaces_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [northwind_export_nospaces] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [northwind_export_nospaces].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [northwind_export_nospaces] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET ARITHABORT OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [northwind_export_nospaces] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [northwind_export_nospaces] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [northwind_export_nospaces] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET  ENABLE_BROKER 
GO
ALTER DATABASE [northwind_export_nospaces] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [northwind_export_nospaces] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [northwind_export_nospaces] SET  MULTI_USER 
GO
ALTER DATABASE [northwind_export_nospaces] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [northwind_export_nospaces] SET DB_CHAINING OFF 
GO
ALTER DATABASE [northwind_export_nospaces] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [northwind_export_nospaces] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [northwind_export_nospaces] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [northwind_export_nospaces] SET QUERY_STORE = OFF
GO
USE [northwind_export_nospaces]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [northwind_export_nospaces]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/6/2018 4:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[BusinessPhone] [nvarchar](25) NULL,
	[HomePhone] [nvarchar](25) NULL,
	[MobilePhone] [nvarchar](25) NULL,
	[FaxNumber] [nvarchar](25) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](50) NULL,
	[StateProvince] [nvarchar](50) NULL,
	[ZIPPostalCode] [nvarchar](15) NULL,
	[CountryRegion] [nvarchar](50) NULL,
	[WebPage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Attachments] [varchar](8000) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Customer$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/6/2018 4:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[BusinesPhone] [nvarchar](25) NULL,
	[HomePhone] [nvarchar](25) NULL,
	[MobilePhone] [nvarchar](25) NULL,
	[FaxNumber] [nvarchar](25) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](50) NULL,
	[StateProvince] [nvarchar](50) NULL,
	[ZIPPostalCode] [nvarchar](15) NULL,
	[CountryRegion] [nvarchar](50) NULL,
	[WebPage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Attachments] [varchar](8000) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Employee$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePrivilege]    Script Date: 8/6/2018 4:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePrivilege](
	[EmployeeID] [int] NOT NULL,
	[PrivilegeID] [int] NOT NULL,
 CONSTRAINT [EmployeePrivilege$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTransaction]    Script Date: 8/6/2018 4:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTransaction](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionType] [int] NOT NULL,
	[TransactionCreatedDate] [datetime2](0) NULL,
	[TransactionModifiedDate] [datetime2](0) NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[PurchaseOrderID] [int] NULL,
	[CustomerOrderID] [int] NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [InventoryTransaction$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTransactionType]    Script Date: 8/6/2018 4:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTransactionType](
	[ID] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [InventoryTransactionType$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 8/6/2018 4:07:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[InvoiceDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[Tax] [money] NULL,
	[Shipping] [money] NULL,
	[AmountDue] [money] NULL,
 CONSTRAINT [Invoice$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime2](0) NULL,
	[ShippedDate] [datetime2](0) NULL,
	[ShipperID] [int] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipAddress] [nvarchar](max) NULL,
	[ShipCity] [nvarchar](50) NULL,
	[ShipStateProvince] [nvarchar](50) NULL,
	[ShipZIPPostalCode] [nvarchar](50) NULL,
	[ShipCountryRegion] [nvarchar](50) NULL,
	[ShippingFee] [money] NULL,
	[Taxes] [money] NULL,
	[PaymentType] [nvarchar](50) NULL,
	[PaidDate] [datetime2](0) NULL,
	[Notes] [nvarchar](max) NULL,
	[TaxRate] [float] NULL,
	[TaxStatus] [int] NULL,
	[StatusID] [int] NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Order_$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [float] NOT NULL,
	[UnitPrice] [money] NULL,
	[Discount] [float] NOT NULL,
	[StatusID] [int] NULL,
	[DateAllocated] [datetime2](0) NULL,
	[PurchaseOrderID] [int] NULL,
	[InventoryID] [int] NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [OrderDetail$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetailsStatus]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetailsStatus](
	[StatusID] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [OrderDetailsStatus$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersStatus]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersStatus](
	[StatusID] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [OrdersStatus$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersTaxStatus]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersTaxStatus](
	[ID] [int] NOT NULL,
	[TaxStatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [OrdersTaxStatus$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Privilege_]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privilege_](
	[PrivilegeID] [int] IDENTITY(1,1) NOT NULL,
	[PrivilegeName] [nvarchar](50) NULL,
 CONSTRAINT [Privilege_$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[SupplierIDs] [varchar](8000) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](25) NULL,
	[ProductName] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[StandardCost] [money] NULL,
	[ListPrice] [money] NOT NULL,
	[ReorderLevel] [smallint] NULL,
	[TargetLevel] [int] NULL,
	[QuantityPerUnit] [nvarchar](50) NULL,
	[Discontinued] [bit] NOT NULL,
	[MinimumReorderQuantity] [smallint] NULL,
	[Category] [nvarchar](50) NULL,
	[Attachments] [varchar](8000) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Product$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[PurchaseOrdeID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[CreatedBy] [int] NULL,
	[SubmittedDate] [datetime2](0) NULL,
	[CreationDate] [datetime2](0) NULL,
	[StatusID] [int] NULL,
	[ExpectedDate] [datetime2](0) NULL,
	[ShippingFee] [money] NOT NULL,
	[Taxes] [money] NOT NULL,
	[PaymentDate] [datetime2](0) NULL,
	[PaymentAmount] [money] NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[Notes] [nvarchar](max) NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedDate] [datetime2](0) NULL,
	[SubmittedBy] [int] NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PurchaseOrder$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrdeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetail]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [float] NOT NULL,
	[UnitCost] [money] NOT NULL,
	[DateReceived] [datetime2](0) NULL,
	[PostedToInventory] [bit] NOT NULL,
	[InventoryID] [int] NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PurchaseOrderDetail$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderStatus]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderStatus](
	[StatusID] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PurchaseOrderStatus$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesReport]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesReport](
	[GroupBy] [nvarchar](50) NOT NULL,
	[Display] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[FilterRowSource] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [SalesReport$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[GroupBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipper](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[BusinessPhone] [nvarchar](25) NULL,
	[HomePhone] [nvarchar](25) NULL,
	[MobilePhone] [nvarchar](25) NULL,
	[FaxNumber] [nvarchar](25) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](50) NULL,
	[StateProvince] [nvarchar](50) NULL,
	[ZIPPostalCode] [nvarchar](15) NULL,
	[CountryRegion] [nvarchar](50) NULL,
	[WebPage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Attachments] [varchar](8000) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Shipper$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[String]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[String](
	[StringID] [int] IDENTITY(1,1) NOT NULL,
	[StringData] [nvarchar](255) NULL,
 CONSTRAINT [String$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[StringID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 8/6/2018 4:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[BusinessPhone] [nvarchar](25) NULL,
	[HomePhone] [nvarchar](25) NULL,
	[MobilePhone] [nvarchar](25) NULL,
	[FaxNumber] [nvarchar](25) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](50) NULL,
	[StateProvince] [nvarchar](50) NULL,
	[ZIPPostalCode] [nvarchar](15) NULL,
	[CountryRegion] [nvarchar](50) NULL,
	[WebPage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Attachments] [varchar](8000) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Supplier$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customer$City]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Customer$City] ON [dbo].[Customer]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customer$Company]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Customer$Company] ON [dbo].[Customer]
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customer$FirstName]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Customer$FirstName] ON [dbo].[Customer]
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customer$LastName]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Customer$LastName] ON [dbo].[Customer]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customer$PostalCode]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Customer$PostalCode] ON [dbo].[Customer]
(
	[ZIPPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customer$StateProvince]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Customer$StateProvince] ON [dbo].[Customer]
(
	[StateProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employee$City]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Employee$City] ON [dbo].[Employee]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employee$Company]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Employee$Company] ON [dbo].[Employee]
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employee$FirstName]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Employee$FirstName] ON [dbo].[Employee]
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employee$LastName]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Employee$LastName] ON [dbo].[Employee]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employee$PostalCode]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Employee$PostalCode] ON [dbo].[Employee]
(
	[ZIPPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employee$StateProvince]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Employee$StateProvince] ON [dbo].[Employee]
(
	[StateProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivilege$EmployeePriviligesforEmployees]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivilege$EmployeePriviligesforEmployees] ON [dbo].[EmployeePrivilege]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivilege$EmployeePriviligesLookup]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivilege$EmployeePriviligesLookup] ON [dbo].[EmployeePrivilege]
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivilege$New_EmployeePriviligesforEmployees]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivilege$New_EmployeePriviligesforEmployees] ON [dbo].[EmployeePrivilege]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivilege$New_EmployeePriviligesLookup]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivilege$New_EmployeePriviligesLookup] ON [dbo].[EmployeePrivilege]
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivilege$PrivilegeID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivilege$PrivilegeID] ON [dbo].[EmployeePrivilege]
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$CustomerOrderID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$CustomerOrderID] ON [dbo].[InventoryTransaction]
(
	[CustomerOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$New_OrdersOnInventoryTransactions]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$New_OrdersOnInventoryTransactions] ON [dbo].[InventoryTransaction]
(
	[CustomerOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$New_ProductOnInventoryTransaction]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$New_ProductOnInventoryTransaction] ON [dbo].[InventoryTransaction]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$New_PuchaseOrdersonInventoryTransactions]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$New_PuchaseOrdersonInventoryTransactions] ON [dbo].[InventoryTransaction]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$New_TransactionTypesOnInventoryTransactiosn]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$New_TransactionTypesOnInventoryTransactiosn] ON [dbo].[InventoryTransaction]
(
	[TransactionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$OrdersOnInventoryTransactions]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$OrdersOnInventoryTransactions] ON [dbo].[InventoryTransaction]
(
	[CustomerOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$ProductID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$ProductID] ON [dbo].[InventoryTransaction]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$ProductOnInventoryTransaction]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$ProductOnInventoryTransaction] ON [dbo].[InventoryTransaction]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$PuchaseOrdersonInventoryTransactions]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$PuchaseOrdersonInventoryTransactions] ON [dbo].[InventoryTransaction]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$PurchaseOrderID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$PurchaseOrderID] ON [dbo].[InventoryTransaction]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransaction$TransactionTypesOnInventoryTransactiosn]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransaction$TransactionTypesOnInventoryTransactiosn] ON [dbo].[InventoryTransaction]
(
	[TransactionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Invoice$New_OrderInvoice]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Invoice$New_OrderInvoice] ON [dbo].[Invoice]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Invoice$OrderID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Invoice$OrderID] ON [dbo].[Invoice]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Invoice$OrderInvoice]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Invoice$OrderInvoice] ON [dbo].[Invoice]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$CustomerID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$CustomerID] ON [dbo].[Order_]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$CustomerOnOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$CustomerOnOrders] ON [dbo].[Order_]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$EmployeeID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$EmployeeID] ON [dbo].[Order_]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$EmployeesOnOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$EmployeesOnOrders] ON [dbo].[Order_]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$ID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$ID] ON [dbo].[Order_]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$New_CustomerOnOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$New_CustomerOnOrders] ON [dbo].[Order_]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$New_EmployeesOnOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$New_EmployeesOnOrders] ON [dbo].[Order_]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$New_OrderStatus]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$New_OrderStatus] ON [dbo].[Order_]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$New_ShipperOnOrder]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$New_ShipperOnOrder] ON [dbo].[Order_]
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$New_TaxStatusOnOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$New_TaxStatusOnOrders] ON [dbo].[Order_]
(
	[TaxStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$OrderStatus]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$OrderStatus] ON [dbo].[Order_]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$ShipperID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$ShipperID] ON [dbo].[Order_]
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$ShipperOnOrder]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$ShipperOnOrder] ON [dbo].[Order_]
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$StatusID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$StatusID] ON [dbo].[Order_]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Order_$TaxStatusOnOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$TaxStatusOnOrders] ON [dbo].[Order_]
(
	[TaxStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Order_$ZIPPostalCode]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Order_$ZIPPostalCode] ON [dbo].[Order_]
(
	[ShipZIPPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$ID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$ID] ON [dbo].[OrderDetail]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$InventoryID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$InventoryID] ON [dbo].[OrderDetail]
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$New_OrderDetails]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$New_OrderDetails] ON [dbo].[OrderDetail]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$New_OrderStatusLookup]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$New_OrderStatusLookup] ON [dbo].[OrderDetail]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$New_ProductsOnOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$New_ProductsOnOrders] ON [dbo].[OrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$OrderDetails]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$OrderDetails] ON [dbo].[OrderDetail]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$OrderID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$OrderID] ON [dbo].[OrderDetail]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$OrderStatusLookup]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$OrderStatusLookup] ON [dbo].[OrderDetail]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$ProductID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$ProductID] ON [dbo].[OrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$ProductsOnOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$ProductsOnOrders] ON [dbo].[OrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$PurchaseOrderID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$PurchaseOrderID] ON [dbo].[OrderDetail]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetail$StatusID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetail$StatusID] ON [dbo].[OrderDetail]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Product$ProductCode]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Product$ProductCode] ON [dbo].[Product]
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrder$EmployeesOnPurchaseOrder]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrder$EmployeesOnPurchaseOrder] ON [dbo].[PurchaseOrder]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrder$ID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PurchaseOrder$ID] ON [dbo].[PurchaseOrder]
(
	[PurchaseOrdeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrder$New_EmployeesOnPurchaseOrder]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrder$New_EmployeesOnPurchaseOrder] ON [dbo].[PurchaseOrder]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrder$New_PurchaseOrderStatusLookup]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrder$New_PurchaseOrderStatusLookup] ON [dbo].[PurchaseOrder]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrder$New_SuppliersOnPurchaseOrder]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrder$New_SuppliersOnPurchaseOrder] ON [dbo].[PurchaseOrder]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrder$PurchaseOrderStatusLookup]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrder$PurchaseOrderStatusLookup] ON [dbo].[PurchaseOrder]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrder$StatusID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrder$StatusID] ON [dbo].[PurchaseOrder]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrder$SupplierID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrder$SupplierID] ON [dbo].[PurchaseOrder]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrder$SuppliersOnPurchaseOrder]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrder$SuppliersOnPurchaseOrder] ON [dbo].[PurchaseOrder]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$ID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$ID] ON [dbo].[PurchaseOrderDetail]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$InventoryID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$InventoryID] ON [dbo].[PurchaseOrderDetail]
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$InventoryTransactionsOnPurchaseOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$InventoryTransactionsOnPurchaseOrders] ON [dbo].[PurchaseOrderDetail]
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$New_InventoryTransactionsOnPurchaseOrders]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$New_InventoryTransactionsOnPurchaseOrders] ON [dbo].[PurchaseOrderDetail]
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$New_ProductOnPurchaseOrderDetails]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$New_ProductOnPurchaseOrderDetails] ON [dbo].[PurchaseOrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$New_PurchaseOrderDeatilsOnPurchaseOrder]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$New_PurchaseOrderDeatilsOnPurchaseOrder] ON [dbo].[PurchaseOrderDetail]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$OrderID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$OrderID] ON [dbo].[PurchaseOrderDetail]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$ProductID]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$ProductID] ON [dbo].[PurchaseOrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$ProductOnPurchaseOrderDetails]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$ProductOnPurchaseOrderDetails] ON [dbo].[PurchaseOrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetail$PurchaseOrderDeatilsOnPurchaseOrder]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetail$PurchaseOrderDeatilsOnPurchaseOrder] ON [dbo].[PurchaseOrderDetail]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shipper$City]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Shipper$City] ON [dbo].[Shipper]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shipper$Company]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Shipper$Company] ON [dbo].[Shipper]
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shipper$FirstName]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Shipper$FirstName] ON [dbo].[Shipper]
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shipper$LastName]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Shipper$LastName] ON [dbo].[Shipper]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shipper$PostalCode]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Shipper$PostalCode] ON [dbo].[Shipper]
(
	[ZIPPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shipper$StateProvince]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Shipper$StateProvince] ON [dbo].[Shipper]
(
	[StateProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Supplier$City]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Supplier$City] ON [dbo].[Supplier]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Supplier$Company]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Supplier$Company] ON [dbo].[Supplier]
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Supplier$FirstName]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Supplier$FirstName] ON [dbo].[Supplier]
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Supplier$LastName]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Supplier$LastName] ON [dbo].[Supplier]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Supplier$PostalCode]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Supplier$PostalCode] ON [dbo].[Supplier]
(
	[ZIPPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Supplier$StateProvince]    Script Date: 8/6/2018 4:07:46 PM ******/
CREATE NONCLUSTERED INDEX [Supplier$StateProvince] ON [dbo].[Supplier]
(
	[StateProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InventoryTransaction] ADD  DEFAULT (getdate()) FOR [TransactionCreatedDate]
GO
ALTER TABLE [dbo].[InventoryTransaction] ADD  DEFAULT (getdate()) FOR [TransactionModifiedDate]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT (getdate()) FOR [InvoiceDate]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0)) FOR [Tax]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0)) FOR [Shipping]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ((0)) FOR [AmountDue]
GO
ALTER TABLE [dbo].[Order_] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Order_] ADD  DEFAULT ((0)) FOR [ShippingFee]
GO
ALTER TABLE [dbo].[Order_] ADD  DEFAULT ((0)) FOR [Taxes]
GO
ALTER TABLE [dbo].[Order_] ADD  DEFAULT ((0)) FOR [TaxRate]
GO
ALTER TABLE [dbo].[Order_] ADD  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [StandardCost]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [ListPrice]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Discontinued]
GO
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT ((0)) FOR [ShippingFee]
GO
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT ((0)) FOR [Taxes]
GO
ALTER TABLE [dbo].[PurchaseOrder] ADD  DEFAULT ((0)) FOR [PaymentAmount]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  DEFAULT ((0)) FOR [PostedToInventory]
GO
ALTER TABLE [dbo].[SalesReport] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[EmployeePrivilege]  WITH NOCHECK ADD  CONSTRAINT [EmployeePrivilege$New_EmployeePriviligesforEmployees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[EmployeePrivilege] CHECK CONSTRAINT [EmployeePrivilege$New_EmployeePriviligesforEmployees]
GO
ALTER TABLE [dbo].[EmployeePrivilege]  WITH NOCHECK ADD  CONSTRAINT [EmployeePrivilege$New_EmployeePriviligesLookup] FOREIGN KEY([PrivilegeID])
REFERENCES [dbo].[Privilege_] ([PrivilegeID])
GO
ALTER TABLE [dbo].[EmployeePrivilege] CHECK CONSTRAINT [EmployeePrivilege$New_EmployeePriviligesLookup]
GO
ALTER TABLE [dbo].[InventoryTransaction]  WITH NOCHECK ADD  CONSTRAINT [InventoryTransaction$New_OrdersOnInventoryTransactions] FOREIGN KEY([CustomerOrderID])
REFERENCES [dbo].[Order_] ([OrderID])
GO
ALTER TABLE [dbo].[InventoryTransaction] CHECK CONSTRAINT [InventoryTransaction$New_OrdersOnInventoryTransactions]
GO
ALTER TABLE [dbo].[InventoryTransaction]  WITH NOCHECK ADD  CONSTRAINT [InventoryTransaction$New_ProductOnInventoryTransaction] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[InventoryTransaction] CHECK CONSTRAINT [InventoryTransaction$New_ProductOnInventoryTransaction]
GO
ALTER TABLE [dbo].[InventoryTransaction]  WITH NOCHECK ADD  CONSTRAINT [InventoryTransaction$New_PuchaseOrdersonInventoryTransactions] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrdeID])
GO
ALTER TABLE [dbo].[InventoryTransaction] CHECK CONSTRAINT [InventoryTransaction$New_PuchaseOrdersonInventoryTransactions]
GO
ALTER TABLE [dbo].[InventoryTransaction]  WITH NOCHECK ADD  CONSTRAINT [InventoryTransaction$New_TransactionTypesOnInventoryTransactiosn] FOREIGN KEY([TransactionType])
REFERENCES [dbo].[InventoryTransactionType] ([ID])
GO
ALTER TABLE [dbo].[InventoryTransaction] CHECK CONSTRAINT [InventoryTransaction$New_TransactionTypesOnInventoryTransactiosn]
GO
ALTER TABLE [dbo].[Invoice]  WITH NOCHECK ADD  CONSTRAINT [Invoice$New_OrderInvoice] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order_] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [Invoice$New_OrderInvoice]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [Order_$New_CustomerOnOrders] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [Order_$New_CustomerOnOrders]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [Order_$New_EmployeesOnOrders] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [Order_$New_EmployeesOnOrders]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [Order_$New_OrderStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[OrdersStatus] ([StatusID])
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [Order_$New_OrderStatus]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [Order_$New_ShipperOnOrder] FOREIGN KEY([ShipperID])
REFERENCES [dbo].[Shipper] ([ID])
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [Order_$New_ShipperOnOrder]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [Order_$New_TaxStatusOnOrders] FOREIGN KEY([TaxStatus])
REFERENCES [dbo].[OrdersTaxStatus] ([ID])
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [Order_$New_TaxStatusOnOrders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [OrderDetail$New_OrderDetails] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order_] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [OrderDetail$New_OrderDetails]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [OrderDetail$New_OrderStatusLookup] FOREIGN KEY([StatusID])
REFERENCES [dbo].[OrderDetailsStatus] ([StatusID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [OrderDetail$New_OrderStatusLookup]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [OrderDetail$New_ProductsOnOrders] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [OrderDetail$New_ProductsOnOrders]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrder$New_EmployeesOnPurchaseOrder] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [PurchaseOrder$New_EmployeesOnPurchaseOrder]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrder$New_PurchaseOrderStatusLookup] FOREIGN KEY([StatusID])
REFERENCES [dbo].[PurchaseOrderStatus] ([StatusID])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [PurchaseOrder$New_PurchaseOrderStatusLookup]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrder$New_SuppliersOnPurchaseOrder] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [PurchaseOrder$New_SuppliersOnPurchaseOrder]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrderDetail$New_InventoryTransactionsOnPurchaseOrders] FOREIGN KEY([InventoryID])
REFERENCES [dbo].[InventoryTransaction] ([TransactionID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [PurchaseOrderDetail$New_InventoryTransactionsOnPurchaseOrders]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrderDetail$New_ProductOnPurchaseOrderDetails] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [PurchaseOrderDetail$New_ProductOnPurchaseOrderDetails]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrderDetail$New_PurchaseOrderDeatilsOnPurchaseOrder] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrdeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [PurchaseOrderDetail$New_PurchaseOrderDeatilsOnPurchaseOrder]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$Address$disallow_zero_length] CHECK  ((len([Address])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$Address$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$BusinessPhone$disallow_zero_length] CHECK  ((len([BusinessPhone])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$BusinessPhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$City$disallow_zero_length] CHECK  ((len([City])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$City$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$Company$disallow_zero_length] CHECK  ((len([Company])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$Company$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$CountryRegion$disallow_zero_length] CHECK  ((len([CountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$CountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$EmailAddress$disallow_zero_length] CHECK  ((len([EmailAddress])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$EmailAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$FaxNumber$disallow_zero_length] CHECK  ((len([FaxNumber])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$FaxNumber$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$FirstName$disallow_zero_length] CHECK  ((len([FirstName])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$FirstName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$HomePhone$disallow_zero_length] CHECK  ((len([HomePhone])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$HomePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$JobTitle$disallow_zero_length] CHECK  ((len([JobTitle])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$JobTitle$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$LastName$disallow_zero_length] CHECK  ((len([LastName])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$LastName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$MobilePhone$disallow_zero_length] CHECK  ((len([MobilePhone])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$MobilePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$StateProvince$disallow_zero_length] CHECK  ((len([StateProvince])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$StateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$WebPage$disallow_zero_length] CHECK  ((len([WebPage])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$WebPage$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customer]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customer$ZIPPostalCode$disallow_zero_length] CHECK  ((len([ZIPPostalCode])>(0)))
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [SSMA_CC$Customer$ZIPPostalCode$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$Address$disallow_zero_length] CHECK  ((len([Address])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$Address$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$BusinesPhone$disallow_zero_length] CHECK  ((len([BusinesPhone])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$BusinesPhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$City$disallow_zero_length] CHECK  ((len([City])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$City$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$Company$disallow_zero_length] CHECK  ((len([Company])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$Company$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$CountryRegion$disallow_zero_length] CHECK  ((len([CountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$CountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$EmailAddress$disallow_zero_length] CHECK  ((len([EmailAddress])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$EmailAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$FaxNumber$disallow_zero_length] CHECK  ((len([FaxNumber])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$FaxNumber$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$FirstName$disallow_zero_length] CHECK  ((len([FirstName])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$FirstName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$HomePhone$disallow_zero_length] CHECK  ((len([HomePhone])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$HomePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$JobTitle$disallow_zero_length] CHECK  ((len([JobTitle])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$JobTitle$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$LastName$disallow_zero_length] CHECK  ((len([LastName])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$LastName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$MobilePhone$disallow_zero_length] CHECK  ((len([MobilePhone])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$MobilePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$StateProvince$disallow_zero_length] CHECK  ((len([StateProvince])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$StateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$WebPage$disallow_zero_length] CHECK  ((len([WebPage])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$WebPage$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employee]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employee$ZIPPostalCode$disallow_zero_length] CHECK  ((len([ZIPPostalCode])>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [SSMA_CC$Employee$ZIPPostalCode$disallow_zero_length]
GO
ALTER TABLE [dbo].[InventoryTransaction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InventoryTransaction$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
GO
ALTER TABLE [dbo].[InventoryTransaction] CHECK CONSTRAINT [SSMA_CC$InventoryTransaction$Comments$disallow_zero_length]
GO
ALTER TABLE [dbo].[InventoryTransaction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InventoryTransaction$TransactionCreatedDate$validation_rule] CHECK  (([TransactionCreatedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[InventoryTransaction] CHECK CONSTRAINT [SSMA_CC$InventoryTransaction$TransactionCreatedDate$validation_rule]
GO
ALTER TABLE [dbo].[InventoryTransaction]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InventoryTransaction$TransactionModifiedDate$validation_rule] CHECK  (([TransactionModifiedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[InventoryTransaction] CHECK CONSTRAINT [SSMA_CC$InventoryTransaction$TransactionModifiedDate$validation_rule]
GO
ALTER TABLE [dbo].[InventoryTransactionType]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InventoryTransactionType$TypeName$disallow_zero_length] CHECK  ((len([TypeName])>(0)))
GO
ALTER TABLE [dbo].[InventoryTransactionType] CHECK CONSTRAINT [SSMA_CC$InventoryTransactionType$TypeName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Invoice]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Invoice$DueDate$validation_rule] CHECK  (([DueDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [SSMA_CC$Invoice$DueDate$validation_rule]
GO
ALTER TABLE [dbo].[Invoice]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Invoice$InvoiceDate$validation_rule] CHECK  (([InvoiceDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [SSMA_CC$Invoice$InvoiceDate$validation_rule]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$OrderDate$validation_rule] CHECK  (([OrderDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$OrderDate$validation_rule]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$PaidDate$validation_rule] CHECK  (([PaidDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$PaidDate$validation_rule]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$PaymentType$disallow_zero_length] CHECK  ((len([PaymentType])>(0)))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$PaymentType$disallow_zero_length]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$ShipAddress$disallow_zero_length] CHECK  ((len([ShipAddress])>(0)))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$ShipAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$ShipCity$disallow_zero_length] CHECK  ((len([ShipCity])>(0)))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$ShipCity$disallow_zero_length]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$ShipCountryRegion$disallow_zero_length] CHECK  ((len([ShipCountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$ShipCountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$ShipName$disallow_zero_length] CHECK  ((len([ShipName])>(0)))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$ShipName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$ShippedDate$validation_rule] CHECK  (([ShippedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$ShippedDate$validation_rule]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$ShipStateProvince$disallow_zero_length] CHECK  ((len([ShipStateProvince])>(0)))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$ShipStateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Order_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Order_$ShipZIPPostalCode$disallow_zero_length] CHECK  ((len([ShipZIPPostalCode])>(0)))
GO
ALTER TABLE [dbo].[Order_] CHECK CONSTRAINT [SSMA_CC$Order_$ShipZIPPostalCode$disallow_zero_length]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrderDetail$DateAllocated$validation_rule] CHECK  (([DateAllocated]>='1/1/1900'))
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [SSMA_CC$OrderDetail$DateAllocated$validation_rule]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrderDetail$Discount$validation_rule] CHECK  (([Discount]<=(1) AND [Discount]>=(0)))
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [SSMA_CC$OrderDetail$Discount$validation_rule]
GO
ALTER TABLE [dbo].[OrderDetailsStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrderDetailsStatus$StatusName$disallow_zero_length] CHECK  ((len([StatusName])>(0)))
GO
ALTER TABLE [dbo].[OrderDetailsStatus] CHECK CONSTRAINT [SSMA_CC$OrderDetailsStatus$StatusName$disallow_zero_length]
GO
ALTER TABLE [dbo].[OrdersStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrdersStatus$StatusName$disallow_zero_length] CHECK  ((len([StatusName])>(0)))
GO
ALTER TABLE [dbo].[OrdersStatus] CHECK CONSTRAINT [SSMA_CC$OrdersStatus$StatusName$disallow_zero_length]
GO
ALTER TABLE [dbo].[OrdersTaxStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrdersTaxStatus$TaxStatusName$disallow_zero_length] CHECK  ((len([TaxStatusName])>(0)))
GO
ALTER TABLE [dbo].[OrdersTaxStatus] CHECK CONSTRAINT [SSMA_CC$OrdersTaxStatus$TaxStatusName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Privilege_]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Privilege_$PrivilegeName$disallow_zero_length] CHECK  ((len([PrivilegeName])>(0)))
GO
ALTER TABLE [dbo].[Privilege_] CHECK CONSTRAINT [SSMA_CC$Privilege_$PrivilegeName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Product$Category$disallow_zero_length] CHECK  ((len([Category])>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [SSMA_CC$Product$Category$disallow_zero_length]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Product$Description$disallow_zero_length] CHECK  ((len([Description])>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [SSMA_CC$Product$Description$disallow_zero_length]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Product$ProductCode$disallow_zero_length] CHECK  ((len([ProductCode])>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [SSMA_CC$Product$ProductCode$disallow_zero_length]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Product$ProductName$disallow_zero_length] CHECK  ((len([ProductName])>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [SSMA_CC$Product$ProductName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Product]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Product$QuantityPerUnit$disallow_zero_length] CHECK  ((len([QuantityPerUnit])>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [SSMA_CC$Product$QuantityPerUnit$disallow_zero_length]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrder$ApprovedDate$validation_rule] CHECK  (([ApprovedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [SSMA_CC$PurchaseOrder$ApprovedDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrder$CreationDate$validation_rule] CHECK  (([CreationDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [SSMA_CC$PurchaseOrder$CreationDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrder$ExpectedDate$validation_rule] CHECK  (([ExpectedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [SSMA_CC$PurchaseOrder$ExpectedDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrder$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [SSMA_CC$PurchaseOrder$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrder$PaymentDate$validation_rule] CHECK  (([PaymentDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [SSMA_CC$PurchaseOrder$PaymentDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrder$PaymentMethod$disallow_zero_length] CHECK  ((len([PaymentMethod])>(0)))
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [SSMA_CC$PurchaseOrder$PaymentMethod$disallow_zero_length]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrder$SubmittedDate$validation_rule] CHECK  (([SubmittedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [SSMA_CC$PurchaseOrder$SubmittedDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrderDetail$DateReceived$validation_rule] CHECK  (([DateReceived]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [SSMA_CC$PurchaseOrderDetail$DateReceived$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrderStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrderStatus$Status$disallow_zero_length] CHECK  ((len([Status])>(0)))
GO
ALTER TABLE [dbo].[PurchaseOrderStatus] CHECK CONSTRAINT [SSMA_CC$PurchaseOrderStatus$Status$disallow_zero_length]
GO
ALTER TABLE [dbo].[SalesReport]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$SalesReport$Display$disallow_zero_length] CHECK  ((len([Display])>(0)))
GO
ALTER TABLE [dbo].[SalesReport] CHECK CONSTRAINT [SSMA_CC$SalesReport$Display$disallow_zero_length]
GO
ALTER TABLE [dbo].[SalesReport]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$SalesReport$FilterRowSource$disallow_zero_length] CHECK  ((len([FilterRowSource])>(0)))
GO
ALTER TABLE [dbo].[SalesReport] CHECK CONSTRAINT [SSMA_CC$SalesReport$FilterRowSource$disallow_zero_length]
GO
ALTER TABLE [dbo].[SalesReport]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$SalesReport$GroupBy$disallow_zero_length] CHECK  ((len([GroupBy])>(0)))
GO
ALTER TABLE [dbo].[SalesReport] CHECK CONSTRAINT [SSMA_CC$SalesReport$GroupBy$disallow_zero_length]
GO
ALTER TABLE [dbo].[SalesReport]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$SalesReport$Title$disallow_zero_length] CHECK  ((len([Title])>(0)))
GO
ALTER TABLE [dbo].[SalesReport] CHECK CONSTRAINT [SSMA_CC$SalesReport$Title$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$Address$disallow_zero_length] CHECK  ((len([Address])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$Address$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$BusinessPhone$disallow_zero_length] CHECK  ((len([BusinessPhone])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$BusinessPhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$City$disallow_zero_length] CHECK  ((len([City])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$City$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$Company$disallow_zero_length] CHECK  ((len([Company])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$Company$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$CountryRegion$disallow_zero_length] CHECK  ((len([CountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$CountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$EmailAddress$disallow_zero_length] CHECK  ((len([EmailAddress])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$EmailAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$FaxNumber$disallow_zero_length] CHECK  ((len([FaxNumber])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$FaxNumber$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$FirstName$disallow_zero_length] CHECK  ((len([FirstName])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$FirstName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$HomePhone$disallow_zero_length] CHECK  ((len([HomePhone])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$HomePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$JobTitle$disallow_zero_length] CHECK  ((len([JobTitle])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$JobTitle$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$LastName$disallow_zero_length] CHECK  ((len([LastName])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$LastName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$MobilePhone$disallow_zero_length] CHECK  ((len([MobilePhone])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$MobilePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$StateProvince$disallow_zero_length] CHECK  ((len([StateProvince])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$StateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$WebPage$disallow_zero_length] CHECK  ((len([WebPage])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$WebPage$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shipper]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shipper$ZIPPostalCode$disallow_zero_length] CHECK  ((len([ZIPPostalCode])>(0)))
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [SSMA_CC$Shipper$ZIPPostalCode$disallow_zero_length]
GO
ALTER TABLE [dbo].[String]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$String$StringData$disallow_zero_length] CHECK  ((len([StringData])>(0)))
GO
ALTER TABLE [dbo].[String] CHECK CONSTRAINT [SSMA_CC$String$StringData$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$Address$disallow_zero_length] CHECK  ((len([Address])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$Address$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$BusinessPhone$disallow_zero_length] CHECK  ((len([BusinessPhone])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$BusinessPhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$City$disallow_zero_length] CHECK  ((len([City])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$City$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$Company$disallow_zero_length] CHECK  ((len([Company])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$Company$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$CountryRegion$disallow_zero_length] CHECK  ((len([CountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$CountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$EmailAddress$disallow_zero_length] CHECK  ((len([EmailAddress])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$EmailAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$FaxNumber$disallow_zero_length] CHECK  ((len([FaxNumber])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$FaxNumber$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$FirstName$disallow_zero_length] CHECK  ((len([FirstName])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$FirstName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$HomePhone$disallow_zero_length] CHECK  ((len([HomePhone])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$HomePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$JobTitle$disallow_zero_length] CHECK  ((len([JobTitle])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$JobTitle$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$LastName$disallow_zero_length] CHECK  ((len([LastName])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$LastName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$MobilePhone$disallow_zero_length] CHECK  ((len([MobilePhone])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$MobilePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$StateProvince$disallow_zero_length] CHECK  ((len([StateProvince])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$StateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$WebPage$disallow_zero_length] CHECK  ((len([WebPage])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$WebPage$disallow_zero_length]
GO
ALTER TABLE [dbo].[Supplier]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Supplier$ZIPPostalCode$disallow_zero_length] CHECK  ((len([ZIPPostalCode])>(0)))
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [SSMA_CC$Supplier$ZIPPostalCode$disallow_zero_length]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[EmailAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[JobTitle]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[BusinessPhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'BusinessPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[HomePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'HomePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[MobilePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[FaxNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'FaxNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[ZIPPostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'ZIPPostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[CountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[WebPage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'WebPage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'CONSTRAINT',@level2name=N'Customer$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'INDEX',@level2name=N'Customer$City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'INDEX',@level2name=N'Customer$Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'INDEX',@level2name=N'Customer$FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'INDEX',@level2name=N'Customer$LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[PostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'INDEX',@level2name=N'Customer$PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'INDEX',@level2name=N'Customer$StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Customer]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[EmailAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[JobTitle]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[BusinesPhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'BusinesPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[HomePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'HomePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[MobilePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[FaxNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'FaxNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[ZIPPostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'ZIPPostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[CountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'CountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[WebPage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'WebPage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'CONSTRAINT',@level2name=N'Employee$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'INDEX',@level2name=N'Employee$City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'INDEX',@level2name=N'Employee$Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'INDEX',@level2name=N'Employee$FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'INDEX',@level2name=N'Employee$LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[PostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'INDEX',@level2name=N'Employee$PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee', @level2type=N'INDEX',@level2name=N'Employee$StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Employee]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[EmployeeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'COLUMN',@level2name=N'EmployeeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[PrivilegeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'COLUMN',@level2name=N'PrivilegeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'CONSTRAINT',@level2name=N'EmployeePrivilege$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[EmployeePriviligesforEmployees]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'INDEX',@level2name=N'EmployeePrivilege$EmployeePriviligesforEmployees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[EmployeePriviligesLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'INDEX',@level2name=N'EmployeePrivilege$EmployeePriviligesLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[New_EmployeePriviligesforEmployees]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'INDEX',@level2name=N'EmployeePrivilege$New_EmployeePriviligesforEmployees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[New_EmployeePriviligesLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'INDEX',@level2name=N'EmployeePrivilege$New_EmployeePriviligesLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[PrivilegeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'INDEX',@level2name=N'EmployeePrivilege$PrivilegeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[New_EmployeePriviligesforEmployees]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'CONSTRAINT',@level2name=N'EmployeePrivilege$New_EmployeePriviligesforEmployees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[EmployeePrivilege].[New_EmployeePriviligesLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivilege', @level2type=N'CONSTRAINT',@level2name=N'EmployeePrivilege$New_EmployeePriviligesLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[TransactionID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'COLUMN',@level2name=N'TransactionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[TransactionType]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'COLUMN',@level2name=N'TransactionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[TransactionCreatedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'COLUMN',@level2name=N'TransactionCreatedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[TransactionModifiedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'COLUMN',@level2name=N'TransactionModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[Quantity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[PurchaseOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'COLUMN',@level2name=N'PurchaseOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[CustomerOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'COLUMN',@level2name=N'CustomerOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'COLUMN',@level2name=N'Comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransaction$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[CustomerOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$CustomerOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[New_OrdersOnInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$New_OrdersOnInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[New_ProductOnInventoryTransaction]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$New_ProductOnInventoryTransaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[New_PuchaseOrdersonInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$New_PuchaseOrdersonInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[New_TransactionTypesOnInventoryTransactiosn]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$New_TransactionTypesOnInventoryTransactiosn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[OrdersOnInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$OrdersOnInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[ProductOnInventoryTransaction]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$ProductOnInventoryTransaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[PuchaseOrdersonInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$PuchaseOrdersonInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[PurchaseOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$PurchaseOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[TransactionTypesOnInventoryTransactiosn]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'INDEX',@level2name=N'InventoryTransaction$TransactionTypesOnInventoryTransactiosn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[New_OrdersOnInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransaction$New_OrdersOnInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[New_ProductOnInventoryTransaction]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransaction$New_ProductOnInventoryTransaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[New_PuchaseOrdersonInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransaction$New_PuchaseOrdersonInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransaction].[New_TransactionTypesOnInventoryTransactiosn]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransaction', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransaction$New_TransactionTypesOnInventoryTransactiosn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransactionType].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactionType', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransactionType].[TypeName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactionType', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransactionType].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactionType', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransactionType$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[InventoryTransactionType]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[InvoiceID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'InvoiceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[InvoiceDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'InvoiceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[Tax]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[Shipping]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'Shipping'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[AmountDue]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'COLUMN',@level2name=N'AmountDue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'CONSTRAINT',@level2name=N'Invoice$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[New_OrderInvoice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'INDEX',@level2name=N'Invoice$New_OrderInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'INDEX',@level2name=N'Invoice$OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[OrderInvoice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'INDEX',@level2name=N'Invoice$OrderInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Invoice].[New_OrderInvoice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoice', @level2type=N'CONSTRAINT',@level2name=N'Invoice$New_OrderInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[EmployeeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'EmployeeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[CustomerID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[OrderDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShippedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShipperID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'ShipperID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShipName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShipAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShipCity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShipStateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'ShipStateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShipZIPPostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'ShipZIPPostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShipCountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'ShipCountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShippingFee]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'ShippingFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[Taxes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'Taxes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[PaymentType]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'PaymentType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[PaidDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'PaidDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[TaxRate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'TaxRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[TaxStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'TaxStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'CONSTRAINT',@level2name=N'Order_$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[CustomerID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$CustomerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[CustomerOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$CustomerOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[EmployeeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$EmployeeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[EmployeesOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$EmployeesOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_CustomerOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$New_CustomerOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_EmployeesOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$New_EmployeesOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_OrderStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$New_OrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_ShipperOnOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$New_ShipperOnOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_TaxStatusOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$New_TaxStatusOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[OrderStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$OrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShipperID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$ShipperID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ShipperOnOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$ShipperOnOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[TaxStatusOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$TaxStatusOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[ZIPPostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'INDEX',@level2name=N'Order_$ZIPPostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_CustomerOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'CONSTRAINT',@level2name=N'Order_$New_CustomerOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_EmployeesOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'CONSTRAINT',@level2name=N'Order_$New_EmployeesOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_OrderStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'CONSTRAINT',@level2name=N'Order_$New_OrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_ShipperOnOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'CONSTRAINT',@level2name=N'Order_$New_ShipperOnOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Order_].[New_TaxStatusOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Order_', @level2type=N'CONSTRAINT',@level2name=N'Order_$New_TaxStatusOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[Quantity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[UnitPrice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[Discount]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[DateAllocated]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'DateAllocated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[PurchaseOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'PurchaseOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[InventoryID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'COLUMN',@level2name=N'InventoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'CONSTRAINT',@level2name=N'OrderDetail$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[InventoryID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$InventoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[New_OrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$New_OrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[New_OrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$New_OrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[New_ProductsOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$New_ProductsOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[OrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$OrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[OrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$OrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[ProductsOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$ProductsOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[PurchaseOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$PurchaseOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'INDEX',@level2name=N'OrderDetail$StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[New_OrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'CONSTRAINT',@level2name=N'OrderDetail$New_OrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[New_OrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'CONSTRAINT',@level2name=N'OrderDetail$New_OrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetail].[New_ProductsOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetail', @level2type=N'CONSTRAINT',@level2name=N'OrderDetail$New_ProductsOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetailsStatus].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetailsStatus', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetailsStatus].[StatusName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetailsStatus', @level2type=N'COLUMN',@level2name=N'StatusName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetailsStatus].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetailsStatus', @level2type=N'CONSTRAINT',@level2name=N'OrderDetailsStatus$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrderDetailsStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetailsStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrdersStatus].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersStatus', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrdersStatus].[StatusName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersStatus', @level2type=N'COLUMN',@level2name=N'StatusName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrdersStatus].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersStatus', @level2type=N'CONSTRAINT',@level2name=N'OrdersStatus$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrdersStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrdersTaxStatus].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersTaxStatus', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrdersTaxStatus].[TaxStatusName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersTaxStatus', @level2type=N'COLUMN',@level2name=N'TaxStatusName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrdersTaxStatus].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersTaxStatus', @level2type=N'CONSTRAINT',@level2name=N'OrdersTaxStatus$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[OrdersTaxStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersTaxStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Privilege_].[PrivilegeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege_', @level2type=N'COLUMN',@level2name=N'PrivilegeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Privilege_].[PrivilegeName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege_', @level2type=N'COLUMN',@level2name=N'PrivilegeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Privilege_].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege_', @level2type=N'CONSTRAINT',@level2name=N'Privilege_$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Privilege_]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilege_'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[SupplierIDs]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'SupplierIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[ProductCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProductCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[ProductName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[Description]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[StandardCost]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'StandardCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[ListPrice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ListPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inventory quantity that triggers reordering' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ReorderLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[ReorderLevel]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ReorderLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Desired Inventory level after a purchase reorder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'TargetLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[TargetLevel]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'TargetLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[QuantityPerUnit]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'QuantityPerUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[Discontinued]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Discontinued'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[MinimumReorderQuantity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'MinimumReorderQuantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[Category]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'CONSTRAINT',@level2name=N'Product$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product].[ProductCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'INDEX',@level2name=N'Product$ProductCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Product]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[PurchaseOrdeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'PurchaseOrdeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[SupplierID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[CreatedBy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[SubmittedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'SubmittedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[CreationDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'CreationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[ExpectedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'ExpectedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[ShippingFee]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'ShippingFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[Taxes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'Taxes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[PaymentDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[PaymentAmount]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'PaymentAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[PaymentMethod]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'PaymentMethod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[ApprovedBy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'ApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[ApprovedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'ApprovedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[SubmittedBy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'COLUMN',@level2name=N'SubmittedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrder$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[EmployeesOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'INDEX',@level2name=N'PurchaseOrder$EmployeesOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'INDEX',@level2name=N'PurchaseOrder$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[New_EmployeesOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'INDEX',@level2name=N'PurchaseOrder$New_EmployeesOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[New_PurchaseOrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'INDEX',@level2name=N'PurchaseOrder$New_PurchaseOrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[New_SuppliersOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'INDEX',@level2name=N'PurchaseOrder$New_SuppliersOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[PurchaseOrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'INDEX',@level2name=N'PurchaseOrder$PurchaseOrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'INDEX',@level2name=N'PurchaseOrder$StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[SupplierID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'INDEX',@level2name=N'PurchaseOrder$SupplierID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[SuppliersOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'INDEX',@level2name=N'PurchaseOrder$SuppliersOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[New_EmployeesOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrder$New_EmployeesOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[New_PurchaseOrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrder$New_PurchaseOrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrder].[New_SuppliersOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrder', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrder$New_SuppliersOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[PurchaseOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'COLUMN',@level2name=N'PurchaseOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[Quantity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[UnitCost]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'COLUMN',@level2name=N'UnitCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[DateReceived]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'COLUMN',@level2name=N'DateReceived'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[PostedToInventory]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'COLUMN',@level2name=N'PostedToInventory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[InventoryID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'COLUMN',@level2name=N'InventoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderDetail$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[InventoryID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$InventoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[InventoryTransactionsOnPurchaseOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$InventoryTransactionsOnPurchaseOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[New_InventoryTransactionsOnPurchaseOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$New_InventoryTransactionsOnPurchaseOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[New_ProductOnPurchaseOrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$New_ProductOnPurchaseOrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[New_PurchaseOrderDeatilsOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$New_PurchaseOrderDeatilsOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[ProductOnPurchaseOrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$ProductOnPurchaseOrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[PurchaseOrderDeatilsOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetail$PurchaseOrderDeatilsOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[New_InventoryTransactionsOnPurchaseOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderDetail$New_InventoryTransactionsOnPurchaseOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[New_ProductOnPurchaseOrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderDetail$New_ProductOnPurchaseOrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderDetail].[New_PurchaseOrderDeatilsOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetail', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderDetail$New_PurchaseOrderDeatilsOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderStatus].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderStatus', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderStatus].[Status]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderStatus', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderStatus].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderStatus', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderStatus$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[PurchaseOrderStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[SalesReport].[GroupBy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReport', @level2type=N'COLUMN',@level2name=N'GroupBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[SalesReport].[Display]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReport', @level2type=N'COLUMN',@level2name=N'Display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[SalesReport].[Title]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReport', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[SalesReport].[FilterRowSource]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReport', @level2type=N'COLUMN',@level2name=N'FilterRowSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[SalesReport].[IsDefault]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReport', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[SalesReport].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReport', @level2type=N'CONSTRAINT',@level2name=N'SalesReport$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[SalesReport]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[EmailAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[JobTitle]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[BusinessPhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'BusinessPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[HomePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'HomePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[MobilePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[FaxNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'FaxNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[ZIPPostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'ZIPPostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[CountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'CountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[WebPage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'WebPage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'CONSTRAINT',@level2name=N'Shipper$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'INDEX',@level2name=N'Shipper$City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'INDEX',@level2name=N'Shipper$Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'INDEX',@level2name=N'Shipper$FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'INDEX',@level2name=N'Shipper$LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[PostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'INDEX',@level2name=N'Shipper$PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper', @level2type=N'INDEX',@level2name=N'Shipper$StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Shipper]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shipper'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[String].[StringID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'String', @level2type=N'COLUMN',@level2name=N'StringID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[String].[StringData]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'String', @level2type=N'COLUMN',@level2name=N'StringData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[String].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'String', @level2type=N'CONSTRAINT',@level2name=N'String$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[String]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'String'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[EmailAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[JobTitle]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[BusinessPhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'BusinessPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[HomePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'HomePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[MobilePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[FaxNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'FaxNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[ZIPPostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'ZIPPostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[CountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'CountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[WebPage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'WebPage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'CONSTRAINT',@level2name=N'Supplier$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'INDEX',@level2name=N'Supplier$City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'INDEX',@level2name=N'Supplier$Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'INDEX',@level2name=N'Supplier$FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'INDEX',@level2name=N'Supplier$LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[PostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'INDEX',@level2name=N'Supplier$PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier', @level2type=N'INDEX',@level2name=N'Supplier$StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind_nsp2.[Supplier]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Supplier'
GO
USE [master]
GO
ALTER DATABASE [northwind_export_nospaces] SET  READ_WRITE 
GO
