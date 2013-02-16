CREATE TABLE [dbo].[Review] (
    [ReviewID]   INT            NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED ([ReviewID] ASC),
    [BeerID]     INT            NOT NULL,
    [Rating]     INT            NULL,
    [Notes]      NVARCHAR (MAX) NULL,
    [ReviewDate] DATE           NULL
    CONSTRAINT [FK_Beer_ToReview] FOREIGN KEY ([BeerID]) REFERENCES [dbo].[Beer] ([BeerID])
);