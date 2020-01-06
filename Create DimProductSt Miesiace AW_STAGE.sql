CREATE TABLE [dbo].[DimProductSt](
[ProductAlternateKey] [nvarchar](25) NULL,
[ProductSubcategoryKey] [int] NULL,
[WeightUnitMeasureCode] [nchar](3) NULL,
[SizeUnitMeasureCode] [nchar](3) NULL,
[EnglishProductName] [nvarchar](50) NOT NULL,
[SpanishProductName] [nvarchar](50) NOT NULL,
[FrenchProductName] [nvarchar](50) NOT NULL,
[StandardCost] [money] NULL,
[FinishedGoodsFlag] [bit] NOT NULL,
[Color] [nvarchar](15) NOT NULL,
[SafetyStockLevel] [smallint] NULL,
[ReorderPoint] [smallint] NULL,
[ListPrice] [money] NULL,
[Size] [nvarchar](50) NULL,
[SizeRange] [nvarchar](50) NULL,
[Weight] [float] NULL,
[DaysToManufacture] [int] NULL,
[ProductLine] [nchar](2) NULL,
[DealerPrice] [money] NULL,
[Class] [nchar](2) NULL,
[Style] [nchar](2) NULL,
[ModelName] [nvarchar](50) NULL,
[LargePhoto] [varbinary](max) NULL,
[EnglishDescription] [nvarchar](400) NULL,
[FrenchDescription] [nvarchar](400) NULL,
[ChineseDescription] [nvarchar](400) NULL,
[ArabicDescription] [nvarchar](400) NULL,
[HebrewDescription] [nvarchar](400) NULL,
[ThaiDescription] [nvarchar](400) NULL,
[GermanDescription] [nvarchar](400) NULL,
[JapaneseDescription] [nvarchar](400) NULL,
[TurkishDescription] [nvarchar](400) NULL,
[StartDate] [datetime] NULL,
[EndDate] [datetime] NULL,
[Status] [nvarchar](7) NULL,
CONSTRAINT [AK_DimProduct_ProductAlternateKey_StartDate] UNIQUE
NONCLUSTERED
(
[ProductAlternateKey] ASC,
[StartDate] ASC
) )

GO
CREATE TABLE [dbo].[DimProductSubcategorySt](
[ProductSubcategoryAlternateKey] [int] NULL,
[EnglishProductSubcategoryName] [nvarchar](50) NOT NULL,
[SpanishProductSubcategoryName] [nvarchar](50) NOT NULL,
[FrenchProductSubcategoryName] [nvarchar](50) NOT NULL,
)

GO

CREATE TABLE [dbo].[DimProductCategorySt](
[ProductCategoryAlternateKey] [int] NULL,
[EnglishProductCategoryName] [nvarchar](50) NOT NULL,
[SpanishProductCategoryName] [nvarchar](50) NOT NULL,
[FrenchProductCategoryName] [nvarchar](50) NOT NULL,
CONSTRAINT [AK_DimProductCategory_ProductCategoryAlternateKey] UNIQUE
NONCLUSTERED
( [ProductCategoryAlternateKey] ASC ) )