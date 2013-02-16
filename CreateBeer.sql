
CREATE TABLE [dbo].[Beer] (
    [BeerID]         INT             NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED ([BeerId] ASC),
    [StyleID]        INT             NULL,
    [Name]           NVARCHAR (50)   NULL,
    [ImagePath]      NVARCHAR (2000) NULL,
    [CompanyID]      INT             NOT NULL,
    [Price]          DECIMAL (3, 2)  NULL,
    [AlcoholPercent] DECIMAL (18, 5) NULL,
	[InsertDate]	 Date			 NULL,
    
    CONSTRAINT [FK_Beer_ToStyle] FOREIGN KEY ([StyleID]) REFERENCES [dbo].[Style] ([StyleId]),
    CONSTRAINT [FK_Beer_ToCompany] FOREIGN KEY ([CompanyID]) REFERENCES [dbo].[Company] ([CompanyId])
	
);
