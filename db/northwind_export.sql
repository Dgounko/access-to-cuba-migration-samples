USE [master]
GO
/****** Object:  Database [northwind_export]    Script Date: 8/6/2018 4:06:29 PM ******/
CREATE DATABASE [northwind_export]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'northwind_export', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\northwind_export.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'northwind_export_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\northwind_export_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [northwind_export] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [northwind_export].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [northwind_export] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [northwind_export] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [northwind_export] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [northwind_export] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [northwind_export] SET ARITHABORT OFF 
GO
ALTER DATABASE [northwind_export] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [northwind_export] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [northwind_export] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [northwind_export] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [northwind_export] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [northwind_export] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [northwind_export] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [northwind_export] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [northwind_export] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [northwind_export] SET  ENABLE_BROKER 
GO
ALTER DATABASE [northwind_export] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [northwind_export] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [northwind_export] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [northwind_export] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [northwind_export] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [northwind_export] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [northwind_export] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [northwind_export] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [northwind_export] SET  MULTI_USER 
GO
ALTER DATABASE [northwind_export] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [northwind_export] SET DB_CHAINING OFF 
GO
ALTER DATABASE [northwind_export] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [northwind_export] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [northwind_export] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [northwind_export] SET QUERY_STORE = OFF
GO
USE [northwind_export]
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
USE [northwind_export]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 8/6/2018 4:06:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
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
	[ZIPPostal Code] [nvarchar](15) NULL,
	[CountryRegion] [nvarchar](50) NULL,
	[WebPage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Attachments] [varchar](8000) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Customers$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePrivileges]    Script Date: 8/6/2018 4:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePrivileges](
	[EmployeeID] [int] NOT NULL,
	[PrivilegeID] [int] NOT NULL,
 CONSTRAINT [EmployeePrivileges$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 8/6/2018 4:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[Busines Phone] [nvarchar](25) NULL,
	[HomePhone] [nvarchar](25) NULL,
	[MobilePhone] [nvarchar](25) NULL,
	[FaxNumber] [nvarchar](25) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](50) NULL,
	[StateProvince] [nvarchar](50) NULL,
	[ZIPPostal Code] [nvarchar](15) NULL,
	[CountryRegion] [nvarchar](50) NULL,
	[WebPage] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Attachments] [varchar](8000) NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [Employees$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTransactions]    Script Date: 8/6/2018 4:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTransactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionType] [int] NOT NULL,
	[TransactionCreatedDate] [datetime2](0) NULL,
	[TransactionModifiedDate] [datetime2](0) NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[PurchaseOrderID] [int] NULL,
	[CustomerOrderID] [int] NULL,
	[Comments] [nvarchar](255) NULL,
 CONSTRAINT [InventoryTransactions$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryTransactionTypes]    Script Date: 8/6/2018 4:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryTransactionTypes](
	[ID] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [InventoryTransactionTypes$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 8/6/2018 4:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[InvoiceDate] [datetime2](0) NULL,
	[DueDate] [datetime2](0) NULL,
	[Tax] [money] NULL,
	[Shipping] [money] NULL,
	[AmountDue] [money] NULL,
 CONSTRAINT [Invoices$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/6/2018 4:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
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
 CONSTRAINT [OrderDetails$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetailsStatus]    Script Date: 8/6/2018 4:06:30 PM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 8/6/2018 4:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
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
 CONSTRAINT [Orders$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersStatus]    Script Date: 8/6/2018 4:06:30 PM ******/
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
/****** Object:  Table [dbo].[OrdersTaxStatus]    Script Date: 8/6/2018 4:06:30 PM ******/
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
/****** Object:  Table [dbo].[Privilegesnw]    Script Date: 8/6/2018 4:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privilegesnw](
	[PrivilegeID] [int] IDENTITY(1,1) NOT NULL,
	[PrivilegeName] [nvarchar](50) NULL,
 CONSTRAINT [Privilegesnw$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/6/2018 4:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
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
 CONSTRAINT [Products$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetails]    Script Date: 8/6/2018 4:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [float] NOT NULL,
	[UnitCost] [money] NOT NULL,
	[DateReceived] [datetime2](0) NULL,
	[PostedToInventory] [bit] NOT NULL,
	[InventoryID] [int] NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PurchaseOrderDetails$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrders](
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
 CONSTRAINT [PurchaseOrders$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrdeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderStatus]    Script Date: 8/6/2018 4:06:31 PM ******/
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
/****** Object:  Table [dbo].[SalesReports]    Script Date: 8/6/2018 4:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesReports](
	[GroupBy] [nvarchar](50) NOT NULL,
	[Display] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[FilterRowSource] [nvarchar](max) NULL,
	[Default] [bit] NOT NULL,
	[SSMA_TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [SalesReports$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[GroupBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 8/6/2018 4:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
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
 CONSTRAINT [Shippers$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Strings]    Script Date: 8/6/2018 4:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Strings](
	[StringID] [int] IDENTITY(1,1) NOT NULL,
	[StringData] [nvarchar](255) NULL,
 CONSTRAINT [Strings$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[StringID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 8/6/2018 4:06:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
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
 CONSTRAINT [Suppliers$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customers$City]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Customers$City] ON [dbo].[Customers]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customers$Company]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Customers$Company] ON [dbo].[Customers]
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customers$First Name]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Customers$First Name] ON [dbo].[Customers]
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customers$Last Name]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Customers$Last Name] ON [dbo].[Customers]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customers$Postal Code]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Customers$Postal Code] ON [dbo].[Customers]
(
	[ZIPPostal Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Customers$State/Province]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Customers$State/Province] ON [dbo].[Customers]
(
	[StateProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivileges$EmployeePriviligesforEmployees]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivileges$EmployeePriviligesforEmployees] ON [dbo].[EmployeePrivileges]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivileges$EmployeePriviligesLookup]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivileges$EmployeePriviligesLookup] ON [dbo].[EmployeePrivileges]
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivileges$New_EmployeePriviligesforEmployees]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivileges$New_EmployeePriviligesforEmployees] ON [dbo].[EmployeePrivileges]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivileges$New_EmployeePriviligesLookup]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivileges$New_EmployeePriviligesLookup] ON [dbo].[EmployeePrivileges]
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeePrivileges$Privilege ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [EmployeePrivileges$Privilege ID] ON [dbo].[EmployeePrivileges]
(
	[PrivilegeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employees$City]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Employees$City] ON [dbo].[Employees]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employees$Company]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Employees$Company] ON [dbo].[Employees]
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employees$First Name]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Employees$First Name] ON [dbo].[Employees]
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employees$Last Name]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Employees$Last Name] ON [dbo].[Employees]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employees$Postal Code]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Employees$Postal Code] ON [dbo].[Employees]
(
	[ZIPPostal Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Employees$State/Province]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Employees$State/Province] ON [dbo].[Employees]
(
	[StateProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$Customer Order ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$Customer Order ID] ON [dbo].[InventoryTransactions]
(
	[CustomerOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$New_OrdersOnInventoryTransactions]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$New_OrdersOnInventoryTransactions] ON [dbo].[InventoryTransactions]
(
	[CustomerOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$New_ProductOnInventoryTransaction]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$New_ProductOnInventoryTransaction] ON [dbo].[InventoryTransactions]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$New_PuchaseOrdersonInventoryTransactions]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$New_PuchaseOrdersonInventoryTransactions] ON [dbo].[InventoryTransactions]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$New_TransactionTypesOnInventoryTransactiosn]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$New_TransactionTypesOnInventoryTransactiosn] ON [dbo].[InventoryTransactions]
(
	[TransactionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$OrdersOnInventoryTransactions]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$OrdersOnInventoryTransactions] ON [dbo].[InventoryTransactions]
(
	[CustomerOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$Product ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$Product ID] ON [dbo].[InventoryTransactions]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$ProductOnInventoryTransaction]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$ProductOnInventoryTransaction] ON [dbo].[InventoryTransactions]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$PuchaseOrdersonInventoryTransactions]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$PuchaseOrdersonInventoryTransactions] ON [dbo].[InventoryTransactions]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$Purchase Order ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$Purchase Order ID] ON [dbo].[InventoryTransactions]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [InventoryTransactions$TransactionTypesOnInventoryTransactiosn]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [InventoryTransactions$TransactionTypesOnInventoryTransactiosn] ON [dbo].[InventoryTransactions]
(
	[TransactionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Invoices$New_OrderInvoice]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Invoices$New_OrderInvoice] ON [dbo].[Invoices]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Invoices$Order ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Invoices$Order ID] ON [dbo].[Invoices]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Invoices$OrderInvoice]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Invoices$OrderInvoice] ON [dbo].[Invoices]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$ID] ON [dbo].[OrderDetails]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$Inventory ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$Inventory ID] ON [dbo].[OrderDetails]
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$New_OrderDetails]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$New_OrderDetails] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$New_OrderStatusLookup]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$New_OrderStatusLookup] ON [dbo].[OrderDetails]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$New_ProductsOnOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$New_ProductsOnOrders] ON [dbo].[OrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$OrderDetails]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$OrderDetails] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$OrderID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$OrderID] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$OrderStatusLookup]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$OrderStatusLookup] ON [dbo].[OrderDetails]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$ProductID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$ProductID] ON [dbo].[OrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$ProductsOnOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$ProductsOnOrders] ON [dbo].[OrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$Purchase Order ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$Purchase Order ID] ON [dbo].[OrderDetails]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDetails$Status ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [OrderDetails$Status ID] ON [dbo].[OrderDetails]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$CustomerID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$CustomerID] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$CustomerOnOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$CustomerOnOrders] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$EmployeeID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$EmployeeID] ON [dbo].[Orders]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$EmployeesOnOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$EmployeesOnOrders] ON [dbo].[Orders]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$ID] ON [dbo].[Orders]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$New_CustomerOnOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$New_CustomerOnOrders] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$New_EmployeesOnOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$New_EmployeesOnOrders] ON [dbo].[Orders]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$New_OrderStatus]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$New_OrderStatus] ON [dbo].[Orders]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$New_ShipperOnOrder]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$New_ShipperOnOrder] ON [dbo].[Orders]
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$New_TaxStatusOnOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$New_TaxStatusOnOrders] ON [dbo].[Orders]
(
	[TaxStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$OrderStatus]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$OrderStatus] ON [dbo].[Orders]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$ShipperID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$ShipperID] ON [dbo].[Orders]
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$ShipperOnOrder]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$ShipperOnOrder] ON [dbo].[Orders]
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$Status ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$Status ID] ON [dbo].[Orders]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Orders$TaxStatusOnOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$TaxStatusOnOrders] ON [dbo].[Orders]
(
	[TaxStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Orders$ZIP/Postal Code]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Orders$ZIP/Postal Code] ON [dbo].[Orders]
(
	[ShipZIPPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Products$Product Code]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Products$Product Code] ON [dbo].[Products]
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$ID] ON [dbo].[PurchaseOrderDetails]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$Inventory ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$Inventory ID] ON [dbo].[PurchaseOrderDetails]
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$InventoryTransactionsOnPurchaseOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$InventoryTransactionsOnPurchaseOrders] ON [dbo].[PurchaseOrderDetails]
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$New_InventoryTransactionsOnPurchaseOrders]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$New_InventoryTransactionsOnPurchaseOrders] ON [dbo].[PurchaseOrderDetails]
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$New_ProductOnPurchaseOrderDetails]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$New_ProductOnPurchaseOrderDetails] ON [dbo].[PurchaseOrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$New_PurchaseOrderDeatilsOnPurchaseOrder]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$New_PurchaseOrderDeatilsOnPurchaseOrder] ON [dbo].[PurchaseOrderDetails]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$OrderID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$OrderID] ON [dbo].[PurchaseOrderDetails]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$ProductID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$ProductID] ON [dbo].[PurchaseOrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$ProductOnPurchaseOrderDetails]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$ProductOnPurchaseOrderDetails] ON [dbo].[PurchaseOrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrderDetails$PurchaseOrderDeatilsOnPurchaseOrder]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrderDetails$PurchaseOrderDeatilsOnPurchaseOrder] ON [dbo].[PurchaseOrderDetails]
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrders$EmployeesOnPurchaseOrder]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrders$EmployeesOnPurchaseOrder] ON [dbo].[PurchaseOrders]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrders$ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [PurchaseOrders$ID] ON [dbo].[PurchaseOrders]
(
	[PurchaseOrdeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrders$New_EmployeesOnPurchaseOrder]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrders$New_EmployeesOnPurchaseOrder] ON [dbo].[PurchaseOrders]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrders$New_PurchaseOrderStatusLookup]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrders$New_PurchaseOrderStatusLookup] ON [dbo].[PurchaseOrders]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrders$New_SuppliersOnPurchaseOrder]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrders$New_SuppliersOnPurchaseOrder] ON [dbo].[PurchaseOrders]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrders$PurchaseOrderStatusLookup]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrders$PurchaseOrderStatusLookup] ON [dbo].[PurchaseOrders]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrders$Status ID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrders$Status ID] ON [dbo].[PurchaseOrders]
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrders$SupplierID]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrders$SupplierID] ON [dbo].[PurchaseOrders]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PurchaseOrders$SuppliersOnPurchaseOrder]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [PurchaseOrders$SuppliersOnPurchaseOrder] ON [dbo].[PurchaseOrders]
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shippers$City]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Shippers$City] ON [dbo].[Shippers]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shippers$Company]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Shippers$Company] ON [dbo].[Shippers]
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shippers$First Name]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Shippers$First Name] ON [dbo].[Shippers]
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shippers$Last Name]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Shippers$Last Name] ON [dbo].[Shippers]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shippers$Postal Code]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Shippers$Postal Code] ON [dbo].[Shippers]
(
	[ZIPPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Shippers$State/Province]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Shippers$State/Province] ON [dbo].[Shippers]
(
	[StateProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Suppliers$City]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Suppliers$City] ON [dbo].[Suppliers]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Suppliers$Company]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Suppliers$Company] ON [dbo].[Suppliers]
(
	[Company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Suppliers$First Name]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Suppliers$First Name] ON [dbo].[Suppliers]
(
	[FirstName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Suppliers$Last Name]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Suppliers$Last Name] ON [dbo].[Suppliers]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Suppliers$Postal Code]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Suppliers$Postal Code] ON [dbo].[Suppliers]
(
	[ZIPPostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Suppliers$State/Province]    Script Date: 8/6/2018 4:06:31 PM ******/
CREATE NONCLUSTERED INDEX [Suppliers$State/Province] ON [dbo].[Suppliers]
(
	[StateProvince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InventoryTransactions] ADD  DEFAULT (getdate()) FOR [TransactionCreatedDate]
GO
ALTER TABLE [dbo].[InventoryTransactions] ADD  DEFAULT (getdate()) FOR [TransactionModifiedDate]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT (getdate()) FOR [InvoiceDate]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((0)) FOR [Tax]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((0)) FOR [Shipping]
GO
ALTER TABLE [dbo].[Invoices] ADD  DEFAULT ((0)) FOR [AmountDue]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [ShippingFee]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [Taxes]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [TaxRate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [StandardCost]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [ListPrice]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Discontinued]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] ADD  DEFAULT ((0)) FOR [PostedToInventory]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT ((0)) FOR [StatusID]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT ((0)) FOR [ShippingFee]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT ((0)) FOR [Taxes]
GO
ALTER TABLE [dbo].[PurchaseOrders] ADD  DEFAULT ((0)) FOR [PaymentAmount]
GO
ALTER TABLE [dbo].[SalesReports] ADD  DEFAULT ((0)) FOR [Default]
GO
ALTER TABLE [dbo].[EmployeePrivileges]  WITH NOCHECK ADD  CONSTRAINT [EmployeePrivileges$New_EmployeePriviligesforEmployees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[EmployeePrivileges] CHECK CONSTRAINT [EmployeePrivileges$New_EmployeePriviligesforEmployees]
GO
ALTER TABLE [dbo].[EmployeePrivileges]  WITH NOCHECK ADD  CONSTRAINT [EmployeePrivileges$New_EmployeePriviligesLookup] FOREIGN KEY([PrivilegeID])
REFERENCES [dbo].[Privilegesnw] ([PrivilegeID])
GO
ALTER TABLE [dbo].[EmployeePrivileges] CHECK CONSTRAINT [EmployeePrivileges$New_EmployeePriviligesLookup]
GO
ALTER TABLE [dbo].[InventoryTransactions]  WITH NOCHECK ADD  CONSTRAINT [InventoryTransactions$New_OrdersOnInventoryTransactions] FOREIGN KEY([CustomerOrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[InventoryTransactions] CHECK CONSTRAINT [InventoryTransactions$New_OrdersOnInventoryTransactions]
GO
ALTER TABLE [dbo].[InventoryTransactions]  WITH NOCHECK ADD  CONSTRAINT [InventoryTransactions$New_ProductOnInventoryTransaction] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[InventoryTransactions] CHECK CONSTRAINT [InventoryTransactions$New_ProductOnInventoryTransaction]
GO
ALTER TABLE [dbo].[InventoryTransactions]  WITH NOCHECK ADD  CONSTRAINT [InventoryTransactions$New_PuchaseOrdersonInventoryTransactions] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrders] ([PurchaseOrdeID])
GO
ALTER TABLE [dbo].[InventoryTransactions] CHECK CONSTRAINT [InventoryTransactions$New_PuchaseOrdersonInventoryTransactions]
GO
ALTER TABLE [dbo].[InventoryTransactions]  WITH NOCHECK ADD  CONSTRAINT [InventoryTransactions$New_TransactionTypesOnInventoryTransactiosn] FOREIGN KEY([TransactionType])
REFERENCES [dbo].[InventoryTransactionTypes] ([ID])
GO
ALTER TABLE [dbo].[InventoryTransactions] CHECK CONSTRAINT [InventoryTransactions$New_TransactionTypesOnInventoryTransactiosn]
GO
ALTER TABLE [dbo].[Invoices]  WITH NOCHECK ADD  CONSTRAINT [Invoices$New_OrderInvoice] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [Invoices$New_OrderInvoice]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [OrderDetails$New_OrderDetails] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [OrderDetails$New_OrderDetails]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [OrderDetails$New_OrderStatusLookup] FOREIGN KEY([StatusID])
REFERENCES [dbo].[OrderDetailsStatus] ([StatusID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [OrderDetails$New_OrderStatusLookup]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [OrderDetails$New_ProductsOnOrders] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [OrderDetails$New_ProductsOnOrders]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [Orders$New_CustomerOnOrders] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [Orders$New_CustomerOnOrders]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [Orders$New_EmployeesOnOrders] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [Orders$New_EmployeesOnOrders]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [Orders$New_OrderStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[OrdersStatus] ([StatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [Orders$New_OrderStatus]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [Orders$New_ShipperOnOrder] FOREIGN KEY([ShipperID])
REFERENCES [dbo].[Shippers] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [Orders$New_ShipperOnOrder]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [Orders$New_TaxStatusOnOrders] FOREIGN KEY([TaxStatus])
REFERENCES [dbo].[OrdersTaxStatus] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [Orders$New_TaxStatusOnOrders]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrderDetails$New_InventoryTransactionsOnPurchaseOrders] FOREIGN KEY([InventoryID])
REFERENCES [dbo].[InventoryTransactions] ([TransactionID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] CHECK CONSTRAINT [PurchaseOrderDetails$New_InventoryTransactionsOnPurchaseOrders]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrderDetails$New_ProductOnPurchaseOrderDetails] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] CHECK CONSTRAINT [PurchaseOrderDetails$New_ProductOnPurchaseOrderDetails]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrderDetails$New_PurchaseOrderDeatilsOnPurchaseOrder] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrders] ([PurchaseOrdeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] CHECK CONSTRAINT [PurchaseOrderDetails$New_PurchaseOrderDeatilsOnPurchaseOrder]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrders$New_EmployeesOnPurchaseOrder] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [PurchaseOrders$New_EmployeesOnPurchaseOrder]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrders$New_PurchaseOrderStatusLookup] FOREIGN KEY([StatusID])
REFERENCES [dbo].[PurchaseOrderStatus] ([StatusID])
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [PurchaseOrders$New_PurchaseOrderStatusLookup]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [PurchaseOrders$New_SuppliersOnPurchaseOrder] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([ID])
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [PurchaseOrders$New_SuppliersOnPurchaseOrder]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$Address$disallow_zero_length] CHECK  ((len([Address])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$Address$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$BusinessPhone$disallow_zero_length] CHECK  ((len([BusinessPhone])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$BusinessPhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$City$disallow_zero_length] CHECK  ((len([City])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$City$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$Company$disallow_zero_length] CHECK  ((len([Company])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$Company$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$CountryRegion$disallow_zero_length] CHECK  ((len([CountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$CountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$EmailAddress$disallow_zero_length] CHECK  ((len([EmailAddress])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$EmailAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$FaxNumber$disallow_zero_length] CHECK  ((len([FaxNumber])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$FaxNumber$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$FirstName$disallow_zero_length] CHECK  ((len([FirstName])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$FirstName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$HomePhone$disallow_zero_length] CHECK  ((len([HomePhone])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$HomePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$JobTitle$disallow_zero_length] CHECK  ((len([JobTitle])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$JobTitle$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$LastName$disallow_zero_length] CHECK  ((len([LastName])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$LastName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$MobilePhone$disallow_zero_length] CHECK  ((len([MobilePhone])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$MobilePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$StateProvince$disallow_zero_length] CHECK  ((len([StateProvince])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$StateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$WebPage$disallow_zero_length] CHECK  ((len([WebPage])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$WebPage$disallow_zero_length]
GO
ALTER TABLE [dbo].[Customers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Customers$ZIPPostal Code$disallow_zero_length] CHECK  ((len([ZIPPostal Code])>(0)))
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [SSMA_CC$Customers$ZIPPostal Code$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$Address$disallow_zero_length] CHECK  ((len([Address])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$Address$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$Busines Phone$disallow_zero_length] CHECK  ((len([Busines Phone])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$Busines Phone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$City$disallow_zero_length] CHECK  ((len([City])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$City$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$Company$disallow_zero_length] CHECK  ((len([Company])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$Company$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$CountryRegion$disallow_zero_length] CHECK  ((len([CountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$CountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$EmailAddress$disallow_zero_length] CHECK  ((len([EmailAddress])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$EmailAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$FaxNumber$disallow_zero_length] CHECK  ((len([FaxNumber])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$FaxNumber$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$FirstName$disallow_zero_length] CHECK  ((len([FirstName])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$FirstName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$HomePhone$disallow_zero_length] CHECK  ((len([HomePhone])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$HomePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$JobTitle$disallow_zero_length] CHECK  ((len([JobTitle])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$JobTitle$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$LastName$disallow_zero_length] CHECK  ((len([LastName])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$LastName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$MobilePhone$disallow_zero_length] CHECK  ((len([MobilePhone])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$MobilePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$StateProvince$disallow_zero_length] CHECK  ((len([StateProvince])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$StateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$WebPage$disallow_zero_length] CHECK  ((len([WebPage])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$WebPage$disallow_zero_length]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Employees$ZIPPostal Code$disallow_zero_length] CHECK  ((len([ZIPPostal Code])>(0)))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [SSMA_CC$Employees$ZIPPostal Code$disallow_zero_length]
GO
ALTER TABLE [dbo].[InventoryTransactions]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InventoryTransactions$Comments$disallow_zero_length] CHECK  ((len([Comments])>(0)))
GO
ALTER TABLE [dbo].[InventoryTransactions] CHECK CONSTRAINT [SSMA_CC$InventoryTransactions$Comments$disallow_zero_length]
GO
ALTER TABLE [dbo].[InventoryTransactions]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InventoryTransactions$TransactionCreatedDate$validation_rule] CHECK  (([TransactionCreatedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[InventoryTransactions] CHECK CONSTRAINT [SSMA_CC$InventoryTransactions$TransactionCreatedDate$validation_rule]
GO
ALTER TABLE [dbo].[InventoryTransactions]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InventoryTransactions$TransactionModifiedDate$validation_rule] CHECK  (([TransactionModifiedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[InventoryTransactions] CHECK CONSTRAINT [SSMA_CC$InventoryTransactions$TransactionModifiedDate$validation_rule]
GO
ALTER TABLE [dbo].[InventoryTransactionTypes]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$InventoryTransactionTypes$TypeName$disallow_zero_length] CHECK  ((len([TypeName])>(0)))
GO
ALTER TABLE [dbo].[InventoryTransactionTypes] CHECK CONSTRAINT [SSMA_CC$InventoryTransactionTypes$TypeName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Invoices]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Invoices$DueDate$validation_rule] CHECK  (([DueDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [SSMA_CC$Invoices$DueDate$validation_rule]
GO
ALTER TABLE [dbo].[Invoices]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Invoices$InvoiceDate$validation_rule] CHECK  (([InvoiceDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [SSMA_CC$Invoices$InvoiceDate$validation_rule]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrderDetails$DateAllocated$validation_rule] CHECK  (([DateAllocated]>='1/1/1900'))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [SSMA_CC$OrderDetails$DateAllocated$validation_rule]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrderDetails$Discount$validation_rule] CHECK  (([Discount]<=(1) AND [Discount]>=(0)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [SSMA_CC$OrderDetails$Discount$validation_rule]
GO
ALTER TABLE [dbo].[OrderDetailsStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrderDetailsStatus$StatusName$disallow_zero_length] CHECK  ((len([StatusName])>(0)))
GO
ALTER TABLE [dbo].[OrderDetailsStatus] CHECK CONSTRAINT [SSMA_CC$OrderDetailsStatus$StatusName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$OrderDate$validation_rule] CHECK  (([OrderDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$OrderDate$validation_rule]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$PaidDate$validation_rule] CHECK  (([PaidDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$PaidDate$validation_rule]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$PaymentType$disallow_zero_length] CHECK  ((len([PaymentType])>(0)))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$PaymentType$disallow_zero_length]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$ShipAddress$disallow_zero_length] CHECK  ((len([ShipAddress])>(0)))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$ShipAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$ShipCity$disallow_zero_length] CHECK  ((len([ShipCity])>(0)))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$ShipCity$disallow_zero_length]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$ShipCountryRegion$disallow_zero_length] CHECK  ((len([ShipCountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$ShipCountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$ShipName$disallow_zero_length] CHECK  ((len([ShipName])>(0)))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$ShipName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$ShippedDate$validation_rule] CHECK  (([ShippedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$ShippedDate$validation_rule]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$ShipStateProvince$disallow_zero_length] CHECK  ((len([ShipStateProvince])>(0)))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$ShipStateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Orders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Orders$ShipZIPPostalCode$disallow_zero_length] CHECK  ((len([ShipZIPPostalCode])>(0)))
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [SSMA_CC$Orders$ShipZIPPostalCode$disallow_zero_length]
GO
ALTER TABLE [dbo].[OrdersStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrdersStatus$StatusName$disallow_zero_length] CHECK  ((len([StatusName])>(0)))
GO
ALTER TABLE [dbo].[OrdersStatus] CHECK CONSTRAINT [SSMA_CC$OrdersStatus$StatusName$disallow_zero_length]
GO
ALTER TABLE [dbo].[OrdersTaxStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$OrdersTaxStatus$TaxStatusName$disallow_zero_length] CHECK  ((len([TaxStatusName])>(0)))
GO
ALTER TABLE [dbo].[OrdersTaxStatus] CHECK CONSTRAINT [SSMA_CC$OrdersTaxStatus$TaxStatusName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Privilegesnw]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Privilegesnw$PrivilegeName$disallow_zero_length] CHECK  ((len([PrivilegeName])>(0)))
GO
ALTER TABLE [dbo].[Privilegesnw] CHECK CONSTRAINT [SSMA_CC$Privilegesnw$PrivilegeName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Products$Category$disallow_zero_length] CHECK  ((len([Category])>(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [SSMA_CC$Products$Category$disallow_zero_length]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Products$Description$disallow_zero_length] CHECK  ((len([Description])>(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [SSMA_CC$Products$Description$disallow_zero_length]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Products$ProductCode$disallow_zero_length] CHECK  ((len([ProductCode])>(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [SSMA_CC$Products$ProductCode$disallow_zero_length]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Products$ProductName$disallow_zero_length] CHECK  ((len([ProductName])>(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [SSMA_CC$Products$ProductName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Products$QuantityPerUnit$disallow_zero_length] CHECK  ((len([QuantityPerUnit])>(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [SSMA_CC$Products$QuantityPerUnit$disallow_zero_length]
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrderDetails$DateReceived$validation_rule] CHECK  (([DateReceived]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrderDetails] CHECK CONSTRAINT [SSMA_CC$PurchaseOrderDetails$DateReceived$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrders$ApprovedDate$validation_rule] CHECK  (([ApprovedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [SSMA_CC$PurchaseOrders$ApprovedDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrders$CreationDate$validation_rule] CHECK  (([CreationDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [SSMA_CC$PurchaseOrders$CreationDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrders$ExpectedDate$validation_rule] CHECK  (([ExpectedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [SSMA_CC$PurchaseOrders$ExpectedDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrders$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [SSMA_CC$PurchaseOrders$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrders$PaymentDate$validation_rule] CHECK  (([PaymentDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [SSMA_CC$PurchaseOrders$PaymentDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrders$PaymentMethod$disallow_zero_length] CHECK  ((len([PaymentMethod])>(0)))
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [SSMA_CC$PurchaseOrders$PaymentMethod$disallow_zero_length]
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrders$SubmittedDate$validation_rule] CHECK  (([SubmittedDate]>='1/1/1900'))
GO
ALTER TABLE [dbo].[PurchaseOrders] CHECK CONSTRAINT [SSMA_CC$PurchaseOrders$SubmittedDate$validation_rule]
GO
ALTER TABLE [dbo].[PurchaseOrderStatus]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$PurchaseOrderStatus$Status$disallow_zero_length] CHECK  ((len([Status])>(0)))
GO
ALTER TABLE [dbo].[PurchaseOrderStatus] CHECK CONSTRAINT [SSMA_CC$PurchaseOrderStatus$Status$disallow_zero_length]
GO
ALTER TABLE [dbo].[SalesReports]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$SalesReports$Display$disallow_zero_length] CHECK  ((len([Display])>(0)))
GO
ALTER TABLE [dbo].[SalesReports] CHECK CONSTRAINT [SSMA_CC$SalesReports$Display$disallow_zero_length]
GO
ALTER TABLE [dbo].[SalesReports]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$SalesReports$FilterRowSource$disallow_zero_length] CHECK  ((len([FilterRowSource])>(0)))
GO
ALTER TABLE [dbo].[SalesReports] CHECK CONSTRAINT [SSMA_CC$SalesReports$FilterRowSource$disallow_zero_length]
GO
ALTER TABLE [dbo].[SalesReports]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$SalesReports$GroupBy$disallow_zero_length] CHECK  ((len([GroupBy])>(0)))
GO
ALTER TABLE [dbo].[SalesReports] CHECK CONSTRAINT [SSMA_CC$SalesReports$GroupBy$disallow_zero_length]
GO
ALTER TABLE [dbo].[SalesReports]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$SalesReports$Title$disallow_zero_length] CHECK  ((len([Title])>(0)))
GO
ALTER TABLE [dbo].[SalesReports] CHECK CONSTRAINT [SSMA_CC$SalesReports$Title$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$Address$disallow_zero_length] CHECK  ((len([Address])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$Address$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$BusinessPhone$disallow_zero_length] CHECK  ((len([BusinessPhone])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$BusinessPhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$City$disallow_zero_length] CHECK  ((len([City])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$City$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$Company$disallow_zero_length] CHECK  ((len([Company])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$Company$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$CountryRegion$disallow_zero_length] CHECK  ((len([CountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$CountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$EmailAddress$disallow_zero_length] CHECK  ((len([EmailAddress])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$EmailAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$FaxNumber$disallow_zero_length] CHECK  ((len([FaxNumber])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$FaxNumber$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$FirstName$disallow_zero_length] CHECK  ((len([FirstName])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$FirstName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$HomePhone$disallow_zero_length] CHECK  ((len([HomePhone])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$HomePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$JobTitle$disallow_zero_length] CHECK  ((len([JobTitle])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$JobTitle$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$LastName$disallow_zero_length] CHECK  ((len([LastName])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$LastName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$MobilePhone$disallow_zero_length] CHECK  ((len([MobilePhone])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$MobilePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$StateProvince$disallow_zero_length] CHECK  ((len([StateProvince])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$StateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$WebPage$disallow_zero_length] CHECK  ((len([WebPage])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$WebPage$disallow_zero_length]
GO
ALTER TABLE [dbo].[Shippers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Shippers$ZIPPostalCode$disallow_zero_length] CHECK  ((len([ZIPPostalCode])>(0)))
GO
ALTER TABLE [dbo].[Shippers] CHECK CONSTRAINT [SSMA_CC$Shippers$ZIPPostalCode$disallow_zero_length]
GO
ALTER TABLE [dbo].[Strings]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Strings$StringData$disallow_zero_length] CHECK  ((len([StringData])>(0)))
GO
ALTER TABLE [dbo].[Strings] CHECK CONSTRAINT [SSMA_CC$Strings$StringData$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$Address$disallow_zero_length] CHECK  ((len([Address])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$Address$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$BusinessPhone$disallow_zero_length] CHECK  ((len([BusinessPhone])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$BusinessPhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$City$disallow_zero_length] CHECK  ((len([City])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$City$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$Company$disallow_zero_length] CHECK  ((len([Company])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$Company$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$CountryRegion$disallow_zero_length] CHECK  ((len([CountryRegion])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$CountryRegion$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$EmailAddress$disallow_zero_length] CHECK  ((len([EmailAddress])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$EmailAddress$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$FaxNumber$disallow_zero_length] CHECK  ((len([FaxNumber])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$FaxNumber$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$FirstName$disallow_zero_length] CHECK  ((len([FirstName])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$FirstName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$HomePhone$disallow_zero_length] CHECK  ((len([HomePhone])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$HomePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$JobTitle$disallow_zero_length] CHECK  ((len([JobTitle])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$JobTitle$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$LastName$disallow_zero_length] CHECK  ((len([LastName])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$LastName$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$MobilePhone$disallow_zero_length] CHECK  ((len([MobilePhone])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$MobilePhone$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$Notes$disallow_zero_length] CHECK  ((len([Notes])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$Notes$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$StateProvince$disallow_zero_length] CHECK  ((len([StateProvince])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$StateProvince$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$WebPage$disallow_zero_length] CHECK  ((len([WebPage])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$WebPage$disallow_zero_length]
GO
ALTER TABLE [dbo].[Suppliers]  WITH NOCHECK ADD  CONSTRAINT [SSMA_CC$Suppliers$ZIPPostalCode$disallow_zero_length] CHECK  ((len([ZIPPostalCode])>(0)))
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [SSMA_CC$Suppliers$ZIPPostalCode$disallow_zero_length]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[EmailAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[JobTitle]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[BusinessPhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'BusinessPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[HomePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'HomePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[MobilePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[FaxNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'FaxNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[ZIPPostal Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'ZIPPostal Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[CountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'CountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[WebPage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'WebPage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'CONSTRAINT',@level2name=N'Customers$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'INDEX',@level2name=N'Customers$City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'INDEX',@level2name=N'Customers$Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[First Name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'INDEX',@level2name=N'Customers$First Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[Last Name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'INDEX',@level2name=N'Customers$Last Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[Postal Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'INDEX',@level2name=N'Customers$Postal Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers].[State/Province]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers', @level2type=N'INDEX',@level2name=N'Customers$State/Province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Customers]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[EmployeeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'COLUMN',@level2name=N'EmployeeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[PrivilegeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'COLUMN',@level2name=N'PrivilegeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'CONSTRAINT',@level2name=N'EmployeePrivileges$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[EmployeePriviligesforEmployees]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'INDEX',@level2name=N'EmployeePrivileges$EmployeePriviligesforEmployees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[EmployeePriviligesLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'INDEX',@level2name=N'EmployeePrivileges$EmployeePriviligesLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[New_EmployeePriviligesforEmployees]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'INDEX',@level2name=N'EmployeePrivileges$New_EmployeePriviligesforEmployees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[New_EmployeePriviligesLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'INDEX',@level2name=N'EmployeePrivileges$New_EmployeePriviligesLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[Privilege ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'INDEX',@level2name=N'EmployeePrivileges$Privilege ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[New_EmployeePriviligesforEmployees]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'CONSTRAINT',@level2name=N'EmployeePrivileges$New_EmployeePriviligesforEmployees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[EmployeePrivileges].[New_EmployeePriviligesLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmployeePrivileges', @level2type=N'CONSTRAINT',@level2name=N'EmployeePrivileges$New_EmployeePriviligesLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[EmailAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[JobTitle]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[Busines Phone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'Busines Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[HomePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'HomePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[MobilePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[FaxNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'FaxNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[ZIPPostal Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'ZIPPostal Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[CountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'CountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[WebPage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'WebPage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'CONSTRAINT',@level2name=N'Employees$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'INDEX',@level2name=N'Employees$City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'INDEX',@level2name=N'Employees$Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[First Name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'INDEX',@level2name=N'Employees$First Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[Last Name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'INDEX',@level2name=N'Employees$Last Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[Postal Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'INDEX',@level2name=N'Employees$Postal Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees].[State/Province]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees', @level2type=N'INDEX',@level2name=N'Employees$State/Province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Employees]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Employees'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[TransactionID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'COLUMN',@level2name=N'TransactionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[TransactionType]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'COLUMN',@level2name=N'TransactionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[TransactionCreatedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'COLUMN',@level2name=N'TransactionCreatedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[TransactionModifiedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'COLUMN',@level2name=N'TransactionModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[Quantity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[PurchaseOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'COLUMN',@level2name=N'PurchaseOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[CustomerOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'COLUMN',@level2name=N'CustomerOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[Comments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'COLUMN',@level2name=N'Comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransactions$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[Customer Order ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$Customer Order ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[New_OrdersOnInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$New_OrdersOnInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[New_ProductOnInventoryTransaction]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$New_ProductOnInventoryTransaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[New_PuchaseOrdersonInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$New_PuchaseOrdersonInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[New_TransactionTypesOnInventoryTransactiosn]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$New_TransactionTypesOnInventoryTransactiosn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[OrdersOnInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$OrdersOnInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[Product ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$Product ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[ProductOnInventoryTransaction]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$ProductOnInventoryTransaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[PuchaseOrdersonInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$PuchaseOrdersonInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[Purchase Order ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$Purchase Order ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[TransactionTypesOnInventoryTransactiosn]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'INDEX',@level2name=N'InventoryTransactions$TransactionTypesOnInventoryTransactiosn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[New_OrdersOnInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransactions$New_OrdersOnInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[New_ProductOnInventoryTransaction]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransactions$New_ProductOnInventoryTransaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[New_PuchaseOrdersonInventoryTransactions]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransactions$New_PuchaseOrdersonInventoryTransactions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactions].[New_TransactionTypesOnInventoryTransactiosn]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactions', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransactions$New_TransactionTypesOnInventoryTransactiosn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactionTypes].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactionTypes', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactionTypes].[TypeName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactionTypes', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactionTypes].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactionTypes', @level2type=N'CONSTRAINT',@level2name=N'InventoryTransactionTypes$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[InventoryTransactionTypes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'InventoryTransactionTypes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[InvoiceID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'COLUMN',@level2name=N'InvoiceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[InvoiceDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'COLUMN',@level2name=N'InvoiceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[DueDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'COLUMN',@level2name=N'DueDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[Tax]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'COLUMN',@level2name=N'Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[Shipping]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'COLUMN',@level2name=N'Shipping'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[AmountDue]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'COLUMN',@level2name=N'AmountDue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'CONSTRAINT',@level2name=N'Invoices$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[New_OrderInvoice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'INDEX',@level2name=N'Invoices$New_OrderInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[Order ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'INDEX',@level2name=N'Invoices$Order ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[OrderInvoice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'INDEX',@level2name=N'Invoices$OrderInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Invoices].[New_OrderInvoice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Invoices', @level2type=N'CONSTRAINT',@level2name=N'Invoices$New_OrderInvoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[Quantity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[UnitPrice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[Discount]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[DateAllocated]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'DateAllocated'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[PurchaseOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'PurchaseOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[InventoryID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'InventoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'CONSTRAINT',@level2name=N'OrderDetails$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[Inventory ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$Inventory ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[New_OrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$New_OrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[New_OrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$New_OrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[New_ProductsOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$New_ProductsOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[OrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$OrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[OrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$OrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[ProductsOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$ProductsOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[Purchase Order ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$Purchase Order ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[Status ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'INDEX',@level2name=N'OrderDetails$Status ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[New_OrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'CONSTRAINT',@level2name=N'OrderDetails$New_OrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[New_OrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'CONSTRAINT',@level2name=N'OrderDetails$New_OrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetails].[New_ProductsOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'CONSTRAINT',@level2name=N'OrderDetails$New_ProductsOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetailsStatus].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetailsStatus', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetailsStatus].[StatusName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetailsStatus', @level2type=N'COLUMN',@level2name=N'StatusName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetailsStatus].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetailsStatus', @level2type=N'CONSTRAINT',@level2name=N'OrderDetailsStatus$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrderDetailsStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetailsStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[EmployeeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'EmployeeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[CustomerID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CustomerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[OrderDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'OrderDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShippedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShipperID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipperID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShipName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShipAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShipCity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShipStateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipStateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShipZIPPostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipZIPPostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShipCountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipCountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShippingFee]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippingFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[Taxes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Taxes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[PaymentType]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'PaymentType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[PaidDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'PaidDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[TaxRate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TaxRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[TaxStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'TaxStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'CONSTRAINT',@level2name=N'Orders$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[CustomerID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$CustomerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[CustomerOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$CustomerOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[EmployeeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$EmployeeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[EmployeesOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$EmployeesOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_CustomerOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$New_CustomerOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_EmployeesOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$New_EmployeesOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_OrderStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$New_OrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_ShipperOnOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$New_ShipperOnOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_TaxStatusOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$New_TaxStatusOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[OrderStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$OrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShipperID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$ShipperID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ShipperOnOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$ShipperOnOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[Status ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$Status ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[TaxStatusOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$TaxStatusOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[ZIP/Postal Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'INDEX',@level2name=N'Orders$ZIP/Postal Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_CustomerOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'CONSTRAINT',@level2name=N'Orders$New_CustomerOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_EmployeesOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'CONSTRAINT',@level2name=N'Orders$New_EmployeesOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_OrderStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'CONSTRAINT',@level2name=N'Orders$New_OrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_ShipperOnOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'CONSTRAINT',@level2name=N'Orders$New_ShipperOnOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Orders].[New_TaxStatusOnOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'CONSTRAINT',@level2name=N'Orders$New_TaxStatusOnOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrdersStatus].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersStatus', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrdersStatus].[StatusName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersStatus', @level2type=N'COLUMN',@level2name=N'StatusName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrdersStatus].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersStatus', @level2type=N'CONSTRAINT',@level2name=N'OrdersStatus$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrdersStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrdersTaxStatus].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersTaxStatus', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrdersTaxStatus].[TaxStatusName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersTaxStatus', @level2type=N'COLUMN',@level2name=N'TaxStatusName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrdersTaxStatus].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersTaxStatus', @level2type=N'CONSTRAINT',@level2name=N'OrdersTaxStatus$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[OrdersTaxStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrdersTaxStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Privilegesnw].[PrivilegeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilegesnw', @level2type=N'COLUMN',@level2name=N'PrivilegeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Privilegesnw].[PrivilegeName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilegesnw', @level2type=N'COLUMN',@level2name=N'PrivilegeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Privilegesnw].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilegesnw', @level2type=N'CONSTRAINT',@level2name=N'Privilegesnw$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Privilegesnw]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Privilegesnw'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[SupplierIDs]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SupplierIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[ProductCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[ProductName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[Description]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[StandardCost]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'StandardCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[ListPrice]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ListPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inventory quantity that triggers reordering' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ReorderLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[ReorderLevel]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ReorderLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Desired Inventory level after a purchase reorder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'TargetLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[TargetLevel]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'TargetLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[QuantityPerUnit]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'QuantityPerUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[Discontinued]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Discontinued'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[MinimumReorderQuantity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'MinimumReorderQuantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[Category]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'CONSTRAINT',@level2name=N'Products$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products].[Product Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'INDEX',@level2name=N'Products$Product Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Products]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[PurchaseOrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'COLUMN',@level2name=N'PurchaseOrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'COLUMN',@level2name=N'ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[Quantity]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[UnitCost]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'COLUMN',@level2name=N'UnitCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[DateReceived]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'COLUMN',@level2name=N'DateReceived'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[PostedToInventory]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'COLUMN',@level2name=N'PostedToInventory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[InventoryID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'COLUMN',@level2name=N'InventoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderDetails$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[Inventory ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$Inventory ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[InventoryTransactionsOnPurchaseOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$InventoryTransactionsOnPurchaseOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[New_InventoryTransactionsOnPurchaseOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$New_InventoryTransactionsOnPurchaseOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[New_ProductOnPurchaseOrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$New_ProductOnPurchaseOrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[New_PurchaseOrderDeatilsOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$New_PurchaseOrderDeatilsOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[OrderID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[ProductID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$ProductID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[ProductOnPurchaseOrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$ProductOnPurchaseOrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[PurchaseOrderDeatilsOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'INDEX',@level2name=N'PurchaseOrderDetails$PurchaseOrderDeatilsOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[New_InventoryTransactionsOnPurchaseOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderDetails$New_InventoryTransactionsOnPurchaseOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[New_ProductOnPurchaseOrderDetails]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderDetails$New_ProductOnPurchaseOrderDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderDetails].[New_PurchaseOrderDeatilsOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderDetails', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderDetails$New_PurchaseOrderDeatilsOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[PurchaseOrdeID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'PurchaseOrdeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[SupplierID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'SupplierID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[CreatedBy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[SubmittedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'SubmittedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[CreationDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'CreationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[ExpectedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'ExpectedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[ShippingFee]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'ShippingFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[Taxes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'Taxes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[PaymentDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'PaymentDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[PaymentAmount]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'PaymentAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[PaymentMethod]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'PaymentMethod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[ApprovedBy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'ApprovedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[ApprovedDate]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'ApprovedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[SubmittedBy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'COLUMN',@level2name=N'SubmittedBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrders$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[EmployeesOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'INDEX',@level2name=N'PurchaseOrders$EmployeesOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'INDEX',@level2name=N'PurchaseOrders$ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[New_EmployeesOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'INDEX',@level2name=N'PurchaseOrders$New_EmployeesOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[New_PurchaseOrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'INDEX',@level2name=N'PurchaseOrders$New_PurchaseOrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[New_SuppliersOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'INDEX',@level2name=N'PurchaseOrders$New_SuppliersOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[PurchaseOrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'INDEX',@level2name=N'PurchaseOrders$PurchaseOrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[Status ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'INDEX',@level2name=N'PurchaseOrders$Status ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[SupplierID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'INDEX',@level2name=N'PurchaseOrders$SupplierID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[SuppliersOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'INDEX',@level2name=N'PurchaseOrders$SuppliersOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[New_EmployeesOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrders$New_EmployeesOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[New_PurchaseOrderStatusLookup]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrders$New_PurchaseOrderStatusLookup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrders].[New_SuppliersOnPurchaseOrder]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrders', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrders$New_SuppliersOnPurchaseOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderStatus].[StatusID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderStatus', @level2type=N'COLUMN',@level2name=N'StatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderStatus].[Status]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderStatus', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderStatus].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderStatus', @level2type=N'CONSTRAINT',@level2name=N'PurchaseOrderStatus$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[PurchaseOrderStatus]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PurchaseOrderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[SalesReports].[GroupBy]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReports', @level2type=N'COLUMN',@level2name=N'GroupBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[SalesReports].[Display]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReports', @level2type=N'COLUMN',@level2name=N'Display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[SalesReports].[Title]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReports', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[SalesReports].[FilterRowSource]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReports', @level2type=N'COLUMN',@level2name=N'FilterRowSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[SalesReports].[Default]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReports', @level2type=N'COLUMN',@level2name=N'Default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[SalesReports].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReports', @level2type=N'CONSTRAINT',@level2name=N'SalesReports$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[SalesReports]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SalesReports'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[EmailAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[JobTitle]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[BusinessPhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'BusinessPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[HomePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'HomePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[MobilePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[FaxNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'FaxNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[ZIPPostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'ZIPPostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[CountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'CountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[WebPage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'WebPage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'CONSTRAINT',@level2name=N'Shippers$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'INDEX',@level2name=N'Shippers$City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'INDEX',@level2name=N'Shippers$Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[First Name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'INDEX',@level2name=N'Shippers$First Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[Last Name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'INDEX',@level2name=N'Shippers$Last Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[Postal Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'INDEX',@level2name=N'Shippers$Postal Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers].[State/Province]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers', @level2type=N'INDEX',@level2name=N'Shippers$State/Province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Shippers]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Shippers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Strings].[StringID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Strings', @level2type=N'COLUMN',@level2name=N'StringID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Strings].[StringData]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Strings', @level2type=N'COLUMN',@level2name=N'StringData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Strings].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Strings', @level2type=N'CONSTRAINT',@level2name=N'Strings$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Strings]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Strings'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[LastName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[FirstName]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[EmailAddress]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'EmailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[JobTitle]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[BusinessPhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'BusinessPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[HomePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'HomePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[MobilePhone]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[FaxNumber]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'FaxNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[Address]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[StateProvince]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'StateProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[ZIPPostalCode]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'ZIPPostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[CountryRegion]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'CountryRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[WebPage]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'WebPage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[Notes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[Attachments]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'COLUMN',@level2name=N'Attachments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'CONSTRAINT',@level2name=N'Suppliers$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[City]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'INDEX',@level2name=N'Suppliers$City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[Company]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'INDEX',@level2name=N'Suppliers$Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[First Name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'INDEX',@level2name=N'Suppliers$First Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[Last Name]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'INDEX',@level2name=N'Suppliers$Last Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[Postal Code]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'INDEX',@level2name=N'Suppliers$Postal Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers].[State/Province]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers', @level2type=N'INDEX',@level2name=N'Suppliers$State/Province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'northwind.[Suppliers]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suppliers'
GO
USE [master]
GO
ALTER DATABASE [northwind_export] SET  READ_WRITE 
GO
