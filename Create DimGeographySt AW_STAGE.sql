CREATE TABLE [dbo].[DimGeographySt](
[GeographyKey] [int] IDENTITY(1,1) NOT NULL,
[City] [nvarchar](30) NULL,
[StateProvinceCode] [nvarchar](3) NULL,
[StateProvinceName] [nvarchar](50) NULL,
[CountryRegionCode] [nvarchar](3) NULL,
[EnglishCountryRegionName] [nvarchar](50) NULL,
[SpanishCountryRegionName] [nvarchar](50) NULL,
[FrenchCountryRegionName] [nvarchar](50) NULL,
[PostalCode] [nvarchar](15) NULL,
[SalesTerritoryAltKey] [int] NULL,
CONSTRAINT [PK_DimGeography_GeographyKey]
PRIMARY KEY ( [GeographyKey] ASC ))